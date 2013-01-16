.class Lmeizu_jcifs/netbios/NameServiceClient;
.super Ljava/lang/Object;
.source "NameServiceClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final DEFAULT_RCV_BUF_SIZE:I = 0x240

.field static final DEFAULT_RETRY_COUNT:I = 0x2

.field static final DEFAULT_RETRY_TIMEOUT:I = 0xbb8

.field static final DEFAULT_SND_BUF_SIZE:I = 0x240

.field static final DEFAULT_SO_TIMEOUT:I = 0x1388

.field private static final LADDR:Ljava/net/InetAddress; = null

#the value of this static final field might be set in the static constructor
.field private static final LPORT:I = 0x0

.field static final NAME_SERVICE_UDP_PORT:I = 0x89

#the value of this static final field might be set in the static constructor
.field private static final RCV_BUF_SIZE:I = 0x0

.field static final RESOLVER_BCAST:I = 0x2

.field static final RESOLVER_LMHOSTS:I = 0x1

.field static final RESOLVER_WINS:I = 0x3

.field private static final RETRY_COUNT:I

.field private static final RETRY_TIMEOUT:I

.field private static final RO:Ljava/lang/String;

.field private static final SND_BUF_SIZE:I

.field private static final SO_TIMEOUT:I

.field private static log:Lmeizu_jcifs/util/LogStream;


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field baddr:Ljava/net/InetAddress;

.field private closeTimeout:I

.field private in:Ljava/net/DatagramPacket;

.field laddr:Ljava/net/InetAddress;

.field private lport:I

.field private nextNameTrnId:I

.field private out:Ljava/net/DatagramPacket;

.field private rcv_buf:[B

.field private resolveOrder:[I

.field private responseTable:Ljava/util/HashMap;

.field private snd_buf:[B

.field private socket:Ljava/net/DatagramSocket;

.field private thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x240

    .line 42
    const-string v0, "meizu_jcifs.netbios.snd_buf_size"

    invoke-static {v0, v1}, Lmeizu_jcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmeizu_jcifs/netbios/NameServiceClient;->SND_BUF_SIZE:I

    .line 43
    const-string v0, "meizu_jcifs.netbios.rcv_buf_size"

    invoke-static {v0, v1}, Lmeizu_jcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmeizu_jcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    .line 44
    const-string v0, "meizu_jcifs.netbios.soTimeout"

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lmeizu_jcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmeizu_jcifs/netbios/NameServiceClient;->SO_TIMEOUT:I

    .line 45
    const-string v0, "meizu_jcifs.netbios.retryCount"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lmeizu_jcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmeizu_jcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    .line 46
    const-string v0, "meizu_jcifs.netbios.retryTimeout"

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lmeizu_jcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmeizu_jcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    .line 47
    const-string v0, "meizu_jcifs.netbios.lport"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmeizu_jcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmeizu_jcifs/netbios/NameServiceClient;->LPORT:I

    .line 48
    const-string v0, "meizu_jcifs.netbios.laddr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmeizu_jcifs/Config;->getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lmeizu_jcifs/netbios/NameServiceClient;->LADDR:Ljava/net/InetAddress;

    .line 49
    const-string v0, "meizu_jcifs.resolveOrder"

    invoke-static {v0}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmeizu_jcifs/netbios/NameServiceClient;->RO:Ljava/lang/String;

    .line 51
    invoke-static {}, Lmeizu_jcifs/util/LogStream;->getInstance()Lmeizu_jcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 67
    sget v0, Lmeizu_jcifs/netbios/NameServiceClient;->LPORT:I

    sget-object v1, Lmeizu_jcifs/netbios/NameServiceClient;->LADDR:Ljava/net/InetAddress;

    invoke-direct {p0, v0, v1}, Lmeizu_jcifs/netbios/NameServiceClient;-><init>(ILjava/net/InetAddress;)V

    .line 68
    return-void
.end method

.method constructor <init>(ILjava/net/InetAddress;)V
    .locals 10
    .parameter "lport"
    .parameter "laddr"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v5, Ljava/lang/Object;

    invoke-direct/range {v5 .. v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lmeizu_jcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    .line 59
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lmeizu_jcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    .line 61
    const/4 v5, 0x0

    iput v5, p0, Lmeizu_jcifs/netbios/NameServiceClient;->nextNameTrnId:I

    .line 70
    iput p1, p0, Lmeizu_jcifs/netbios/NameServiceClient;->lport:I

    .line 71
    iput-object p2, p0, Lmeizu_jcifs/netbios/NameServiceClient;->laddr:Ljava/net/InetAddress;

    .line 74
    :try_start_0
    const-string v5, "meizu_jcifs.netbios.baddr"

    const-string v6, "255.255.255.255"

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-static {v5, v6}, Lmeizu_jcifs/Config;->getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v5

    iput-object v5, p0, Lmeizu_jcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    sget v5, Lmeizu_jcifs/netbios/NameServiceClient;->SND_BUF_SIZE:I

    new-array v5, v5, [B

    iput-object v5, p0, Lmeizu_jcifs/netbios/NameServiceClient;->snd_buf:[B

    .line 80
    sget v5, Lmeizu_jcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    new-array v5, v5, [B

    iput-object v5, p0, Lmeizu_jcifs/netbios/NameServiceClient;->rcv_buf:[B

    .line 81
    new-instance v5, Ljava/net/DatagramPacket;

    iget-object v6, p0, Lmeizu_jcifs/netbios/NameServiceClient;->snd_buf:[B

    sget v7, Lmeizu_jcifs/netbios/NameServiceClient;->SND_BUF_SIZE:I

    iget-object v8, p0, Lmeizu_jcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    const/16 v9, 0x89

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iput-object v5, p0, Lmeizu_jcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    .line 82
    new-instance v5, Ljava/net/DatagramPacket;

    iget-object v6, p0, Lmeizu_jcifs/netbios/NameServiceClient;->rcv_buf:[B

    sget v7, Lmeizu_jcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    invoke-direct {v5, v6, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v5, p0, Lmeizu_jcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    .line 84
    sget-object v5, Lmeizu_jcifs/netbios/NameServiceClient;->RO:Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lmeizu_jcifs/netbios/NameServiceClient;->RO:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 92
    :cond_0
    invoke-static {}, Lmeizu_jcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v5

    if-nez v5, :cond_1

    .line 93
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lmeizu_jcifs/netbios/NameServiceClient;->resolveOrder:[I

    .line 94
    iget-object v5, p0, Lmeizu_jcifs/netbios/NameServiceClient;->resolveOrder:[I

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v7, v5, v6

    .line 95
    iget-object v5, p0, Lmeizu_jcifs/netbios/NameServiceClient;->resolveOrder:[I

    const/4 v6, 0x1

    const/4 v7, 0x2

    aput v7, v5, v6

    .line 130
    :goto_1
    return-void

    .line 97
    :cond_1
    const/4 v5, 0x3

    new-array v5, v5, [I

    iput-object v5, p0, Lmeizu_jcifs/netbios/NameServiceClient;->resolveOrder:[I

    .line 98
    iget-object v5, p0, Lmeizu_jcifs/netbios/NameServiceClient;->resolveOrder:[I

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v7, v5, v6

    .line 99
    iget-object v5, p0, Lmeizu_jcifs/netbios/NameServiceClient;->resolveOrder:[I

    const/4 v6, 0x1

    const/4 v7, 0x3

    aput v7, v5, v6

    .line 100
    iget-object v5, p0, Lmeizu_jcifs/netbios/NameServiceClient;->resolveOrder:[I

    const/4 v6, 0x2

    const/4 v7, 0x2

    aput v7, v5, v6

    goto :goto_1

    .line 103
    :cond_2
    const/4 v5, 0x3

    new-array v4, v5, [I

    .line 104
    .local v4, tmp:[I
    new-instance v3, Ljava/util/StringTokenizer;

    sget-object v5, Lmeizu_jcifs/netbios/NameServiceClient;->RO:Ljava/lang/String;

    const-string v6, ","

    invoke-direct {v3, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v3, st:Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 106
    .local v0, i:I
    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 107
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, s:Ljava/lang/String;
    const-string v5, "LMHOSTS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 109
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    const/4 v5, 0x1

    aput v5, v4, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_2

    .line 110
    :cond_4
    const-string v5, "WINS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 111
    invoke-static {}, Lmeizu_jcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v5

    if-nez v5, :cond_5

    .line 112
    sget-object v5, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    sget v5, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 113
    sget-object v5, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    const-string v6, "NetBIOS resolveOrder specifies WINS however the meizu_jcifs.netbios.wins property has not been set"

    invoke-virtual {v5, v6}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 118
    :cond_5
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/4 v5, 0x3

    aput v5, v4, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_2

    .line 119
    :cond_6
    const-string v5, "BCAST"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 120
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    const/4 v5, 0x2

    aput v5, v4, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_2

    .line 121
    :cond_7
    const-string v5, "DNS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 123
    sget-object v5, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    sget v5, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 124
    sget-object v5, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown resolver method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 127
    .end local v2           #s:Ljava/lang/String;
    :cond_8
    new-array v5, v0, [I

    iput-object v5, p0, Lmeizu_jcifs/netbios/NameServiceClient;->resolveOrder:[I

    .line 128
    const/4 v5, 0x0

    iget-object v6, p0, Lmeizu_jcifs/netbios/NameServiceClient;->resolveOrder:[I

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 76
    .end local v0           #i:I
    .end local v3           #st:Ljava/util/StringTokenizer;
    .end local v4           #tmp:[I
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method


# virtual methods
.method ensureOpen(I)V
    .locals 3
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lmeizu_jcifs/netbios/NameServiceClient;->closeTimeout:I

    .line 140
    sget v0, Lmeizu_jcifs/netbios/NameServiceClient;->SO_TIMEOUT:I

    if-eqz v0, :cond_0

    .line 141
    sget v0, Lmeizu_jcifs/netbios/NameServiceClient;->SO_TIMEOUT:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/netbios/NameServiceClient;->closeTimeout:I

    .line 145
    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Ljava/net/DatagramSocket;

    iget v1, p0, Lmeizu_jcifs/netbios/NameServiceClient;->lport:I

    iget-object v2, p0, Lmeizu_jcifs/netbios/NameServiceClient;->laddr:Ljava/net/InetAddress;

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    iput-object v0, p0, Lmeizu_jcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    .line 147
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "JCIFS-NameServiceClient"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lmeizu_jcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    .line 148
    iget-object v0, p0, Lmeizu_jcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 149
    iget-object v0, p0, Lmeizu_jcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 151
    :cond_1
    return-void
.end method

.method getAllByName(Lmeizu_jcifs/netbios/Name;Ljava/net/InetAddress;)[Lmeizu_jcifs/netbios/NbtAddress;
    .locals 7
    .parameter "name"
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 279
    new-instance v2, Lmeizu_jcifs/netbios/NameQueryRequest;

    invoke-direct {v2, p1}, Lmeizu_jcifs/netbios/NameQueryRequest;-><init>(Lmeizu_jcifs/netbios/Name;)V

    .line 280
    .local v2, request:Lmeizu_jcifs/netbios/NameQueryRequest;
    new-instance v3, Lmeizu_jcifs/netbios/NameQueryResponse;

    invoke-direct {v3}, Lmeizu_jcifs/netbios/NameQueryResponse;-><init>()V

    .line 282
    .local v3, response:Lmeizu_jcifs/netbios/NameQueryResponse;
    if-eqz p2, :cond_1

    .end local p2
    :goto_0
    iput-object p2, v2, Lmeizu_jcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 283
    iget-object v4, v2, Lmeizu_jcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    if-nez v4, :cond_2

    move v4, v5

    :goto_1
    iput-boolean v4, v2, Lmeizu_jcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 285
    iget-boolean v4, v2, Lmeizu_jcifs/netbios/NameServicePacket;->isBroadcast:Z

    if-eqz v4, :cond_3

    .line 286
    iget-object v4, p0, Lmeizu_jcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    iput-object v4, v2, Lmeizu_jcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 287
    sget v1, Lmeizu_jcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    .line 295
    .local v1, n:I
    :cond_0
    :goto_2
    :try_start_0
    sget v4, Lmeizu_jcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v2, v3, v4}, Lmeizu_jcifs/netbios/NameServiceClient;->send(Lmeizu_jcifs/netbios/NameServicePacket;Lmeizu_jcifs/netbios/NameServicePacket;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    iget-boolean v4, v3, Lmeizu_jcifs/netbios/NameServicePacket;->received:Z

    if-eqz v4, :cond_5

    iget v4, v3, Lmeizu_jcifs/netbios/NameServicePacket;->resultCode:I

    if-nez v4, :cond_5

    .line 303
    iget-object v4, v3, Lmeizu_jcifs/netbios/NameServicePacket;->addrEntry:[Lmeizu_jcifs/netbios/NbtAddress;

    return-object v4

    .line 282
    .end local v1           #n:I
    .restart local p2
    :cond_1
    invoke-static {}, Lmeizu_jcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object p2

    goto :goto_0

    .end local p2
    :cond_2
    move v4, v6

    .line 283
    goto :goto_1

    .line 289
    :cond_3
    iput-boolean v6, v2, Lmeizu_jcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 290
    const/4 v1, 0x1

    .restart local v1       #n:I
    goto :goto_2

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, ioe:Ljava/io/IOException;
    sget-object v4, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    sget v4, Lmeizu_jcifs/util/LogStream;->level:I

    if-le v4, v5, :cond_4

    .line 298
    sget-object v4, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v0, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 299
    :cond_4
    new-instance v4, Ljava/net/UnknownHostException;

    iget-object v5, p1, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 305
    .end local v0           #ioe:Ljava/io/IOException;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_6

    iget-boolean v4, v2, Lmeizu_jcifs/netbios/NameServicePacket;->isBroadcast:Z

    if-nez v4, :cond_0

    .line 307
    :cond_6
    new-instance v4, Ljava/net/UnknownHostException;

    iget-object v5, p1, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method getByName(Lmeizu_jcifs/netbios/Name;Ljava/net/InetAddress;)Lmeizu_jcifs/netbios/NbtAddress;
    .locals 12
    .parameter "name"
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 312
    new-instance v6, Lmeizu_jcifs/netbios/NameQueryRequest;

    invoke-direct {v6, p1}, Lmeizu_jcifs/netbios/NameQueryRequest;-><init>(Lmeizu_jcifs/netbios/Name;)V

    .line 313
    .local v6, request:Lmeizu_jcifs/netbios/NameQueryRequest;
    new-instance v7, Lmeizu_jcifs/netbios/NameQueryResponse;

    invoke-direct {v7}, Lmeizu_jcifs/netbios/NameQueryResponse;-><init>()V

    .line 315
    .local v7, response:Lmeizu_jcifs/netbios/NameQueryResponse;
    if-eqz p2, :cond_5

    .line 318
    iput-object p2, v6, Lmeizu_jcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 319
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v10

    aget-byte v10, v10, v11

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    move v8, v9

    :cond_0
    iput-boolean v8, v6, Lmeizu_jcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 321
    sget v4, Lmeizu_jcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    .line 324
    .local v4, n:I
    :cond_1
    :try_start_0
    sget v8, Lmeizu_jcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v6, v7, v8}, Lmeizu_jcifs/netbios/NameServiceClient;->send(Lmeizu_jcifs/netbios/NameServicePacket;Lmeizu_jcifs/netbios/NameServicePacket;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    iget-boolean v8, v7, Lmeizu_jcifs/netbios/NameServicePacket;->received:Z

    if-eqz v8, :cond_3

    iget v8, v7, Lmeizu_jcifs/netbios/NameServicePacket;->resultCode:I

    if-nez v8, :cond_3

    .line 332
    iget-object v8, v7, Lmeizu_jcifs/netbios/NameServicePacket;->addrEntry:[Lmeizu_jcifs/netbios/NbtAddress;

    array-length v8, v8

    add-int/lit8 v3, v8, -0x1

    .line 333
    .local v3, last:I
    iget-object v8, v7, Lmeizu_jcifs/netbios/NameServicePacket;->addrEntry:[Lmeizu_jcifs/netbios/NbtAddress;

    aget-object v8, v8, v3

    iget-object v8, v8, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    invoke-virtual {p2}, Ljava/net/InetAddress;->hashCode()I

    move-result v9

    iput v9, v8, Lmeizu_jcifs/netbios/Name;->srcHashCode:I

    .line 334
    iget-object v8, v7, Lmeizu_jcifs/netbios/NameServicePacket;->addrEntry:[Lmeizu_jcifs/netbios/NbtAddress;

    aget-object v0, v8, v3

    .line 386
    .end local v3           #last:I
    .end local v4           #n:I
    :goto_0
    return-object v0

    .line 325
    .restart local v4       #n:I
    :catch_0
    move-exception v2

    .line 326
    .local v2, ioe:Ljava/io/IOException;
    sget-object v8, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    sget v8, Lmeizu_jcifs/util/LogStream;->level:I

    if-le v8, v9, :cond_2

    .line 327
    sget-object v8, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v2, v8}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 328
    :cond_2
    new-instance v8, Ljava/net/UnknownHostException;

    iget-object v9, p1, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 336
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    if-lez v4, :cond_4

    iget-boolean v8, v6, Lmeizu_jcifs/netbios/NameServicePacket;->isBroadcast:Z

    if-nez v8, :cond_1

    .line 338
    :cond_4
    new-instance v8, Ljava/net/UnknownHostException;

    iget-object v9, p1, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 345
    .end local v4           #n:I
    :cond_5
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v8, p0, Lmeizu_jcifs/netbios/NameServiceClient;->resolveOrder:[I

    array-length v8, v8

    if-ge v1, v8, :cond_a

    .line 347
    :try_start_1
    iget-object v8, p0, Lmeizu_jcifs/netbios/NameServiceClient;->resolveOrder:[I

    aget v8, v8, v1

    packed-switch v8, :pswitch_data_0

    .line 345
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 349
    :pswitch_0
    invoke-static {p1}, Lmeizu_jcifs/netbios/Lmhosts;->getByName(Lmeizu_jcifs/netbios/Name;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v0

    .line 350
    .local v0, ans:Lmeizu_jcifs/netbios/NbtAddress;
    if-eqz v0, :cond_6

    .line 351
    iget-object v8, v0, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    const/4 v10, 0x0

    iput v10, v8, Lmeizu_jcifs/netbios/Name;->srcHashCode:I

    goto :goto_0

    .line 395
    .end local v0           #ans:Lmeizu_jcifs/netbios/NbtAddress;
    :catch_1
    move-exception v8

    goto :goto_2

    .line 358
    :pswitch_1
    iget-object v8, p0, Lmeizu_jcifs/netbios/NameServiceClient;->resolveOrder:[I

    aget v8, v8, v1

    if-ne v8, v11, :cond_7

    iget-object v8, p1, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    const-string v10, "\u0001\u0002__MSBROWSE__\u0002"

    if-eq v8, v10, :cond_7

    iget v8, p1, Lmeizu_jcifs/netbios/Name;->hexCode:I

    const/16 v10, 0x1d

    if-eq v8, v10, :cond_7

    .line 361
    invoke-static {}, Lmeizu_jcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v8

    iput-object v8, v6, Lmeizu_jcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 362
    const/4 v8, 0x0

    iput-boolean v8, v6, Lmeizu_jcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 368
    :goto_3
    sget v4, Lmeizu_jcifs/netbios/NameServiceClient;->RETRY_COUNT:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v4       #n:I
    move v5, v4

    .line 369
    .end local v4           #n:I
    .local v5, n:I
    :goto_4
    add-int/lit8 v4, v5, -0x1

    .end local v5           #n:I
    .restart local v4       #n:I
    if-lez v5, :cond_6

    .line 371
    :try_start_2
    sget v8, Lmeizu_jcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v6, v7, v8}, Lmeizu_jcifs/netbios/NameServiceClient;->send(Lmeizu_jcifs/netbios/NameServicePacket;Lmeizu_jcifs/netbios/NameServicePacket;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 377
    :try_start_3
    iget-boolean v8, v7, Lmeizu_jcifs/netbios/NameServicePacket;->received:Z

    if-eqz v8, :cond_9

    iget v8, v7, Lmeizu_jcifs/netbios/NameServicePacket;->resultCode:I

    if-nez v8, :cond_9

    .line 384
    iget-object v8, v7, Lmeizu_jcifs/netbios/NameServicePacket;->addrEntry:[Lmeizu_jcifs/netbios/NbtAddress;

    const/4 v10, 0x0

    aget-object v8, v8, v10

    iget-object v8, v8, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    iget-object v10, v6, Lmeizu_jcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-virtual {v10}, Ljava/net/InetAddress;->hashCode()I

    move-result v10

    iput v10, v8, Lmeizu_jcifs/netbios/Name;->srcHashCode:I

    .line 386
    iget-object v8, v7, Lmeizu_jcifs/netbios/NameServicePacket;->addrEntry:[Lmeizu_jcifs/netbios/NbtAddress;

    const/4 v10, 0x0

    aget-object v0, v8, v10

    goto/16 :goto_0

    .line 364
    .end local v4           #n:I
    :cond_7
    iget-object v8, p0, Lmeizu_jcifs/netbios/NameServiceClient;->baddr:Ljava/net/InetAddress;

    iput-object v8, v6, Lmeizu_jcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 365
    const/4 v8, 0x1

    iput-boolean v8, v6, Lmeizu_jcifs/netbios/NameServicePacket;->isBroadcast:Z

    goto :goto_3

    .line 372
    .restart local v4       #n:I
    :catch_2
    move-exception v2

    .line 373
    .restart local v2       #ioe:Ljava/io/IOException;
    sget-object v8, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    sget v8, Lmeizu_jcifs/util/LogStream;->level:I

    if-le v8, v9, :cond_8

    .line 374
    sget-object v8, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v2, v8}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 375
    :cond_8
    new-instance v8, Ljava/net/UnknownHostException;

    iget-object v10, p1, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 387
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_9
    iget-object v8, p0, Lmeizu_jcifs/netbios/NameServiceClient;->resolveOrder:[I

    aget v8, v8, v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    if-eq v8, v11, :cond_6

    move v5, v4

    .end local v4           #n:I
    .restart local v5       #n:I
    goto :goto_4

    .line 398
    .end local v5           #n:I
    :cond_a
    new-instance v8, Ljava/net/UnknownHostException;

    iget-object v9, p1, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method getNextNameTrnId()I
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lmeizu_jcifs/netbios/NameServiceClient;->nextNameTrnId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmeizu_jcifs/netbios/NameServiceClient;->nextNameTrnId:I

    const v1, 0xffff

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x1

    iput v0, p0, Lmeizu_jcifs/netbios/NameServiceClient;->nextNameTrnId:I

    .line 136
    :cond_0
    iget v0, p0, Lmeizu_jcifs/netbios/NameServiceClient;->nextNameTrnId:I

    return v0
.end method

.method getNodeStatus(Lmeizu_jcifs/netbios/NbtAddress;)[Lmeizu_jcifs/netbios/NbtAddress;
    .locals 11
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 405
    new-instance v5, Lmeizu_jcifs/netbios/NodeStatusResponse;

    invoke-direct {v5, p1}, Lmeizu_jcifs/netbios/NodeStatusResponse;-><init>(Lmeizu_jcifs/netbios/NbtAddress;)V

    .line 406
    .local v5, response:Lmeizu_jcifs/netbios/NodeStatusResponse;
    new-instance v4, Lmeizu_jcifs/netbios/NodeStatusRequest;

    new-instance v7, Lmeizu_jcifs/netbios/Name;

    const-string v8, "*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lmeizu_jcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v4, v7}, Lmeizu_jcifs/netbios/NodeStatusRequest;-><init>(Lmeizu_jcifs/netbios/Name;)V

    .line 408
    .local v4, request:Lmeizu_jcifs/netbios/NodeStatusRequest;
    invoke-virtual {p1}, Lmeizu_jcifs/netbios/NbtAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    iput-object v7, v4, Lmeizu_jcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 410
    sget v2, Lmeizu_jcifs/netbios/NameServiceClient;->RETRY_COUNT:I

    .local v2, n:I
    move v3, v2

    .line 411
    .end local v2           #n:I
    .local v3, n:I
    :goto_0
    add-int/lit8 v2, v3, -0x1

    .end local v3           #n:I
    .restart local v2       #n:I
    if-lez v3, :cond_2

    .line 413
    :try_start_0
    sget v7, Lmeizu_jcifs/netbios/NameServiceClient;->RETRY_TIMEOUT:I

    invoke-virtual {p0, v4, v5, v7}, Lmeizu_jcifs/netbios/NameServiceClient;->send(Lmeizu_jcifs/netbios/NameServicePacket;Lmeizu_jcifs/netbios/NameServicePacket;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    iget-boolean v7, v5, Lmeizu_jcifs/netbios/NameServicePacket;->received:Z

    if-eqz v7, :cond_3

    iget v7, v5, Lmeizu_jcifs/netbios/NameServicePacket;->resultCode:I

    if-nez v7, :cond_3

    .line 434
    iget-object v7, v4, Lmeizu_jcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->hashCode()I

    move-result v6

    .line 435
    .local v6, srcHashCode:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v7, v5, Lmeizu_jcifs/netbios/NodeStatusResponse;->addressArray:[Lmeizu_jcifs/netbios/NbtAddress;

    array-length v7, v7

    if-ge v0, v7, :cond_1

    .line 436
    iget-object v7, v5, Lmeizu_jcifs/netbios/NodeStatusResponse;->addressArray:[Lmeizu_jcifs/netbios/NbtAddress;

    aget-object v7, v7, v0

    iget-object v7, v7, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    iput v6, v7, Lmeizu_jcifs/netbios/Name;->srcHashCode:I

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 414
    .end local v0           #i:I
    .end local v6           #srcHashCode:I
    :catch_0
    move-exception v1

    .line 415
    .local v1, ioe:Ljava/io/IOException;
    sget-object v7, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    sget v7, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 416
    sget-object v7, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v1, v7}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 417
    :cond_0
    new-instance v7, Ljava/net/UnknownHostException;

    invoke-virtual {p1}, Lmeizu_jcifs/netbios/NbtAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 438
    .end local v1           #ioe:Ljava/io/IOException;
    .restart local v0       #i:I
    .restart local v6       #srcHashCode:I
    :cond_1
    iget-object v7, v5, Lmeizu_jcifs/netbios/NodeStatusResponse;->addressArray:[Lmeizu_jcifs/netbios/NbtAddress;

    return-object v7

    .line 441
    .end local v0           #i:I
    .end local v6           #srcHashCode:I
    :cond_2
    new-instance v7, Ljava/net/UnknownHostException;

    iget-object v8, p1, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    iget-object v8, v8, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    move v3, v2

    .end local v2           #n:I
    .restart local v3       #n:I
    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 176
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lmeizu_jcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 177
    iget-object v3, p0, Lmeizu_jcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    sget v4, Lmeizu_jcifs/netbios/NameServiceClient;->RCV_BUF_SIZE:I

    invoke-virtual {v3, v4}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 179
    iget-object v3, p0, Lmeizu_jcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    iget v4, p0, Lmeizu_jcifs/netbios/NameServiceClient;->closeTimeout:I

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 180
    iget-object v3, p0, Lmeizu_jcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    iget-object v4, p0, Lmeizu_jcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 182
    sget-object v3, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    sget v3, Lmeizu_jcifs/util/LogStream;->level:I

    if-le v3, v7, :cond_1

    .line 183
    sget-object v3, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    const-string v4, "NetBIOS: new data read from socket"

    invoke-virtual {v3, v4}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 185
    :cond_1
    iget-object v3, p0, Lmeizu_jcifs/netbios/NameServiceClient;->rcv_buf:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lmeizu_jcifs/netbios/NameServicePacket;->readNameTrnId([BI)I

    move-result v1

    .line 186
    .local v1, nameTrnId:I
    iget-object v3, p0, Lmeizu_jcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmeizu_jcifs/netbios/NameServicePacket;

    .line 187
    .local v2, response:Lmeizu_jcifs/netbios/NameServicePacket;
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lmeizu_jcifs/netbios/NameServicePacket;->received:Z

    if-nez v3, :cond_0

    .line 190
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :try_start_1
    iget-object v3, p0, Lmeizu_jcifs/netbios/NameServiceClient;->rcv_buf:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lmeizu_jcifs/netbios/NameServicePacket;->readWireFormat([BI)I

    .line 192
    const/4 v3, 0x1

    iput-boolean v3, v2, Lmeizu_jcifs/netbios/NameServicePacket;->received:Z

    .line 194
    sget-object v3, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    sget v3, Lmeizu_jcifs/util/LogStream;->level:I

    if-le v3, v7, :cond_2

    .line 195
    sget-object v3, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v3, v2}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 196
    sget-object v3, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    iget-object v4, p0, Lmeizu_jcifs/netbios/NameServiceClient;->rcv_buf:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lmeizu_jcifs/netbios/NameServiceClient;->in:Ljava/net/DatagramPacket;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lmeizu_jcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 199
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 200
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 202
    .end local v1           #nameTrnId:I
    .end local v2           #response:Lmeizu_jcifs/netbios/NameServicePacket;
    :catch_0
    move-exception v3

    .line 207
    invoke-virtual {p0}, Lmeizu_jcifs/netbios/NameServiceClient;->tryClose()V

    .line 209
    :goto_1
    return-void

    .line 207
    :cond_3
    invoke-virtual {p0}, Lmeizu_jcifs/netbios/NameServiceClient;->tryClose()V

    goto :goto_1

    .line 203
    :catch_1
    move-exception v0

    .line 204
    .local v0, ex:Ljava/lang/Exception;
    :try_start_3
    sget-object v3, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    sget v3, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_4

    .line 205
    sget-object v3, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v0, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 207
    :cond_4
    invoke-virtual {p0}, Lmeizu_jcifs/netbios/NameServiceClient;->tryClose()V

    goto :goto_1

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    invoke-virtual {p0}, Lmeizu_jcifs/netbios/NameServiceClient;->tryClose()V

    throw v3
.end method

.method send(Lmeizu_jcifs/netbios/NameServicePacket;Lmeizu_jcifs/netbios/NameServicePacket;I)V
    .locals 12
    .parameter "request"
    .parameter "response"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v3, 0x0

    .line 213
    .local v3, nid:Ljava/lang/Integer;
    sget-object v7, Lmeizu_jcifs/netbios/NbtAddress;->NBNS:[Ljava/net/InetAddress;

    array-length v1, v7

    .line 215
    .local v1, max:I
    if-nez v1, :cond_0

    .line 216
    const/4 v1, 0x1

    .line 218
    :cond_0
    monitor-enter p2

    move v2, v1

    .end local v1           #max:I
    .local v2, max:I
    move-object v4, v3

    .line 219
    .end local v3           #nid:Ljava/lang/Integer;
    .local v4, nid:Ljava/lang/Integer;
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2           #max:I
    .restart local v1       #max:I
    if-lez v2, :cond_6

    .line 221
    :try_start_0
    iget-object v8, p0, Lmeizu_jcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 222
    :try_start_1
    invoke-virtual {p0}, Lmeizu_jcifs/netbios/NameServiceClient;->getNextNameTrnId()I

    move-result v7

    iput v7, p1, Lmeizu_jcifs/netbios/NameServicePacket;->nameTrnId:I

    .line 223
    new-instance v3, Ljava/lang/Integer;

    iget v7, p1, Lmeizu_jcifs/netbios/NameServicePacket;->nameTrnId:I

    invoke-direct {v3, v7}, Ljava/lang/Integer;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    .end local v4           #nid:Ljava/lang/Integer;
    .restart local v3       #nid:Ljava/lang/Integer;
    :try_start_2
    iget-object v7, p0, Lmeizu_jcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    iget-object v9, p1, Lmeizu_jcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-virtual {v7, v9}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 226
    iget-object v7, p0, Lmeizu_jcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    iget-object v9, p0, Lmeizu_jcifs/netbios/NameServiceClient;->snd_buf:[B

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Lmeizu_jcifs/netbios/NameServicePacket;->writeWireFormat([BI)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 227
    const/4 v7, 0x0

    iput-boolean v7, p2, Lmeizu_jcifs/netbios/NameServicePacket;->received:Z

    .line 229
    iget-object v7, p0, Lmeizu_jcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v7, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    add-int/lit16 v7, p3, 0x3e8

    invoke-virtual {p0, v7}, Lmeizu_jcifs/netbios/NameServiceClient;->ensureOpen(I)V

    .line 231
    iget-object v7, p0, Lmeizu_jcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    iget-object v9, p0, Lmeizu_jcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    invoke-virtual {v7, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 233
    sget-object v7, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    sget v7, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v9, 0x3

    if-le v7, v9, :cond_1

    .line 234
    sget-object v7, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v7, p1}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 235
    sget-object v7, Lmeizu_jcifs/netbios/NameServiceClient;->log:Lmeizu_jcifs/util/LogStream;

    iget-object v9, p0, Lmeizu_jcifs/netbios/NameServiceClient;->snd_buf:[B

    const/4 v10, 0x0

    iget-object v11, p0, Lmeizu_jcifs/netbios/NameServiceClient;->out:Ljava/net/DatagramPacket;

    invoke-virtual {v11}, Ljava/net/DatagramPacket;->getLength()I

    move-result v11

    invoke-static {v7, v9, v10, v11}, Lmeizu_jcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 237
    :cond_1
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 239
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 240
    .local v5, start:J
    :goto_1
    if-lez p3, :cond_3

    .line 241
    int-to-long v7, p3

    invoke-virtual {p2, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 248
    iget-boolean v7, p2, Lmeizu_jcifs/netbios/NameServicePacket;->received:Z

    if-eqz v7, :cond_2

    iget v7, p1, Lmeizu_jcifs/netbios/NameServicePacket;->questionType:I

    iget v8, p2, Lmeizu_jcifs/netbios/NameServicePacket;->recordType:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    if-ne v7, v8, :cond_2

    .line 258
    :try_start_4
    iget-object v7, p0, Lmeizu_jcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 274
    .end local v5           #start:J
    :goto_2
    return-void

    .line 237
    .end local v3           #nid:Ljava/lang/Integer;
    .restart local v4       #nid:Ljava/lang/Integer;
    :catchall_0
    move-exception v7

    move-object v3, v4

    .end local v4           #nid:Ljava/lang/Integer;
    .restart local v3       #nid:Ljava/lang/Integer;
    :goto_3
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, ie:Ljava/lang/InterruptedException;
    :goto_4
    :try_start_7
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 258
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v7

    :goto_5
    :try_start_8
    iget-object v8, p0, Lmeizu_jcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v7

    .line 273
    :catchall_2
    move-exception v7

    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v7

    .line 251
    .restart local v5       #start:J
    :cond_2
    const/4 v7, 0x0

    :try_start_9
    iput-boolean v7, p2, Lmeizu_jcifs/netbios/NameServicePacket;->received:Z

    .line 252
    int-to-long v7, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    move-result-wide v9

    sub-long/2addr v9, v5

    sub-long/2addr v7, v9

    long-to-int p3, v7

    goto :goto_1

    .line 258
    :cond_3
    :try_start_a
    iget-object v7, p0, Lmeizu_jcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v8, p0, Lmeizu_jcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    monitor-enter v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 262
    :try_start_b
    iget-object v7, p1, Lmeizu_jcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-static {v7}, Lmeizu_jcifs/netbios/NbtAddress;->isWINS(Ljava/net/InetAddress;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 263
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 273
    .end local v5           #start:J
    :goto_6
    :try_start_c
    monitor-exit p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_2

    .line 268
    .restart local v5       #start:J
    :cond_4
    :try_start_d
    iget-object v7, p1, Lmeizu_jcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    invoke-static {}, Lmeizu_jcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v9

    if-ne v7, v9, :cond_5

    .line 269
    invoke-static {}, Lmeizu_jcifs/netbios/NbtAddress;->switchWINS()Ljava/net/InetAddress;

    .line 270
    :cond_5
    invoke-static {}, Lmeizu_jcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v7

    iput-object v7, p1, Lmeizu_jcifs/netbios/NameServicePacket;->addr:Ljava/net/InetAddress;

    .line 271
    monitor-exit v8

    move v2, v1

    .end local v1           #max:I
    .restart local v2       #max:I
    move-object v4, v3

    .end local v3           #nid:Ljava/lang/Integer;
    .restart local v4       #nid:Ljava/lang/Integer;
    goto/16 :goto_0

    .end local v2           #max:I
    .end local v4           #nid:Ljava/lang/Integer;
    .restart local v1       #max:I
    .restart local v3       #nid:Ljava/lang/Integer;
    :catchall_3
    move-exception v7

    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 258
    .end local v3           #nid:Ljava/lang/Integer;
    .end local v5           #start:J
    .restart local v4       #nid:Ljava/lang/Integer;
    :catchall_4
    move-exception v7

    move-object v3, v4

    .end local v4           #nid:Ljava/lang/Integer;
    .restart local v3       #nid:Ljava/lang/Integer;
    goto :goto_5

    .line 255
    .end local v3           #nid:Ljava/lang/Integer;
    .restart local v4       #nid:Ljava/lang/Integer;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4           #nid:Ljava/lang/Integer;
    .restart local v3       #nid:Ljava/lang/Integer;
    goto :goto_4

    .line 237
    :catchall_5
    move-exception v7

    goto :goto_3

    .end local v3           #nid:Ljava/lang/Integer;
    .restart local v4       #nid:Ljava/lang/Integer;
    :cond_6
    move-object v3, v4

    .end local v4           #nid:Ljava/lang/Integer;
    .restart local v3       #nid:Ljava/lang/Integer;
    goto :goto_6
.end method

.method tryClose()V
    .locals 2

    .prologue
    .line 153
    iget-object v1, p0, Lmeizu_jcifs/netbios/NameServiceClient;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lmeizu_jcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lmeizu_jcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lmeizu_jcifs/netbios/NameServiceClient;->socket:Ljava/net/DatagramSocket;

    .line 167
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmeizu_jcifs/netbios/NameServiceClient;->thread:Ljava/lang/Thread;

    .line 168
    iget-object v0, p0, Lmeizu_jcifs/netbios/NameServiceClient;->responseTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 169
    monitor-exit v1

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

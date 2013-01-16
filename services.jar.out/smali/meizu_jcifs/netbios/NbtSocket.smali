.class public Lmeizu_jcifs/netbios/NbtSocket;
.super Ljava/net/Socket;
.source "NbtSocket.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x200

.field private static final DEFAULT_SO_TIMEOUT:I = 0x1388

.field private static final SSN_SRVC_PORT:I = 0x8b

.field private static log:Lmeizu_jcifs/util/LogStream;


# instance fields
.field private address:Lmeizu_jcifs/netbios/NbtAddress;

.field private calledName:Lmeizu_jcifs/netbios/Name;

.field private soTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lmeizu_jcifs/util/LogStream;->getInstance()Lmeizu_jcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Lmeizu_jcifs/netbios/NbtSocket;->log:Lmeizu_jcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lmeizu_jcifs/netbios/NbtAddress;I)V
    .locals 2
    .parameter "address"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lmeizu_jcifs/netbios/NbtSocket;-><init>(Lmeizu_jcifs/netbios/NbtAddress;ILjava/net/InetAddress;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lmeizu_jcifs/netbios/NbtAddress;ILjava/net/InetAddress;I)V
    .locals 6
    .parameter "address"
    .parameter "port"
    .parameter "localAddr"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmeizu_jcifs/netbios/NbtSocket;-><init>(Lmeizu_jcifs/netbios/NbtAddress;Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lmeizu_jcifs/netbios/NbtAddress;Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 3
    .parameter "address"
    .parameter "calledName"
    .parameter "port"
    .parameter "localAddr"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p1}, Lmeizu_jcifs/netbios/NbtAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez p3, :cond_0

    const/16 p3, 0x8b

    .end local p3
    :cond_0
    invoke-direct {p0, v0, p3, p4, p5}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 61
    iput-object p1, p0, Lmeizu_jcifs/netbios/NbtSocket;->address:Lmeizu_jcifs/netbios/NbtAddress;

    .line 62
    if-nez p2, :cond_1

    .line 63
    iget-object v0, p1, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    iput-object v0, p0, Lmeizu_jcifs/netbios/NbtSocket;->calledName:Lmeizu_jcifs/netbios/Name;

    .line 67
    :goto_0
    const-string v0, "meizu_jcifs.netbios.soTimeout"

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lmeizu_jcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/netbios/NbtSocket;->soTimeout:I

    .line 68
    invoke-direct {p0}, Lmeizu_jcifs/netbios/NbtSocket;->connect()V

    .line 69
    return-void

    .line 65
    :cond_1
    new-instance v0, Lmeizu_jcifs/netbios/Name;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lmeizu_jcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lmeizu_jcifs/netbios/NbtSocket;->calledName:Lmeizu_jcifs/netbios/Name;

    goto :goto_0
.end method

.method private connect()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 95
    const/16 v7, 0x200

    new-array v0, v7, [B

    .line 100
    .local v0, buffer:[B
    :try_start_0
    invoke-super {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 101
    .local v2, in:Ljava/io/InputStream;
    invoke-super {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 103
    .local v4, out:Ljava/io/OutputStream;
    new-instance v5, Lmeizu_jcifs/netbios/SessionRequestPacket;

    iget-object v7, p0, Lmeizu_jcifs/netbios/NbtSocket;->calledName:Lmeizu_jcifs/netbios/Name;

    sget-object v8, Lmeizu_jcifs/netbios/NbtAddress;->localhost:Lmeizu_jcifs/netbios/NbtAddress;

    iget-object v8, v8, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    invoke-direct {v5, v7, v8}, Lmeizu_jcifs/netbios/SessionRequestPacket;-><init>(Lmeizu_jcifs/netbios/Name;Lmeizu_jcifs/netbios/Name;)V

    .line 104
    .local v5, ssp0:Lmeizu_jcifs/netbios/SessionServicePacket;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8}, Lmeizu_jcifs/netbios/SessionServicePacket;->writeWireFormat([BI)I

    move-result v8

    invoke-virtual {v4, v0, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 106
    iget v7, p0, Lmeizu_jcifs/netbios/NbtSocket;->soTimeout:I

    invoke-virtual {p0, v7}, Lmeizu_jcifs/netbios/NbtSocket;->setSoTimeout(I)V

    .line 107
    const/4 v7, 0x0

    invoke-static {v2, v0, v7}, Lmeizu_jcifs/netbios/SessionServicePacket;->readPacketType(Ljava/io/InputStream;[BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 113
    .local v6, type:I
    sparse-switch v6, :sswitch_data_0

    .line 125
    invoke-virtual {p0}, Lmeizu_jcifs/netbios/NbtSocket;->close()V

    .line 126
    new-instance v7, Lmeizu_jcifs/netbios/NbtException;

    invoke-direct {v7, v10, v9}, Lmeizu_jcifs/netbios/NbtException;-><init>(II)V

    throw v7

    .line 108
    .end local v2           #in:Ljava/io/InputStream;
    .end local v4           #out:Ljava/io/OutputStream;
    .end local v5           #ssp0:Lmeizu_jcifs/netbios/SessionServicePacket;
    .end local v6           #type:I
    :catch_0
    move-exception v3

    .line 109
    .local v3, ioe:Ljava/io/IOException;
    invoke-virtual {p0}, Lmeizu_jcifs/netbios/NbtSocket;->close()V

    .line 110
    throw v3

    .line 115
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v2       #in:Ljava/io/InputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    .restart local v5       #ssp0:Lmeizu_jcifs/netbios/SessionServicePacket;
    .restart local v6       #type:I
    :sswitch_0
    sget-object v7, Lmeizu_jcifs/netbios/NbtSocket;->log:Lmeizu_jcifs/util/LogStream;

    sget v7, Lmeizu_jcifs/util/LogStream;->level:I

    if-le v7, v10, :cond_0

    .line 116
    sget-object v7, Lmeizu_jcifs/netbios/NbtSocket;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "session established ok with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lmeizu_jcifs/netbios/NbtSocket;->address:Lmeizu_jcifs/netbios/NbtAddress;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void

    .line 119
    :sswitch_1
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v7

    and-int/lit16 v1, v7, 0xff

    .line 120
    .local v1, errorCode:I
    invoke-virtual {p0}, Lmeizu_jcifs/netbios/NbtSocket;->close()V

    .line 121
    new-instance v7, Lmeizu_jcifs/netbios/NbtException;

    invoke-direct {v7, v10, v1}, Lmeizu_jcifs/netbios/NbtException;-><init>(II)V

    throw v7

    .line 123
    .end local v1           #errorCode:I
    :sswitch_2
    new-instance v7, Lmeizu_jcifs/netbios/NbtException;

    const/4 v8, -0x1

    invoke-direct {v7, v10, v8}, Lmeizu_jcifs/netbios/NbtException;-><init>(II)V

    throw v7

    .line 113
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x82 -> :sswitch_0
        0x83 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    sget-object v0, Lmeizu_jcifs/netbios/NbtSocket;->log:Lmeizu_jcifs/util/LogStream;

    sget v0, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 131
    sget-object v0, Lmeizu_jcifs/netbios/NbtSocket;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 132
    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->close()V

    .line 133
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lmeizu_jcifs/netbios/SocketInputStream;

    invoke-super {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lmeizu_jcifs/netbios/SocketInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getNbtAddress()Lmeizu_jcifs/netbios/NbtAddress;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lmeizu_jcifs/netbios/NbtSocket;->address:Lmeizu_jcifs/netbios/NbtAddress;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lmeizu_jcifs/netbios/SocketOutputStream;

    invoke-super {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lmeizu_jcifs/netbios/SocketOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NbtSocket[addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmeizu_jcifs/netbios/NbtSocket;->address:Lmeizu_jcifs/netbios/NbtAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/net/Socket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

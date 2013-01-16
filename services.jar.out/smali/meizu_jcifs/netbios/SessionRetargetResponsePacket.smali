.class Lmeizu_jcifs/netbios/SessionRetargetResponsePacket;
.super Lmeizu_jcifs/netbios/SessionServicePacket;
.source "SessionRetargetResponsePacket.java"


# instance fields
.field private retargetAddress:Lmeizu_jcifs/netbios/NbtAddress;

.field private retargetPort:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lmeizu_jcifs/netbios/SessionServicePacket;-><init>()V

    .line 30
    const/16 v0, 0x84

    iput v0, p0, Lmeizu_jcifs/netbios/SessionServicePacket;->type:I

    .line 31
    const/4 v0, 0x6

    iput v0, p0, Lmeizu_jcifs/netbios/SessionServicePacket;->length:I

    .line 32
    return-void
.end method


# virtual methods
.method readTrailerWireFormat(Ljava/io/InputStream;[BI)I
    .locals 4
    .parameter "in"
    .parameter "buffer"
    .parameter "bufferIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 41
    iget v1, p0, Lmeizu_jcifs/netbios/SessionServicePacket;->length:I

    invoke-virtual {p1, p2, p3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    iget v2, p0, Lmeizu_jcifs/netbios/SessionServicePacket;->length:I

    if-eq v1, v2, :cond_0

    .line 42
    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected EOF reading netbios retarget session response"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_0
    invoke-static {p2, p3}, Lmeizu_jcifs/netbios/SessionRetargetResponsePacket;->readInt4([BI)I

    move-result v0

    .line 45
    .local v0, addr:I
    add-int/lit8 p3, p3, 0x4

    .line 46
    new-instance v1, Lmeizu_jcifs/netbios/NbtAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Lmeizu_jcifs/netbios/NbtAddress;-><init>(Lmeizu_jcifs/netbios/Name;IZI)V

    iput-object v1, p0, Lmeizu_jcifs/netbios/SessionRetargetResponsePacket;->retargetAddress:Lmeizu_jcifs/netbios/NbtAddress;

    .line 47
    invoke-static {p2, p3}, Lmeizu_jcifs/netbios/SessionRetargetResponsePacket;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/netbios/SessionRetargetResponsePacket;->retargetPort:I

    .line 48
    iget v1, p0, Lmeizu_jcifs/netbios/SessionServicePacket;->length:I

    return v1
.end method

.method writeTrailerWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

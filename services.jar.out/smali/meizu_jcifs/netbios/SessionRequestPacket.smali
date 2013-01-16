.class public Lmeizu_jcifs/netbios/SessionRequestPacket;
.super Lmeizu_jcifs/netbios/SessionServicePacket;
.source "SessionRequestPacket.java"


# instance fields
.field private calledName:Lmeizu_jcifs/netbios/Name;

.field private callingName:Lmeizu_jcifs/netbios/Name;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lmeizu_jcifs/netbios/SessionServicePacket;-><init>()V

    .line 29
    new-instance v0, Lmeizu_jcifs/netbios/Name;

    invoke-direct {v0}, Lmeizu_jcifs/netbios/Name;-><init>()V

    iput-object v0, p0, Lmeizu_jcifs/netbios/SessionRequestPacket;->calledName:Lmeizu_jcifs/netbios/Name;

    .line 30
    new-instance v0, Lmeizu_jcifs/netbios/Name;

    invoke-direct {v0}, Lmeizu_jcifs/netbios/Name;-><init>()V

    iput-object v0, p0, Lmeizu_jcifs/netbios/SessionRequestPacket;->callingName:Lmeizu_jcifs/netbios/Name;

    .line 31
    return-void
.end method

.method public constructor <init>(Lmeizu_jcifs/netbios/Name;Lmeizu_jcifs/netbios/Name;)V
    .locals 1
    .parameter "calledName"
    .parameter "callingName"

    .prologue
    .line 32
    invoke-direct {p0}, Lmeizu_jcifs/netbios/SessionServicePacket;-><init>()V

    .line 33
    const/16 v0, 0x81

    iput v0, p0, Lmeizu_jcifs/netbios/SessionServicePacket;->type:I

    .line 34
    iput-object p1, p0, Lmeizu_jcifs/netbios/SessionRequestPacket;->calledName:Lmeizu_jcifs/netbios/Name;

    .line 35
    iput-object p2, p0, Lmeizu_jcifs/netbios/SessionRequestPacket;->callingName:Lmeizu_jcifs/netbios/Name;

    .line 36
    return-void
.end method


# virtual methods
.method readTrailerWireFormat(Ljava/io/InputStream;[BI)I
    .locals 3
    .parameter "in"
    .parameter "buffer"
    .parameter "bufferIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    move v0, p3

    .line 48
    .local v0, start:I
    iget v1, p0, Lmeizu_jcifs/netbios/SessionServicePacket;->length:I

    invoke-virtual {p1, p2, p3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    iget v2, p0, Lmeizu_jcifs/netbios/SessionServicePacket;->length:I

    if-eq v1, v2, :cond_0

    .line 49
    new-instance v1, Ljava/io/IOException;

    const-string v2, "invalid session request wire format"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    iget-object v1, p0, Lmeizu_jcifs/netbios/SessionRequestPacket;->calledName:Lmeizu_jcifs/netbios/Name;

    invoke-virtual {v1, p2, p3}, Lmeizu_jcifs/netbios/Name;->readWireFormat([BI)I

    move-result v1

    add-int/2addr p3, v1

    .line 52
    iget-object v1, p0, Lmeizu_jcifs/netbios/SessionRequestPacket;->callingName:Lmeizu_jcifs/netbios/Name;

    invoke-virtual {v1, p2, p3}, Lmeizu_jcifs/netbios/Name;->readWireFormat([BI)I

    move-result v1

    add-int/2addr p3, v1

    .line 53
    sub-int v1, p3, v0

    return v1
.end method

.method writeTrailerWireFormat([BI)I
    .locals 2
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 38
    move v0, p2

    .line 39
    .local v0, start:I
    iget-object v1, p0, Lmeizu_jcifs/netbios/SessionRequestPacket;->calledName:Lmeizu_jcifs/netbios/Name;

    invoke-virtual {v1, p1, p2}, Lmeizu_jcifs/netbios/Name;->writeWireFormat([BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 40
    iget-object v1, p0, Lmeizu_jcifs/netbios/SessionRequestPacket;->callingName:Lmeizu_jcifs/netbios/Name;

    invoke-virtual {v1, p1, p2}, Lmeizu_jcifs/netbios/Name;->writeWireFormat([BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 41
    sub-int v1, p2, v0

    return v1
.end method

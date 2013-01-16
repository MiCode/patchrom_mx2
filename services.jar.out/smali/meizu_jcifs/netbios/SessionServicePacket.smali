.class public abstract Lmeizu_jcifs/netbios/SessionServicePacket;
.super Ljava/lang/Object;
.source "SessionServicePacket.java"


# static fields
.field static final HEADER_LENGTH:I = 0x4

.field static final MAX_MESSAGE_SIZE:I = 0x1ffff

.field public static final NEGATIVE_SESSION_RESPONSE:I = 0x83

.field public static final POSITIVE_SESSION_RESPONSE:I = 0x82

.field static final SESSION_KEEP_ALIVE:I = 0x85

.field static final SESSION_MESSAGE:I = 0x0

.field static final SESSION_REQUEST:I = 0x81

.field static final SESSION_RETARGET_RESPONSE:I = 0x84


# instance fields
.field length:I

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readInt2([BI)I
    .locals 2
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 48
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method static readInt4([BI)I
    .locals 2
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 52
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method static readLength([BI)I
    .locals 3
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 58
    add-int/lit8 p1, p1, 0x1

    .line 59
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, srcIndex:I
    aget-byte v1, p0, p1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 p1, v0, 0x1

    .end local v0           #srcIndex:I
    .restart local p1
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #srcIndex:I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    return v1
.end method

.method static readPacketType(Ljava/io/InputStream;[BI)I
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
    const/4 v2, 0x4

    const/4 v1, -0x1

    .line 84
    invoke-static {p0, p1, p2, v2}, Lmeizu_jcifs/netbios/SessionServicePacket;->readn(Ljava/io/InputStream;[BII)I

    move-result v0

    .local v0, n:I
    if-eq v0, v2, :cond_1

    .line 85
    if-ne v0, v1, :cond_0

    .line 91
    :goto_0
    return v1

    .line 88
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unexpected EOF reading netbios session header"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_1
    aget-byte v2, p1, p2

    and-int/lit16 v1, v2, 0xff

    .line 91
    .local v1, t:I
    goto :goto_0
.end method

.method static readn(Ljava/io/InputStream;[BII)I
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
    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 70
    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 71
    .local v1, n:I
    if-gtz v1, :cond_1

    .line 77
    .end local v1           #n:I
    :cond_0
    return v0

    .line 74
    .restart local v1       #n:I
    :cond_1
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method static writeInt2(I[BI)V
    .locals 2
    .parameter "val"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 38
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 39
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 40
    return-void
.end method

.method static writeInt4(I[BI)V
    .locals 2
    .parameter "val"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 42
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 43
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 44
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #dstIndex:I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 45
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 46
    return-void
.end method


# virtual methods
.method readHeaderWireFormat(Ljava/io/InputStream;[BI)I
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
    .line 118
    add-int/lit8 v0, p3, 0x1

    .end local p3
    .local v0, bufferIndex:I
    aget-byte v1, p2, p3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lmeizu_jcifs/netbios/SessionServicePacket;->type:I

    .line 119
    aget-byte v1, p2, v0

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, v0, 0x1

    invoke-static {p2, v2}, Lmeizu_jcifs/netbios/SessionServicePacket;->readInt2([BI)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lmeizu_jcifs/netbios/SessionServicePacket;->length:I

    .line 120
    const/4 v1, 0x4

    return v1
.end method

.method abstract readTrailerWireFormat(Ljava/io/InputStream;[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method readWireFormat(Ljava/io/InputStream;[BI)I
    .locals 1
    .parameter "in"
    .parameter "buffer"
    .parameter "bufferIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0, p1, p2, p3}, Lmeizu_jcifs/netbios/SessionServicePacket;->readHeaderWireFormat(Ljava/io/InputStream;[BI)I

    .line 103
    invoke-virtual {p0, p1, p2, p3}, Lmeizu_jcifs/netbios/SessionServicePacket;->readTrailerWireFormat(Ljava/io/InputStream;[BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method writeHeaderWireFormat([BI)I
    .locals 3
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 106
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    iget v1, p0, Lmeizu_jcifs/netbios/SessionServicePacket;->type:I

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 107
    iget v1, p0, Lmeizu_jcifs/netbios/SessionServicePacket;->length:I

    const v2, 0xffff

    if-le v1, v2, :cond_0

    .line 108
    const/4 v1, 0x1

    aput-byte v1, p1, v0

    .line 110
    :cond_0
    add-int/lit8 p2, v0, 0x1

    .line 111
    .end local v0           #dstIndex:I
    .restart local p2
    iget v1, p0, Lmeizu_jcifs/netbios/SessionServicePacket;->length:I

    invoke-static {v1, p1, p2}, Lmeizu_jcifs/netbios/SessionServicePacket;->writeInt2(I[BI)V

    .line 112
    const/4 v1, 0x4

    return v1
.end method

.method abstract writeTrailerWireFormat([BI)I
.end method

.method public writeWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 97
    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p0, p1, v0}, Lmeizu_jcifs/netbios/SessionServicePacket;->writeTrailerWireFormat([BI)I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/netbios/SessionServicePacket;->length:I

    .line 98
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/netbios/SessionServicePacket;->writeHeaderWireFormat([BI)I

    .line 99
    iget v0, p0, Lmeizu_jcifs/netbios/SessionServicePacket;->length:I

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

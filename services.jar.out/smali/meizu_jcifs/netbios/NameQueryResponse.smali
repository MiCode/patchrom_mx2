.class Lmeizu_jcifs/netbios/NameQueryResponse;
.super Lmeizu_jcifs/netbios/NameServicePacket;
.source "NameQueryResponse.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lmeizu_jcifs/netbios/NameServicePacket;-><init>()V

    .line 24
    new-instance v0, Lmeizu_jcifs/netbios/Name;

    invoke-direct {v0}, Lmeizu_jcifs/netbios/Name;-><init>()V

    iput-object v0, p0, Lmeizu_jcifs/netbios/NameServicePacket;->recordName:Lmeizu_jcifs/netbios/Name;

    .line 25
    return-void
.end method


# virtual methods
.method readBodyWireFormat([BI)I
    .locals 1
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/netbios/NameQueryResponse;->readResourceRecordWireFormat([BI)I

    move-result v0

    return v0
.end method

.method readRDataWireFormat([BI)I
    .locals 7
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    const/4 v1, 0x0

    .line 37
    iget v3, p0, Lmeizu_jcifs/netbios/NameServicePacket;->resultCode:I

    if-nez v3, :cond_0

    iget v3, p0, Lmeizu_jcifs/netbios/NameServicePacket;->opCode:I

    if-eqz v3, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v1

    .line 40
    :cond_1
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    .line 41
    .local v1, groupName:Z
    :cond_2
    aget-byte v3, p1, p2

    and-int/lit8 v3, v3, 0x60

    shr-int/lit8 v2, v3, 0x5

    .line 42
    .local v2, nodeType:I
    add-int/lit8 p2, p2, 0x2

    .line 43
    invoke-static {p1, p2}, Lmeizu_jcifs/netbios/NameQueryResponse;->readInt4([BI)I

    move-result v0

    .line 44
    .local v0, address:I
    if-eqz v0, :cond_3

    .line 45
    iget-object v3, p0, Lmeizu_jcifs/netbios/NameServicePacket;->addrEntry:[Lmeizu_jcifs/netbios/NbtAddress;

    iget v4, p0, Lmeizu_jcifs/netbios/NameServicePacket;->addrIndex:I

    new-instance v5, Lmeizu_jcifs/netbios/NbtAddress;

    iget-object v6, p0, Lmeizu_jcifs/netbios/NameServicePacket;->recordName:Lmeizu_jcifs/netbios/Name;

    invoke-direct {v5, v6, v0, v1, v2}, Lmeizu_jcifs/netbios/NbtAddress;-><init>(Lmeizu_jcifs/netbios/Name;IZI)V

    aput-object v5, v3, v4

    .line 50
    :goto_1
    const/4 v1, 0x6

    goto :goto_0

    .line 47
    :cond_3
    iget-object v3, p0, Lmeizu_jcifs/netbios/NameServicePacket;->addrEntry:[Lmeizu_jcifs/netbios/NbtAddress;

    iget v4, p0, Lmeizu_jcifs/netbios/NameServicePacket;->addrIndex:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NameQueryResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/netbios/NameServicePacket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",addrEntry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->addrEntry:[Lmeizu_jcifs/netbios/NbtAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBodyWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method writeRDataWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

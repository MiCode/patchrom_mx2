.class Lmeizu_jcifs/netbios/NodeStatusRequest;
.super Lmeizu_jcifs/netbios/NameServicePacket;
.source "NodeStatusRequest.java"


# direct methods
.method constructor <init>(Lmeizu_jcifs/netbios/Name;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Lmeizu_jcifs/netbios/NameServicePacket;-><init>()V

    .line 24
    iput-object p1, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionName:Lmeizu_jcifs/netbios/Name;

    .line 25
    const/16 v0, 0x21

    iput v0, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionType:I

    .line 26
    iput-boolean v1, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isRecurDesired:Z

    .line 27
    iput-boolean v1, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 28
    return-void
.end method


# virtual methods
.method readBodyWireFormat([BI)I
    .locals 1
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method readRDataWireFormat([BI)I
    .locals 1
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NodeStatusRequest["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/netbios/NameServicePacket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .locals 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 31
    iget-object v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionName:Lmeizu_jcifs/netbios/Name;

    iget v1, v2, Lmeizu_jcifs/netbios/Name;->hexCode:I

    .line 32
    .local v1, tmp:I
    iget-object v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionName:Lmeizu_jcifs/netbios/Name;

    const/4 v3, 0x0

    iput v3, v2, Lmeizu_jcifs/netbios/Name;->hexCode:I

    .line 33
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/netbios/NodeStatusRequest;->writeQuestionSectionWireFormat([BI)I

    move-result v0

    .line 34
    .local v0, result:I
    iget-object v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionName:Lmeizu_jcifs/netbios/Name;

    iput v1, v2, Lmeizu_jcifs/netbios/Name;->hexCode:I

    .line 35
    return v0
.end method

.method writeRDataWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

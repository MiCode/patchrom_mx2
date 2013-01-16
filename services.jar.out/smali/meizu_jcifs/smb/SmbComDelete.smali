.class Lmeizu_jcifs/smb/SmbComDelete;
.super Lmeizu_jcifs/smb/ServerMessageBlock;
.source "SmbComDelete.java"


# instance fields
.field private searchAttributes:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"

    .prologue
    const/4 v0, 0x6

    .line 27
    invoke-direct {p0}, Lmeizu_jcifs/smb/ServerMessageBlock;-><init>()V

    .line 28
    iput-object p1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 29
    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 30
    iput v0, p0, Lmeizu_jcifs/smb/SmbComDelete;->searchAttributes:I

    .line 31
    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComDelete["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",searchAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComDelete;->searchAttributes:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

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

.method writeBytesWireFormat([BI)I
    .locals 3
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 38
    move v1, p2

    .line 40
    .local v1, start:I
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    const/4 v2, 0x4

    aput-byte v2, p1, p2

    .line 41
    iget-object v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v0}, Lmeizu_jcifs/smb/SmbComDelete;->writeString(Ljava/lang/String;[BI)I

    move-result v2

    add-int p2, v0, v2

    .line 43
    .end local v0           #dstIndex:I
    .restart local p2
    sub-int v2, p2, v1

    return v2
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 2
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 34
    iget v0, p0, Lmeizu_jcifs/smb/SmbComDelete;->searchAttributes:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Lmeizu_jcifs/smb/SmbComDelete;->writeInt2(J[BI)V

    .line 35
    const/4 v0, 0x2

    return v0
.end method

.class Lmeizu_jcifs/smb/NetShareEnumResponse;
.super Lmeizu_jcifs/smb/SmbComTransactionResponse;
.source "NetShareEnumResponse.java"


# instance fields
.field private converter:I

.field private totalAvailableEntries:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lmeizu_jcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 7
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    const/4 v6, 0x0

    .line 59
    move v3, p2

    .line 62
    .local v3, start:I
    iput-boolean v6, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 64
    iget v4, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->numEntries:I

    new-array v4, v4, [Lmeizu_jcifs/smb/SmbShareInfo;

    iput-object v4, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->results:[Lmeizu_jcifs/smb/FileEntry;

    .line 65
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->numEntries:I

    if-ge v1, v4, :cond_1

    .line 66
    iget-object v4, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->results:[Lmeizu_jcifs/smb/FileEntry;

    new-instance v0, Lmeizu_jcifs/smb/SmbShareInfo;

    invoke-direct {v0}, Lmeizu_jcifs/smb/SmbShareInfo;-><init>()V

    .local v0, e:Lmeizu_jcifs/smb/SmbShareInfo;
    aput-object v0, v4, v1

    .line 67
    const/16 v4, 0xd

    invoke-virtual {p0, p1, p2, v4, v6}, Lmeizu_jcifs/smb/NetShareEnumResponse;->readString([BIIZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lmeizu_jcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    .line 68
    add-int/lit8 p2, p2, 0xe

    .line 69
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/NetShareEnumResponse;->readInt2([BI)I

    move-result v4

    iput v4, v0, Lmeizu_jcifs/smb/SmbShareInfo;->type:I

    .line 70
    add-int/lit8 p2, p2, 0x2

    .line 71
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/NetShareEnumResponse;->readInt4([BI)I

    move-result v2

    .line 72
    .local v2, off:I
    add-int/lit8 p2, p2, 0x4

    .line 73
    const v4, 0xffff

    and-int/2addr v4, v2

    iget v5, p0, Lmeizu_jcifs/smb/NetShareEnumResponse;->converter:I

    sub-int v2, v4, v5

    .line 74
    add-int/2addr v2, v3

    .line 75
    const/16 v4, 0x80

    invoke-virtual {p0, p1, v2, v4, v6}, Lmeizu_jcifs/smb/NetShareEnumResponse;->readString([BIIZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lmeizu_jcifs/smb/SmbShareInfo;->remark:Ljava/lang/String;

    .line 77
    sget-object v4, Lmeizu_jcifs/smb/NetShareEnumResponse;->log:Lmeizu_jcifs/util/LogStream;

    sget v4, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    .line 78
    sget-object v4, Lmeizu_jcifs/smb/NetShareEnumResponse;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v4, v0}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 65
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v0           #e:Lmeizu_jcifs/smb/SmbShareInfo;
    .end local v2           #off:I
    :cond_1
    sub-int v4, p2, v3

    return v4
.end method

.method readParametersWireFormat([BII)I
    .locals 2
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 45
    move v0, p2

    .line 47
    .local v0, start:I
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/NetShareEnumResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->status:I

    .line 48
    add-int/lit8 p2, p2, 0x2

    .line 49
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/NetShareEnumResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/NetShareEnumResponse;->converter:I

    .line 50
    add-int/lit8 p2, p2, 0x2

    .line 51
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/NetShareEnumResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->numEntries:I

    .line 52
    add-int/lit8 p2, p2, 0x2

    .line 53
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/NetShareEnumResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/NetShareEnumResponse;->totalAvailableEntries:I

    .line 54
    add-int/lit8 p2, p2, 0x2

    .line 56
    sub-int v1, p2, v0

    return v1
.end method

.method readSetupWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetShareEnumResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",converter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/NetShareEnumResponse;->converter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",entriesReturned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->numEntries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalAvailableEntries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/NetShareEnumResponse;->totalAvailableEntries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeDataWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.class Lmeizu_jcifs/smb/SmbComOpenAndXResponse;
.super Lmeizu_jcifs/smb/AndXServerMessageBlock;
.source "SmbComOpenAndXResponse.java"


# instance fields
.field action:I

.field dataSize:I

.field deviceState:I

.field fid:I

.field fileAttributes:I

.field fileType:I

.field grantedAccess:I

.field lastWriteTime:J

.field serverFid:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lmeizu_jcifs/smb/AndXServerMessageBlock;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 3
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 46
    move v0, p2

    .line 48
    .local v0, start:I
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->fid:I

    .line 49
    add-int/lit8 p2, p2, 0x2

    .line 50
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->fileAttributes:I

    .line 51
    add-int/lit8 p2, p2, 0x2

    .line 52
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->readUTime([BI)J

    move-result-wide v1

    iput-wide v1, p0, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->lastWriteTime:J

    .line 53
    add-int/lit8 p2, p2, 0x4

    .line 54
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->dataSize:I

    .line 55
    add-int/lit8 p2, p2, 0x4

    .line 56
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->grantedAccess:I

    .line 57
    add-int/lit8 p2, p2, 0x2

    .line 58
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->fileType:I

    .line 59
    add-int/lit8 p2, p2, 0x2

    .line 60
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->deviceState:I

    .line 61
    add-int/lit8 p2, p2, 0x2

    .line 62
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->action:I

    .line 63
    add-int/lit8 p2, p2, 0x2

    .line 64
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->readInt4([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->serverFid:I

    .line 65
    add-int/lit8 p2, p2, 0x6

    .line 67
    sub-int v1, p2, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComOpenAndXResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->fid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileAttributes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->fileAttributes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lastWriteTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->lastWriteTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->dataSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",grantedAccess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->grantedAccess:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->fileType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",deviceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->deviceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->action:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",serverFid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComOpenAndXResponse;->serverFid:I

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

.method writeBytesWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.class Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;
.super Lmeizu_jcifs/smb/AndXServerMessageBlock;
.source "SmbComNTCreateAndXResponse.java"


# static fields
.field static final BATCH_OPLOCK_GRANTED:I = 0x2

.field static final EXCLUSIVE_OPLOCK_GRANTED:I = 0x1

.field static final LEVEL_II_OPLOCK_GRANTED:I = 0x3


# instance fields
.field allocationSize:J

.field changeTime:J

.field createAction:I

.field creationTime:J

.field deviceState:I

.field directory:Z

.field endOfFile:J

.field extFileAttributes:I

.field fid:I

.field fileType:I

.field isExtended:Z

.field lastAccessTime:J

.field lastWriteTime:J

.field oplockLevel:B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lmeizu_jcifs/smb/AndXServerMessageBlock;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 55
    move v1, p2

    .line 57
    .local v1, start:I
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, bufferIndex:I
    aget-byte v2, p1, p2

    iput-byte v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->oplockLevel:B

    .line 58
    invoke-static {p1, v0}, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->readInt2([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->fid:I

    .line 59
    add-int/lit8 p2, v0, 0x2

    .line 60
    .end local v0           #bufferIndex:I
    .restart local p2
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->readInt4([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->createAction:I

    .line 61
    add-int/lit8 p2, p2, 0x4

    .line 62
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->creationTime:J

    .line 63
    add-int/lit8 p2, p2, 0x8

    .line 64
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->lastAccessTime:J

    .line 65
    add-int/lit8 p2, p2, 0x8

    .line 66
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->lastWriteTime:J

    .line 67
    add-int/lit8 p2, p2, 0x8

    .line 68
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->changeTime:J

    .line 69
    add-int/lit8 p2, p2, 0x8

    .line 70
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->readInt4([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->extFileAttributes:I

    .line 71
    add-int/lit8 p2, p2, 0x4

    .line 72
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->readInt8([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->allocationSize:J

    .line 73
    add-int/lit8 p2, p2, 0x8

    .line 74
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->readInt8([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->endOfFile:J

    .line 75
    add-int/lit8 p2, p2, 0x8

    .line 76
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->readInt2([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->fileType:I

    .line 77
    add-int/lit8 p2, p2, 0x2

    .line 78
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->readInt2([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->deviceState:I

    .line 79
    add-int/lit8 p2, p2, 0x2

    .line 80
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #bufferIndex:I
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->directory:Z

    .line 82
    sub-int v2, v0, v1

    return v2

    .line 80
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 88
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComNTCreateAndXResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",oplockLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->oplockLevel:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->fid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",createAction=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->createAction:I

    invoke-static {v2, v5}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",creationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->creationTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lastAccessTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->lastAccessTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lastWriteTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->lastWriteTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",changeTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->changeTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",extFileAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->extFileAttributes:I

    invoke-static {v2, v5}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allocationSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->allocationSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",endOfFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->endOfFile:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->fileType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",deviceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->deviceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",directory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->directory:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

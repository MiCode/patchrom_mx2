.class Lmeizu_jcifs/smb/SmbComClose;
.super Lmeizu_jcifs/smb/ServerMessageBlock;
.source "SmbComClose.java"


# instance fields
.field private fid:I

.field private lastWriteTime:J


# direct methods
.method constructor <init>(IJ)V
    .locals 1
    .parameter "fid"
    .parameter "lastWriteTime"

    .prologue
    .line 28
    invoke-direct {p0}, Lmeizu_jcifs/smb/ServerMessageBlock;-><init>()V

    .line 29
    iput p1, p0, Lmeizu_jcifs/smb/SmbComClose;->fid:I

    .line 30
    iput-wide p2, p0, Lmeizu_jcifs/smb/SmbComClose;->lastWriteTime:J

    .line 31
    const/4 v0, 0x4

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 32
    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComClose["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComClose;->fid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lastWriteTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmeizu_jcifs/smb/SmbComClose;->lastWriteTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 2
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 35
    iget v0, p0, Lmeizu_jcifs/smb/SmbComClose;->fid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Lmeizu_jcifs/smb/SmbComClose;->writeInt2(J[BI)V

    .line 36
    add-int/lit8 p2, p2, 0x2

    .line 37
    iget-wide v0, p0, Lmeizu_jcifs/smb/SmbComClose;->lastWriteTime:J

    invoke-static {v0, v1, p1, p2}, Lmeizu_jcifs/smb/SmbComClose;->writeUTime(J[BI)V

    .line 38
    const/4 v0, 0x6

    return v0
.end method

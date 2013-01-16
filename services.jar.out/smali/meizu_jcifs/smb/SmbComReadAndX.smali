.class Lmeizu_jcifs/smb/SmbComReadAndX;
.super Lmeizu_jcifs/smb/AndXServerMessageBlock;
.source "SmbComReadAndX.java"


# static fields
.field private static final BATCH_LIMIT:I


# instance fields
.field private fid:I

.field maxCount:I

.field minCount:I

.field private offset:J

.field private openTimeout:I

.field remaining:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-string v0, "meizu_jcifs.smb.client.ReadAndX.Close"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmeizu_jcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmeizu_jcifs/smb/SmbComReadAndX;->BATCH_LIMIT:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmeizu_jcifs/smb/AndXServerMessageBlock;-><init>(Lmeizu_jcifs/smb/ServerMessageBlock;)V

    .line 34
    const/16 v0, 0x2e

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->openTimeout:I

    .line 36
    return-void
.end method

.method constructor <init>(IJILmeizu_jcifs/smb/ServerMessageBlock;)V
    .locals 1
    .parameter "fid"
    .parameter "offset"
    .parameter "maxCount"
    .parameter "andx"

    .prologue
    .line 38
    invoke-direct {p0, p5}, Lmeizu_jcifs/smb/AndXServerMessageBlock;-><init>(Lmeizu_jcifs/smb/ServerMessageBlock;)V

    .line 39
    iput p1, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->fid:I

    .line 40
    iput-wide p2, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->offset:J

    .line 41
    iput p4, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->minCount:I

    iput p4, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->maxCount:I

    .line 42
    const/16 v0, 0x2e

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->openTimeout:I

    .line 44
    return-void
.end method


# virtual methods
.method getBatchLimit(B)I
    .locals 1
    .parameter "command"

    .prologue
    .line 52
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget v0, Lmeizu_jcifs/smb/SmbComReadAndX;->BATCH_LIMIT:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method readBytesWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method setParam(IJI)V
    .locals 0
    .parameter "fid"
    .parameter "offset"
    .parameter "maxCount"

    .prologue
    .line 47
    iput p1, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->fid:I

    .line 48
    iput-wide p2, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->offset:J

    .line 49
    iput p4, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->minCount:I

    iput p4, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->maxCount:I

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComReadAndX["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->fid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->offset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",maxCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->maxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",minCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->minCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",openTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->openTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->remaining:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->offset:J

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
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 55
    move v0, p2

    .line 57
    .local v0, start:I
    iget v1, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->fid:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/SmbComReadAndX;->writeInt2(J[BI)V

    .line 58
    add-int/lit8 p2, p2, 0x2

    .line 59
    iget-wide v1, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->offset:J

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/SmbComReadAndX;->writeInt4(J[BI)V

    .line 60
    add-int/lit8 p2, p2, 0x4

    .line 61
    iget v1, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->maxCount:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/SmbComReadAndX;->writeInt2(J[BI)V

    .line 62
    add-int/lit8 p2, p2, 0x2

    .line 63
    iget v1, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->minCount:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/SmbComReadAndX;->writeInt2(J[BI)V

    .line 64
    add-int/lit8 p2, p2, 0x2

    .line 65
    iget v1, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->openTimeout:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/SmbComReadAndX;->writeInt4(J[BI)V

    .line 66
    add-int/lit8 p2, p2, 0x4

    .line 67
    iget v1, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->remaining:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/SmbComReadAndX;->writeInt2(J[BI)V

    .line 68
    add-int/lit8 p2, p2, 0x2

    .line 69
    iget-wide v1, p0, Lmeizu_jcifs/smb/SmbComReadAndX;->offset:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/SmbComReadAndX;->writeInt4(J[BI)V

    .line 70
    add-int/lit8 p2, p2, 0x4

    .line 72
    sub-int v1, p2, v0

    return v1
.end method

.class Lmeizu_jcifs/smb/SmbComReadAndXResponse;
.super Lmeizu_jcifs/smb/AndXServerMessageBlock;
.source "SmbComReadAndXResponse.java"


# instance fields
.field b:[B

.field dataCompactionMode:I

.field dataLength:I

.field dataOffset:I

.field off:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lmeizu_jcifs/smb/AndXServerMessageBlock;-><init>()V

    .line 27
    return-void
.end method

.method constructor <init>([BI)V
    .locals 0
    .parameter "b"
    .parameter "off"

    .prologue
    .line 28
    invoke-direct {p0}, Lmeizu_jcifs/smb/AndXServerMessageBlock;-><init>()V

    .line 29
    iput-object p1, p0, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->b:[B

    .line 30
    iput p2, p0, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->off:I

    .line 31
    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 2
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 44
    move v0, p2

    .line 46
    .local v0, start:I
    add-int/lit8 p2, p2, 0x2

    .line 47
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->dataCompactionMode:I

    .line 48
    add-int/lit8 p2, p2, 0x4

    .line 49
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->dataLength:I

    .line 50
    add-int/lit8 p2, p2, 0x2

    .line 51
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->dataOffset:I

    .line 52
    add-int/lit8 p2, p2, 0xc

    .line 54
    sub-int v1, p2, v0

    return v1
.end method

.method setParam([BI)V
    .locals 0
    .parameter "b"
    .parameter "off"

    .prologue
    .line 34
    iput-object p1, p0, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->b:[B

    .line 35
    iput p2, p0, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->off:I

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComReadAndXResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataCompactionMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->dataCompactionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->dataLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComReadAndXResponse;->dataOffset:I

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
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

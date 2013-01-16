.class abstract Lmeizu_jcifs/smb/SmbComNtTransactionResponse;
.super Lmeizu_jcifs/smb/SmbComTransactionResponse;
.source "SmbComNtTransactionResponse.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lmeizu_jcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method readParameterWordsWireFormat([BI)I
    .locals 5
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    const/4 v2, 0x0

    .line 28
    move v1, p2

    .line 30
    .local v1, start:I
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, bufferIndex:I
    aput-byte v2, p1, p2

    .line 31
    add-int/lit8 p2, v0, 0x1

    .end local v0           #bufferIndex:I
    .restart local p2
    aput-byte v2, p1, v0

    .line 32
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #bufferIndex:I
    aput-byte v2, p1, p2

    .line 34
    invoke-static {p1, v0}, Lmeizu_jcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    .line 35
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    if-nez v2, :cond_0

    .line 36
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    iput v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    .line 38
    :cond_0
    add-int/lit8 p2, v0, 0x4

    .line 39
    .end local v0           #bufferIndex:I
    .restart local p2
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->totalDataCount:I

    .line 40
    add-int/lit8 p2, p2, 0x4

    .line 41
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parameterCount:I

    .line 42
    add-int/lit8 p2, p2, 0x4

    .line 43
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parameterOffset:I

    .line 44
    add-int/lit8 p2, p2, 0x4

    .line 45
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parameterDisplacement:I

    .line 46
    add-int/lit8 p2, p2, 0x4

    .line 47
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataCount:I

    .line 48
    add-int/lit8 p2, p2, 0x4

    .line 49
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataOffset:I

    .line 50
    add-int/lit8 p2, p2, 0x4

    .line 51
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComNtTransactionResponse;->readInt4([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataDisplacement:I

    .line 52
    add-int/lit8 p2, p2, 0x4

    .line 53
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->setupCount:I

    .line 54
    add-int/lit8 p2, p2, 0x2

    .line 55
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->setupCount:I

    if-eqz v2, :cond_1

    .line 56
    sget-object v2, Lmeizu_jcifs/smb/SmbComNtTransactionResponse;->log:Lmeizu_jcifs/util/LogStream;

    sget v2, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 57
    sget-object v2, Lmeizu_jcifs/smb/SmbComNtTransactionResponse;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupCount is not zero: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->setupCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 60
    :cond_1
    sub-int v2, p2, v1

    return v2
.end method

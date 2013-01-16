.class Lmeizu_jcifs/smb/Trans2QueryFSInformation;
.super Lmeizu_jcifs/smb/SmbComTransaction;
.source "Trans2QueryFSInformation.java"


# instance fields
.field private informationLevel:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .parameter "informationLevel"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lmeizu_jcifs/smb/SmbComTransaction;-><init>()V

    .line 28
    const/16 v0, 0x32

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 29
    const/4 v0, 0x3

    iput-byte v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->subCommand:B

    .line 30
    iput p1, p0, Lmeizu_jcifs/smb/Trans2QueryFSInformation;->informationLevel:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->totalParameterCount:I

    .line 32
    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->totalDataCount:I

    .line 33
    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 34
    const/16 v0, 0x320

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 35
    iput-byte v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 36
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method readParametersWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2QueryFSInformation["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",informationLevel=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2QueryFSInformation;->informationLevel:I

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

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

.method writeDataWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 3
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 44
    move v0, p2

    .line 46
    .local v0, start:I
    iget v1, p0, Lmeizu_jcifs/smb/Trans2QueryFSInformation;->informationLevel:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/Trans2QueryFSInformation;->writeInt2(J[BI)V

    .line 47
    add-int/lit8 p2, p2, 0x2

    .line 56
    sub-int v1, p2, v0

    return v1
.end method

.method writeSetupWireFormat([BI)I
    .locals 2
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 39
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    iget-byte v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->subCommand:B

    aput-byte v1, p1, p2

    .line 40
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 41
    const/4 v1, 0x2

    return v1
.end method

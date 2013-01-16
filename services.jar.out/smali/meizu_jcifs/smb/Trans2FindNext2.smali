.class Lmeizu_jcifs/smb/Trans2FindNext2;
.super Lmeizu_jcifs/smb/SmbComTransaction;
.source "Trans2FindNext2.java"


# instance fields
.field private filename:Ljava/lang/String;

.field private flags:I

.field private informationLevel:I

.field private resumeKey:I

.field private sid:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 2
    .parameter "sid"
    .parameter "resumeKey"
    .parameter "filename"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lmeizu_jcifs/smb/SmbComTransaction;-><init>()V

    .line 30
    iput p1, p0, Lmeizu_jcifs/smb/Trans2FindNext2;->sid:I

    .line 31
    iput p2, p0, Lmeizu_jcifs/smb/Trans2FindNext2;->resumeKey:I

    .line 32
    iput-object p3, p0, Lmeizu_jcifs/smb/Trans2FindNext2;->filename:Ljava/lang/String;

    .line 33
    const/16 v0, 0x32

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 34
    const/4 v0, 0x2

    iput-byte v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->subCommand:B

    .line 35
    const/16 v0, 0x104

    iput v0, p0, Lmeizu_jcifs/smb/Trans2FindNext2;->informationLevel:I

    .line 36
    iput v1, p0, Lmeizu_jcifs/smb/Trans2FindNext2;->flags:I

    .line 37
    const/16 v0, 0x8

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 38
    sget v0, Lmeizu_jcifs/smb/Trans2FindFirst2;->LIST_SIZE:I

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 39
    iput-byte v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 40
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method readParametersWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method reset(ILjava/lang/String;)V
    .locals 1
    .parameter "resumeKey"
    .parameter "lastName"

    .prologue
    .line 43
    invoke-super {p0}, Lmeizu_jcifs/smb/SmbComTransaction;->reset()V

    .line 44
    iput p1, p0, Lmeizu_jcifs/smb/Trans2FindNext2;->resumeKey:I

    .line 45
    iput-object p2, p0, Lmeizu_jcifs/smb/Trans2FindNext2;->filename:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->flags2:I

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2FindNext2["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2FindNext2;->sid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",searchCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmeizu_jcifs/smb/Trans2FindFirst2;->LIST_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",informationLevel=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2FindNext2;->informationLevel:I

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resumeKey=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2FindNext2;->resumeKey:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2FindNext2;->flags:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",filename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/Trans2FindNext2;->filename:Ljava/lang/String;

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
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 3
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 55
    move v0, p2

    .line 57
    .local v0, start:I
    iget v1, p0, Lmeizu_jcifs/smb/Trans2FindNext2;->sid:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/Trans2FindNext2;->writeInt2(J[BI)V

    .line 58
    add-int/lit8 p2, p2, 0x2

    .line 59
    sget v1, Lmeizu_jcifs/smb/Trans2FindFirst2;->LIST_COUNT:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/Trans2FindNext2;->writeInt2(J[BI)V

    .line 60
    add-int/lit8 p2, p2, 0x2

    .line 61
    iget v1, p0, Lmeizu_jcifs/smb/Trans2FindNext2;->informationLevel:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/Trans2FindNext2;->writeInt2(J[BI)V

    .line 62
    add-int/lit8 p2, p2, 0x2

    .line 63
    iget v1, p0, Lmeizu_jcifs/smb/Trans2FindNext2;->resumeKey:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/Trans2FindNext2;->writeInt4(J[BI)V

    .line 64
    add-int/lit8 p2, p2, 0x4

    .line 65
    iget v1, p0, Lmeizu_jcifs/smb/Trans2FindNext2;->flags:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/Trans2FindNext2;->writeInt2(J[BI)V

    .line 66
    add-int/lit8 p2, p2, 0x2

    .line 67
    iget-object v1, p0, Lmeizu_jcifs/smb/Trans2FindNext2;->filename:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, p2}, Lmeizu_jcifs/smb/Trans2FindNext2;->writeString(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 69
    sub-int v1, p2, v0

    return v1
.end method

.method writeSetupWireFormat([BI)I
    .locals 2
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 50
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    iget-byte v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->subCommand:B

    aput-byte v1, p1, p2

    .line 51
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 52
    const/4 v1, 0x2

    return v1
.end method

.class Lmeizu_jcifs/smb/TransTransactNamedPipe;
.super Lmeizu_jcifs/smb/SmbComTransaction;
.source "TransTransactNamedPipe.java"


# instance fields
.field private pipeData:[B

.field private pipeDataLen:I

.field private pipeDataOff:I

.field private pipeFid:I


# direct methods
.method constructor <init>(I[BII)V
    .locals 2
    .parameter "fid"
    .parameter "data"
    .parameter "off"
    .parameter "len"

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lmeizu_jcifs/smb/SmbComTransaction;-><init>()V

    .line 27
    iput p1, p0, Lmeizu_jcifs/smb/TransTransactNamedPipe;->pipeFid:I

    .line 28
    iput-object p2, p0, Lmeizu_jcifs/smb/TransTransactNamedPipe;->pipeData:[B

    .line 29
    iput p3, p0, Lmeizu_jcifs/smb/TransTransactNamedPipe;->pipeDataOff:I

    .line 30
    iput p4, p0, Lmeizu_jcifs/smb/TransTransactNamedPipe;->pipeDataLen:I

    .line 31
    const/16 v0, 0x25

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 32
    const/16 v0, 0x26

    iput-byte v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->subCommand:B

    .line 33
    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 34
    const v0, 0xffff

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 35
    iput-byte v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->setupCount:I

    .line 37
    const-string v0, "\\PIPE\\"

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method readParametersWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransTransactNamedPipe["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pipeFid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/TransTransactNamedPipe;->pipeFid:I

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
    .locals 3
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 54
    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lmeizu_jcifs/smb/TransTransactNamedPipe;->pipeDataLen:I

    if-ge v0, v1, :cond_1

    .line 55
    sget-object v0, Lmeizu_jcifs/smb/TransTransactNamedPipe;->log:Lmeizu_jcifs/util/LogStream;

    sget v0, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 56
    sget-object v0, Lmeizu_jcifs/smb/TransTransactNamedPipe;->log:Lmeizu_jcifs/util/LogStream;

    const-string v1, "TransTransactNamedPipe data too long for buffer"

    invoke-virtual {v0, v1}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    .line 59
    :cond_1
    iget-object v0, p0, Lmeizu_jcifs/smb/TransTransactNamedPipe;->pipeData:[B

    iget v1, p0, Lmeizu_jcifs/smb/TransTransactNamedPipe;->pipeDataOff:I

    iget v2, p0, Lmeizu_jcifs/smb/TransTransactNamedPipe;->pipeDataLen:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget v0, p0, Lmeizu_jcifs/smb/TransTransactNamedPipe;->pipeDataLen:I

    goto :goto_0
.end method

.method writeParametersWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .locals 3
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 41
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    iget-byte v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->subCommand:B

    aput-byte v1, p1, p2

    .line 42
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 43
    iget v1, p0, Lmeizu_jcifs/smb/TransTransactNamedPipe;->pipeFid:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/TransTransactNamedPipe;->writeInt2(J[BI)V

    .line 44
    add-int/lit8 p2, p2, 0x2

    .line 45
    const/4 v1, 0x4

    return v1
.end method

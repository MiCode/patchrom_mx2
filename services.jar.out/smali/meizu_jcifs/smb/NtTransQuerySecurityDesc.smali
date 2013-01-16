.class Lmeizu_jcifs/smb/NtTransQuerySecurityDesc;
.super Lmeizu_jcifs/smb/SmbComNtTransaction;
.source "NtTransQuerySecurityDesc.java"


# instance fields
.field fid:I

.field securityInformation:I


# direct methods
.method constructor <init>(II)V
    .locals 2
    .parameter "fid"
    .parameter "securityInformation"

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lmeizu_jcifs/smb/SmbComNtTransaction;-><init>()V

    .line 29
    iput p1, p0, Lmeizu_jcifs/smb/NtTransQuerySecurityDesc;->fid:I

    .line 30
    iput p2, p0, Lmeizu_jcifs/smb/NtTransQuerySecurityDesc;->securityInformation:I

    .line 31
    const/16 v0, -0x60

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 32
    const/4 v0, 0x6

    iput v0, p0, Lmeizu_jcifs/smb/SmbComNtTransaction;->function:I

    .line 33
    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->setupCount:I

    .line 34
    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->totalDataCount:I

    .line 35
    const/4 v0, 0x4

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 36
    const v0, 0x8000

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 37
    iput-byte v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxSetupCount:B

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
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method readParametersWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NtTransQuerySecurityDesc["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/SmbComNtTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/NtTransQuerySecurityDesc;->fid:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",securityInformation=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/NtTransQuerySecurityDesc;->securityInformation:I

    const/16 v3, 0x8

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
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 5
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/4 v4, 0x0

    .line 44
    move v1, p2

    .line 46
    .local v1, start:I
    iget v2, p0, Lmeizu_jcifs/smb/NtTransQuerySecurityDesc;->fid:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/smb/NtTransQuerySecurityDesc;->writeInt2(J[BI)V

    .line 47
    add-int/lit8 p2, p2, 0x2

    .line 48
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    aput-byte v4, p1, p2

    .line 49
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    aput-byte v4, p1, v0

    .line 50
    iget v2, p0, Lmeizu_jcifs/smb/NtTransQuerySecurityDesc;->securityInformation:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/smb/NtTransQuerySecurityDesc;->writeInt4(J[BI)V

    .line 51
    add-int/lit8 p2, p2, 0x4

    .line 53
    sub-int v2, p2, v1

    return v2
.end method

.method writeSetupWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

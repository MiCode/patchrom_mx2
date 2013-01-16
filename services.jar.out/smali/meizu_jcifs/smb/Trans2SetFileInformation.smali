.class Lmeizu_jcifs/smb/Trans2SetFileInformation;
.super Lmeizu_jcifs/smb/SmbComTransaction;
.source "Trans2SetFileInformation.java"


# static fields
.field static final SMB_FILE_BASIC_INFO:I = 0x101


# instance fields
.field private attributes:I

.field private createTime:J

.field private fid:I

.field private lastWriteTime:J


# direct methods
.method constructor <init>(IIJJ)V
    .locals 2
    .parameter "fid"
    .parameter "attributes"
    .parameter "createTime"
    .parameter "lastWriteTime"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lmeizu_jcifs/smb/SmbComTransaction;-><init>()V

    .line 30
    iput p1, p0, Lmeizu_jcifs/smb/Trans2SetFileInformation;->fid:I

    .line 31
    iput p2, p0, Lmeizu_jcifs/smb/Trans2SetFileInformation;->attributes:I

    .line 32
    iput-wide p3, p0, Lmeizu_jcifs/smb/Trans2SetFileInformation;->createTime:J

    .line 33
    iput-wide p5, p0, Lmeizu_jcifs/smb/Trans2SetFileInformation;->lastWriteTime:J

    .line 34
    const/16 v0, 0x32

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 35
    const/16 v0, 0x8

    iput-byte v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->subCommand:B

    .line 36
    const/4 v0, 0x6

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 37
    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 38
    iput-byte v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 39
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method readParametersWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2SetFileInformation["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2SetFileInformation;->fid:I

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
    .locals 5
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const-wide/16 v3, 0x0

    .line 59
    move v0, p2

    .line 61
    .local v0, start:I
    iget-wide v1, p0, Lmeizu_jcifs/smb/Trans2SetFileInformation;->createTime:J

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/Trans2SetFileInformation;->writeTime(J[BI)V

    add-int/lit8 p2, p2, 0x8

    .line 62
    invoke-static {v3, v4, p1, p2}, Lmeizu_jcifs/smb/Trans2SetFileInformation;->writeInt8(J[BI)V

    add-int/lit8 p2, p2, 0x8

    .line 63
    iget-wide v1, p0, Lmeizu_jcifs/smb/Trans2SetFileInformation;->lastWriteTime:J

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/Trans2SetFileInformation;->writeTime(J[BI)V

    add-int/lit8 p2, p2, 0x8

    .line 64
    invoke-static {v3, v4, p1, p2}, Lmeizu_jcifs/smb/Trans2SetFileInformation;->writeInt8(J[BI)V

    add-int/lit8 p2, p2, 0x8

    .line 67
    iget v1, p0, Lmeizu_jcifs/smb/Trans2SetFileInformation;->attributes:I

    or-int/lit16 v1, v1, 0x80

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/Trans2SetFileInformation;->writeInt2(J[BI)V

    add-int/lit8 p2, p2, 0x2

    .line 69
    invoke-static {v3, v4, p1, p2}, Lmeizu_jcifs/smb/Trans2SetFileInformation;->writeInt8(J[BI)V

    add-int/lit8 p2, p2, 0x6

    .line 74
    sub-int v1, p2, v0

    return v1
.end method

.method writeParametersWireFormat([BI)I
    .locals 3
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 47
    move v0, p2

    .line 49
    .local v0, start:I
    iget v1, p0, Lmeizu_jcifs/smb/Trans2SetFileInformation;->fid:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/Trans2SetFileInformation;->writeInt2(J[BI)V

    .line 50
    add-int/lit8 p2, p2, 0x2

    .line 51
    const-wide/16 v1, 0x101

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/Trans2SetFileInformation;->writeInt2(J[BI)V

    .line 52
    add-int/lit8 p2, p2, 0x2

    .line 53
    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/Trans2SetFileInformation;->writeInt2(J[BI)V

    .line 54
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
    .line 42
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    iget-byte v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->subCommand:B

    aput-byte v1, p1, p2

    .line 43
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 44
    const/4 v1, 0x2

    return v1
.end method

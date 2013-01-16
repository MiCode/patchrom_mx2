.class Lmeizu_jcifs/smb/SmbComWrite;
.super Lmeizu_jcifs/smb/ServerMessageBlock;
.source "SmbComWrite.java"


# instance fields
.field private b:[B

.field private count:I

.field private fid:I

.field private off:I

.field private offset:I

.field private remaining:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lmeizu_jcifs/smb/ServerMessageBlock;-><init>()V

    .line 34
    const/16 v0, 0xb

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 35
    return-void
.end method

.method constructor <init>(III[BII)V
    .locals 1
    .parameter "fid"
    .parameter "offset"
    .parameter "remaining"
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 36
    invoke-direct {p0}, Lmeizu_jcifs/smb/ServerMessageBlock;-><init>()V

    .line 37
    iput p1, p0, Lmeizu_jcifs/smb/SmbComWrite;->fid:I

    .line 38
    iput p6, p0, Lmeizu_jcifs/smb/SmbComWrite;->count:I

    .line 39
    iput p2, p0, Lmeizu_jcifs/smb/SmbComWrite;->offset:I

    .line 40
    iput p3, p0, Lmeizu_jcifs/smb/SmbComWrite;->remaining:I

    .line 41
    iput-object p4, p0, Lmeizu_jcifs/smb/SmbComWrite;->b:[B

    .line 42
    iput p5, p0, Lmeizu_jcifs/smb/SmbComWrite;->off:I

    .line 43
    const/16 v0, 0xb

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 44
    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method setParam(IJI[BII)V
    .locals 2
    .parameter "fid"
    .parameter "offset"
    .parameter "remaining"
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 48
    iput p1, p0, Lmeizu_jcifs/smb/SmbComWrite;->fid:I

    .line 49
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p2

    long-to-int v0, v0

    iput v0, p0, Lmeizu_jcifs/smb/SmbComWrite;->offset:I

    .line 50
    iput p4, p0, Lmeizu_jcifs/smb/SmbComWrite;->remaining:I

    .line 51
    iput-object p5, p0, Lmeizu_jcifs/smb/SmbComWrite;->b:[B

    .line 52
    iput p6, p0, Lmeizu_jcifs/smb/SmbComWrite;->off:I

    .line 53
    iput p7, p0, Lmeizu_jcifs/smb/SmbComWrite;->count:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->digest:Lmeizu_jcifs/smb/SigningDigest;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComWrite["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComWrite;->fid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComWrite;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComWrite;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComWrite;->remaining:I

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
    .locals 5
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 73
    move v1, p2

    .line 75
    .local v1, start:I
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    const/4 v2, 0x1

    aput-byte v2, p1, p2

    .line 76
    iget v2, p0, Lmeizu_jcifs/smb/SmbComWrite;->count:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Lmeizu_jcifs/smb/SmbComWrite;->writeInt2(J[BI)V

    .line 77
    add-int/lit8 p2, v0, 0x2

    .line 78
    .end local v0           #dstIndex:I
    .restart local p2
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComWrite;->b:[B

    iget v3, p0, Lmeizu_jcifs/smb/SmbComWrite;->off:I

    iget v4, p0, Lmeizu_jcifs/smb/SmbComWrite;->count:I

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget v2, p0, Lmeizu_jcifs/smb/SmbComWrite;->count:I

    add-int/2addr p2, v2

    .line 81
    sub-int v2, p2, v1

    return v2
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 3
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 59
    move v0, p2

    .line 61
    .local v0, start:I
    iget v1, p0, Lmeizu_jcifs/smb/SmbComWrite;->fid:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/SmbComWrite;->writeInt2(J[BI)V

    .line 62
    add-int/lit8 p2, p2, 0x2

    .line 63
    iget v1, p0, Lmeizu_jcifs/smb/SmbComWrite;->count:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/SmbComWrite;->writeInt2(J[BI)V

    .line 64
    add-int/lit8 p2, p2, 0x2

    .line 65
    iget v1, p0, Lmeizu_jcifs/smb/SmbComWrite;->offset:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/SmbComWrite;->writeInt4(J[BI)V

    .line 66
    add-int/lit8 p2, p2, 0x4

    .line 67
    iget v1, p0, Lmeizu_jcifs/smb/SmbComWrite;->remaining:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/SmbComWrite;->writeInt2(J[BI)V

    .line 68
    add-int/lit8 p2, p2, 0x2

    .line 70
    sub-int v1, p2, v0

    return v1
.end method

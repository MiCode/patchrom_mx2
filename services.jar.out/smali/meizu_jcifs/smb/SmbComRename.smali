.class Lmeizu_jcifs/smb/SmbComRename;
.super Lmeizu_jcifs/smb/ServerMessageBlock;
.source "SmbComRename.java"


# instance fields
.field private newFileName:Ljava/lang/String;

.field private oldFileName:Ljava/lang/String;

.field private searchAttributes:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "oldFileName"
    .parameter "newFileName"

    .prologue
    .line 29
    invoke-direct {p0}, Lmeizu_jcifs/smb/ServerMessageBlock;-><init>()V

    .line 30
    const/4 v0, 0x7

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 31
    iput-object p1, p0, Lmeizu_jcifs/smb/SmbComRename;->oldFileName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lmeizu_jcifs/smb/SmbComRename;->newFileName:Ljava/lang/String;

    .line 33
    const/16 v0, 0x16

    iput v0, p0, Lmeizu_jcifs/smb/SmbComRename;->searchAttributes:I

    .line 34
    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComRename["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",searchAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComRename;->searchAttributes:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",oldFileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComRename;->oldFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",newFileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComRename;->newFileName:Ljava/lang/String;

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

.method writeBytesWireFormat([BI)I
    .locals 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/4 v3, 0x4

    .line 41
    move v1, p2

    .line 43
    .local v1, start:I
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    aput-byte v3, p1, p2

    .line 44
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComRename;->oldFileName:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v0}, Lmeizu_jcifs/smb/SmbComRename;->writeString(Ljava/lang/String;[BI)I

    move-result v2

    add-int p2, v0, v2

    .line 45
    .end local v0           #dstIndex:I
    .restart local p2
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #dstIndex:I
    aput-byte v3, p1, p2

    .line 46
    iget-boolean v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->useUnicode:Z

    if-eqz v2, :cond_0

    .line 47
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    const/4 v2, 0x0

    aput-byte v2, p1, v0

    .line 49
    :goto_0
    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComRename;->newFileName:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, p2}, Lmeizu_jcifs/smb/SmbComRename;->writeString(Ljava/lang/String;[BI)I

    move-result v2

    add-int/2addr p2, v2

    .line 51
    sub-int v2, p2, v1

    return v2

    .end local p2
    .restart local v0       #dstIndex:I
    :cond_0
    move p2, v0

    .end local v0           #dstIndex:I
    .restart local p2
    goto :goto_0
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 2
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 37
    iget v0, p0, Lmeizu_jcifs/smb/SmbComRename;->searchAttributes:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Lmeizu_jcifs/smb/SmbComRename;->writeInt2(J[BI)V

    .line 38
    const/4 v0, 0x2

    return v0
.end method

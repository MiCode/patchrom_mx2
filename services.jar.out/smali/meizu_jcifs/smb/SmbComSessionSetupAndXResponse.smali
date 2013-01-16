.class Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;
.super Lmeizu_jcifs/smb/AndXServerMessageBlock;
.source "SmbComSessionSetupAndXResponse.java"


# instance fields
.field blob:[B

.field isLoggedInAsGuest:Z

.field private nativeLanMan:Ljava/lang/String;

.field private nativeOs:Ljava/lang/String;

.field private primaryDomain:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmeizu_jcifs/smb/ServerMessageBlock;)V
    .locals 1
    .parameter "andx"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lmeizu_jcifs/smb/AndXServerMessageBlock;-><init>(Lmeizu_jcifs/smb/ServerMessageBlock;)V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    .line 34
    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 7
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    const/16 v4, 0xff

    .line 54
    move v6, p2

    .line 56
    .local v6, start:I
    iget-boolean v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->extendedSecurity:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    array-length v2, v2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 60
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->readString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->stringWireLength(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr p2, v0

    .line 62
    iget v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    add-int v3, v6, v0

    iget-boolean v5, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->useUnicode:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->readString([BIIIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->stringWireLength(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr p2, v0

    .line 64
    iget-boolean v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->extendedSecurity:Z

    if-nez v0, :cond_1

    .line 65
    iget v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    add-int v3, v6, v0

    iget-boolean v5, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->useUnicode:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->readString([BIIIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->stringWireLength(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr p2, v0

    .line 69
    :cond_1
    sub-int v0, p2, v6

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    const/4 v2, 0x1

    .line 43
    move v1, p2

    .line 44
    .local v1, start:I
    aget-byte v3, p1, p2

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v2, :cond_1

    :goto_0
    iput-boolean v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    .line 45
    add-int/lit8 p2, p2, 0x2

    .line 46
    iget-boolean v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->extendedSecurity:Z

    if-eqz v2, :cond_0

    .line 47
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->readInt2([BI)I

    move-result v0

    .line 48
    .local v0, blobLength:I
    add-int/lit8 p2, p2, 0x2

    .line 49
    new-array v2, v0, [B

    iput-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    .line 51
    .end local v0           #blobLength:I
    :cond_0
    sub-int v2, p2, v1

    return v2

    .line 44
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComSessionSetupAndXResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isLoggedInAsGuest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",nativeOs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->nativeOs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",nativeLanMan="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->nativeLanMan:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",primaryDomain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComSessionSetupAndXResponse;->primaryDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method writeBytesWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

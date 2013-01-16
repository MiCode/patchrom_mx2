.class Lmeizu_jcifs/smb/NetServerEnum2Response;
.super Lmeizu_jcifs/smb/SmbComTransactionResponse;
.source "NetServerEnum2Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;
    }
.end annotation


# instance fields
.field private converter:I

.field lastName:Ljava/lang/String;

.field private totalAvailableEntries:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lmeizu_jcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 8
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    const/4 v7, 0x0

    .line 98
    move v4, p2

    .line 99
    .local v4, start:I
    const/4 v1, 0x0

    .line 101
    .local v1, e:Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;
    iget v5, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->numEntries:I

    new-array v5, v5, [Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;

    iput-object v5, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->results:[Lmeizu_jcifs/smb/FileEntry;

    .line 102
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v5, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->numEntries:I

    if-ge v2, v5, :cond_1

    .line 103
    iget-object v5, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->results:[Lmeizu_jcifs/smb/FileEntry;

    new-instance v1, Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;

    .end local v1           #e:Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;
    invoke-direct {v1, p0}, Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;-><init>(Lmeizu_jcifs/smb/NetServerEnum2Response;)V

    .restart local v1       #e:Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;
    aput-object v1, v5, v2

    .line 104
    const/16 v5, 0x10

    invoke-virtual {p0, p1, p2, v5, v7}, Lmeizu_jcifs/smb/NetServerEnum2Response;->readString([BIIZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;->name:Ljava/lang/String;

    .line 105
    add-int/lit8 p2, p2, 0x10

    .line 106
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, bufferIndex:I
    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xff

    iput v5, v1, Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;->versionMajor:I

    .line 107
    add-int/lit8 p2, v0, 0x1

    .end local v0           #bufferIndex:I
    .restart local p2
    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    iput v5, v1, Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;->versionMinor:I

    .line 108
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/NetServerEnum2Response;->readInt4([BI)I

    move-result v5

    iput v5, v1, Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;->type:I

    .line 109
    add-int/lit8 p2, p2, 0x4

    .line 110
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/NetServerEnum2Response;->readInt4([BI)I

    move-result v3

    .line 111
    .local v3, off:I
    add-int/lit8 p2, p2, 0x4

    .line 112
    const v5, 0xffff

    and-int/2addr v5, v3

    iget v6, p0, Lmeizu_jcifs/smb/NetServerEnum2Response;->converter:I

    sub-int v3, v5, v6

    .line 113
    add-int/2addr v3, v4

    .line 114
    const/16 v5, 0x30

    invoke-virtual {p0, p1, v3, v5, v7}, Lmeizu_jcifs/smb/NetServerEnum2Response;->readString([BIIZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;->commentOrMasterBrowser:Ljava/lang/String;

    .line 116
    sget-object v5, Lmeizu_jcifs/smb/NetServerEnum2Response;->log:Lmeizu_jcifs/util/LogStream;

    sget v5, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    .line 117
    sget-object v5, Lmeizu_jcifs/smb/NetServerEnum2Response;->log:Lmeizu_jcifs/util/LogStream;

    invoke-virtual {v5, v1}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 102
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v3           #off:I
    :cond_1
    iget v5, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->numEntries:I

    if-nez v5, :cond_2

    const/4 v5, 0x0

    :goto_1
    iput-object v5, p0, Lmeizu_jcifs/smb/NetServerEnum2Response;->lastName:Ljava/lang/String;

    .line 121
    sub-int v5, p2, v4

    return v5

    .line 119
    :cond_2
    iget-object v5, v1, Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method readParametersWireFormat([BII)I
    .locals 2
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 84
    move v0, p2

    .line 86
    .local v0, start:I
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/NetServerEnum2Response;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->status:I

    .line 87
    add-int/lit8 p2, p2, 0x2

    .line 88
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/NetServerEnum2Response;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/NetServerEnum2Response;->converter:I

    .line 89
    add-int/lit8 p2, p2, 0x2

    .line 90
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/NetServerEnum2Response;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->numEntries:I

    .line 91
    add-int/lit8 p2, p2, 0x2

    .line 92
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/NetServerEnum2Response;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/NetServerEnum2Response;->totalAvailableEntries:I

    .line 93
    add-int/lit8 p2, p2, 0x2

    .line 95
    sub-int v1, p2, v0

    return v1
.end method

.method readSetupWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetServerEnum2Response["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",converter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/NetServerEnum2Response;->converter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",entriesReturned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->numEntries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalAvailableEntries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/NetServerEnum2Response;->totalAvailableEntries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lastName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/NetServerEnum2Response;->lastName:Ljava/lang/String;

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
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

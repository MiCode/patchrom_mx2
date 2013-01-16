.class abstract Lmeizu_jcifs/smb/SmbComTransactionResponse;
.super Lmeizu_jcifs/smb/ServerMessageBlock;
.source "SmbComTransactionResponse.java"

# interfaces
.implements Ljava/util/Enumeration;


# static fields
.field private static final DISCONNECT_TID:I = 0x1

.field private static final ONE_WAY_TRANSACTION:I = 0x2

.field private static final SETUP_OFFSET:I = 0x3d


# instance fields
.field protected bufDataStart:I

.field protected bufParameterStart:I

.field dataCount:I

.field protected dataDisplacement:I

.field private dataDone:Z

.field protected dataOffset:I

.field hasMore:Z

.field isPrimary:Z

.field numEntries:I

.field private pad:I

.field private pad1:I

.field protected parameterCount:I

.field protected parameterDisplacement:I

.field protected parameterOffset:I

.field private parametersDone:Z

.field results:[Lmeizu_jcifs/smb/FileEntry;

.field protected setupCount:I

.field status:I

.field subCommand:B

.field protected totalDataCount:I

.field protected totalParameterCount:I

.field txn_buf:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-direct {p0}, Lmeizu_jcifs/smb/ServerMessageBlock;-><init>()V

    .line 48
    iput-boolean v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->hasMore:Z

    .line 49
    iput-boolean v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->isPrimary:Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    .line 59
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->errorCode:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->hasMore:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->isPrimary:Z

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->isPrimary:Z

    .line 74
    :cond_0
    return-object p0
.end method

.method readBytesWireFormat([BI)I
    .locals 5
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    iput v3, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->pad1:I

    iput v3, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->pad:I

    .line 117
    iget v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parameterCount:I

    if-lez v0, :cond_0

    .line 118
    iget v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parameterOffset:I

    iget v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int v1, p2, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->pad:I

    add-int/2addr p2, v0

    .line 119
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->bufParameterStart:I

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parameterDisplacement:I

    add-int/2addr v1, v2

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parameterCount:I

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iget v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parameterCount:I

    add-int/2addr p2, v0

    .line 123
    :cond_0
    iget v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataCount:I

    if-lez v0, :cond_1

    .line 124
    iget v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataOffset:I

    iget v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int v1, p2, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->pad1:I

    add-int/2addr p2, v0

    .line 125
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataDisplacement:I

    add-int/2addr v1, v2

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataCount:I

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataCount:I

    add-int/2addr p2, v0

    .line 134
    :cond_1
    iget-boolean v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parametersDone:Z

    if-nez v0, :cond_2

    iget v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parameterDisplacement:I

    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parameterCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    if-ne v0, v1, :cond_2

    .line 136
    iput-boolean v4, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parametersDone:Z

    .line 139
    :cond_2
    iget-boolean v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataDone:Z

    if-nez v0, :cond_3

    iget v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataDisplacement:I

    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->totalDataCount:I

    if-ne v0, v1, :cond_3

    .line 140
    iput-boolean v4, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataDone:Z

    .line 143
    :cond_3
    iget-boolean v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parametersDone:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataDone:Z

    if-eqz v0, :cond_4

    .line 144
    iput-boolean v3, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->hasMore:Z

    .line 145
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->bufParameterStart:I

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    invoke-virtual {p0, v0, v1, v2}, Lmeizu_jcifs/smb/SmbComTransactionResponse;->readParametersWireFormat([BII)I

    .line 146
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->totalDataCount:I

    invoke-virtual {p0, v0, v1, v2}, Lmeizu_jcifs/smb/SmbComTransactionResponse;->readDataWireFormat([BII)I

    .line 149
    :cond_4
    iget v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->pad:I

    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parameterCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->pad1:I

    add-int/2addr v0, v1

    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method abstract readDataWireFormat([BII)I
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 83
    move v0, p2

    .line 85
    .local v0, start:I
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComTransactionResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    .line 86
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    if-nez v1, :cond_0

    .line 87
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    .line 89
    :cond_0
    add-int/lit8 p2, p2, 0x2

    .line 90
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComTransactionResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->totalDataCount:I

    .line 91
    add-int/lit8 p2, p2, 0x4

    .line 92
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComTransactionResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parameterCount:I

    .line 93
    add-int/lit8 p2, p2, 0x2

    .line 94
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComTransactionResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parameterOffset:I

    .line 95
    add-int/lit8 p2, p2, 0x2

    .line 96
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComTransactionResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parameterDisplacement:I

    .line 97
    add-int/lit8 p2, p2, 0x2

    .line 98
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComTransactionResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataCount:I

    .line 99
    add-int/lit8 p2, p2, 0x2

    .line 100
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComTransactionResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataOffset:I

    .line 101
    add-int/lit8 p2, p2, 0x2

    .line 102
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/SmbComTransactionResponse;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataDisplacement:I

    .line 103
    add-int/lit8 p2, p2, 0x2

    .line 104
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->setupCount:I

    .line 105
    add-int/lit8 p2, p2, 0x2

    .line 106
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->setupCount:I

    if-eqz v1, :cond_1

    .line 107
    sget-object v1, Lmeizu_jcifs/smb/SmbComTransactionResponse;->log:Lmeizu_jcifs/util/LogStream;

    sget v1, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 108
    sget-object v1, Lmeizu_jcifs/smb/SmbComTransactionResponse;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupCount is not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->setupCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 111
    :cond_1
    sub-int v1, p2, v0

    return v1
.end method

.method abstract readParametersWireFormat([BII)I
.end method

.method abstract readSetupWireFormat([BII)I
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-super {p0}, Lmeizu_jcifs/smb/ServerMessageBlock;->reset()V

    .line 63
    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->hasMore:Z

    iput-boolean v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->isPrimary:Z

    .line 65
    iput-boolean v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataDone:Z

    iput-boolean v1, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parametersDone:Z

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lmeizu_jcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalParameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalDataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->totalDataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parameterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parameterOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->parameterDisplacement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->dataDisplacement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",setupCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->setupCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->pad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pad1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->pad1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBytesWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method abstract writeDataWireFormat([BI)I
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method abstract writeParametersWireFormat([BI)I
.end method

.method abstract writeSetupWireFormat([BI)I
.end method

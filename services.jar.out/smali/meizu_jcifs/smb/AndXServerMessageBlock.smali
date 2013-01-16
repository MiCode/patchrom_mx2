.class abstract Lmeizu_jcifs/smb/AndXServerMessageBlock;
.super Lmeizu_jcifs/smb/ServerMessageBlock;
.source "AndXServerMessageBlock.java"


# static fields
.field private static final ANDX_COMMAND_OFFSET:I = 0x1

.field private static final ANDX_OFFSET_OFFSET:I = 0x3

.field private static final ANDX_RESERVED_OFFSET:I = 0x2


# instance fields
.field andx:Lmeizu_jcifs/smb/ServerMessageBlock;

.field private andxCommand:B

.field private andxOffset:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lmeizu_jcifs/smb/ServerMessageBlock;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput-byte v0, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andxCommand:B

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andxOffset:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    .line 37
    return-void
.end method

.method constructor <init>(Lmeizu_jcifs/smb/ServerMessageBlock;)V
    .locals 1
    .parameter "andx"

    .prologue
    .line 38
    invoke-direct {p0}, Lmeizu_jcifs/smb/ServerMessageBlock;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput-byte v0, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andxCommand:B

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andxOffset:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    .line 39
    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    .line 41
    iget-byte v0, p1, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    iput-byte v0, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andxCommand:B

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method decode([BI)I
    .locals 2
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 83
    iput p2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->headerStart:I

    move v0, p2

    .line 85
    .local v0, start:I
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->readHeaderWireFormat([BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 86
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->readAndXWireFormat([BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 88
    sub-int v1, p2, v0

    iput v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->length:I

    .line 89
    iget v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->length:I

    return v1
.end method

.method encode([BI)I
    .locals 7
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 62
    iput p2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->headerStart:I

    move v6, p2

    .line 64
    .local v6, start:I
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->writeHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr p2, v0

    .line 65
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->writeAndXWireFormat([BI)I

    move-result v0

    add-int/2addr p2, v0

    .line 66
    sub-int v0, p2, v6

    iput v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->length:I

    .line 68
    iget-object v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->digest:Lmeizu_jcifs/smb/SigningDigest;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->digest:Lmeizu_jcifs/smb/SigningDigest;

    iget v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->headerStart:I

    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->length:I

    iget-object v5, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->response:Lmeizu_jcifs/smb/ServerMessageBlock;

    move-object v1, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lmeizu_jcifs/smb/SigningDigest;->sign([BIILmeizu_jcifs/smb/ServerMessageBlock;Lmeizu_jcifs/smb/ServerMessageBlock;)V

    .line 72
    :cond_0
    iget v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->length:I

    return v0
.end method

.method getBatchLimit(B)I
    .locals 1
    .parameter "command"

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method readAndXWireFormat([BI)I
    .locals 7
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    .line 185
    move v2, p2

    .line 187
    .local v2, start:I
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, bufferIndex:I
    aget-byte v3, p1, p2

    iput v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    .line 189
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    if-eqz v3, :cond_9

    .line 195
    aget-byte v3, p1, v0

    iput-byte v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andxCommand:B

    .line 196
    add-int/lit8 v3, v0, 0x2

    invoke-static {p1, v3}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->readInt2([BI)I

    move-result v3

    iput v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andxOffset:I

    .line 198
    iget v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andxOffset:I

    if-nez v3, :cond_0

    .line 199
    iput-byte v5, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andxCommand:B

    .line 207
    :cond_0
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    if-le v3, v6, :cond_1

    .line 208
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, p1, v3}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->readParameterWordsWireFormat([BI)I

    .line 216
    iget-byte v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    const/16 v4, -0x5e

    if-ne v3, v4, :cond_1

    move-object v3, p0

    check-cast v3, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;

    iget-boolean v3, v3, Lmeizu_jcifs/smb/SmbComNTCreateAndXResponse;->isExtended:Z

    if-eqz v3, :cond_1

    .line 217
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    .line 220
    :cond_1
    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v4, v4, 0x2

    add-int p2, v3, v4

    .line 223
    .end local v0           #bufferIndex:I
    .restart local p2
    :goto_0
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->readInt2([BI)I

    move-result v3

    iput v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/lit8 p2, p2, 0x2

    .line 225
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    if-eqz v3, :cond_2

    .line 227
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->readBytesWireFormat([BI)I

    move-result v1

    .line 228
    .local v1, n:I
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr p2, v3

    .line 238
    .end local v1           #n:I
    :cond_2
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->errorCode:I

    if-nez v3, :cond_3

    iget-byte v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andxCommand:B

    if-ne v3, v5, :cond_4

    .line 239
    :cond_3
    iput-byte v5, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andxCommand:B

    .line 240
    const/4 v3, 0x0

    iput-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    .line 296
    :goto_1
    sub-int v3, p2, v2

    return v3

    .line 241
    :cond_4
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    if-nez v3, :cond_5

    .line 242
    iput-byte v5, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andxCommand:B

    .line 243
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "no andx command supplied with response"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 250
    :cond_5
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->headerStart:I

    iget v4, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andxOffset:I

    add-int p2, v3, v4

    .line 252
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->headerStart:I

    iput v4, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->headerStart:I

    .line 253
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget-byte v4, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andxCommand:B

    iput-byte v4, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 254
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->errorCode:I

    iput v4, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->errorCode:I

    .line 255
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget-byte v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->flags:B

    iput-byte v4, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->flags:B

    .line 256
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->flags2:I

    iput v4, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->flags2:I

    .line 257
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->tid:I

    iput v4, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->tid:I

    .line 258
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->pid:I

    iput v4, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->pid:I

    .line 259
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->uid:I

    iput v4, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->uid:I

    .line 260
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->mid:I

    iput v4, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->mid:I

    .line 261
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget-boolean v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->useUnicode:Z

    iput-boolean v4, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 263
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    instance-of v3, v3, Lmeizu_jcifs/smb/AndXServerMessageBlock;

    if-eqz v3, :cond_7

    .line 264
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    check-cast v3, Lmeizu_jcifs/smb/AndXServerMessageBlock;

    invoke-virtual {v3, p1, p2}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->readAndXWireFormat([BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 293
    :cond_6
    :goto_2
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->received:Z

    goto :goto_1

    .line 272
    :cond_7
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #bufferIndex:I
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget v3, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 274
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget v3, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    if-eqz v3, :cond_8

    .line 280
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget v3, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    if-le v3, v6, :cond_8

    .line 281
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    invoke-virtual {v3, p1, v0}, Lmeizu_jcifs/smb/ServerMessageBlock;->readParameterWordsWireFormat([BI)I

    move-result v3

    add-int p2, v0, v3

    .line 285
    .end local v0           #bufferIndex:I
    .restart local p2
    :goto_3
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    invoke-static {p1, p2}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->readInt2([BI)I

    move-result v4

    iput v4, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    .line 286
    add-int/lit8 p2, p2, 0x2

    .line 288
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget v3, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    if-eqz v3, :cond_6

    .line 289
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    invoke-virtual {v3, p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readBytesWireFormat([BI)I

    .line 290
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget v3, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr p2, v3

    goto :goto_2

    .end local p2
    .restart local v0       #bufferIndex:I
    :cond_8
    move p2, v0

    .end local v0           #bufferIndex:I
    .restart local p2
    goto :goto_3

    .end local p2
    .restart local v0       #bufferIndex:I
    :cond_9
    move p2, v0

    .end local v0           #bufferIndex:I
    .restart local p2
    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 299
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lmeizu_jcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",andxCommand=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andxCommand:B

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",andxOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andxOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeAndXWireFormat([BI)I
    .locals 8
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/16 v5, -0x22

    .line 92
    move v2, p2

    .line 94
    .local v2, start:I
    add-int/lit8 v3, v2, 0x3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, p1, v3}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->writeParameterWordsWireFormat([BI)I

    move-result v3

    iput v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    .line 96
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    .line 97
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr p2, v3

    .line 98
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    .line 99
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 101
    add-int/lit8 v3, p2, 0x2

    invoke-virtual {p0, p1, v3}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->writeBytesWireFormat([BI)I

    move-result v3

    iput v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    .line 102
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, dstIndex:I
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 103
    add-int/lit8 p2, v1, 0x1

    .end local v1           #dstIndex:I
    .restart local p2
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 104
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr p2, v3

    .line 116
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    if-eqz v3, :cond_0

    sget-boolean v3, Lmeizu_jcifs/smb/AndXServerMessageBlock;->USE_BATCHING:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->batchLevel:I

    iget-object v4, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget-byte v4, v4, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    invoke-virtual {p0, v4}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->getBatchLimit(B)I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 118
    :cond_0
    iput-byte v6, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andxCommand:B

    .line 119
    const/4 v3, 0x0

    iput-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    .line 121
    add-int/lit8 v3, v2, 0x1

    aput-byte v6, p1, v3

    .line 122
    add-int/lit8 v3, v2, 0x2

    aput-byte v7, p1, v3

    .line 125
    add-int/lit8 v3, v2, 0x3

    aput-byte v5, p1, v3

    .line 126
    add-int/lit8 v3, v2, 0x3

    add-int/lit8 v3, v3, 0x1

    aput-byte v5, p1, v3

    .line 129
    sub-int v3, p2, v2

    .line 182
    :goto_0
    return v3

    .line 139
    :cond_1
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->batchLevel:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->batchLevel:I

    .line 142
    add-int/lit8 v3, v2, 0x1

    iget-byte v4, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andxCommand:B

    aput-byte v4, p1, v3

    .line 143
    add-int/lit8 v3, v2, 0x2

    aput-byte v7, p1, v3

    .line 144
    iget v3, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int v3, p2, v3

    iput v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andxOffset:I

    .line 145
    iget v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andxOffset:I

    int-to-long v3, v3

    add-int/lit8 v5, v2, 0x3

    invoke-static {v3, v4, p1, v5}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->writeInt2(J[BI)V

    .line 147
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget-boolean v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->useUnicode:Z

    iput-boolean v4, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 148
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    instance-of v3, v3, Lmeizu_jcifs/smb/AndXServerMessageBlock;

    if-eqz v3, :cond_2

    .line 165
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->uid:I

    iput v4, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->uid:I

    .line 166
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    check-cast v3, Lmeizu_jcifs/smb/AndXServerMessageBlock;

    invoke-virtual {v3, p1, p2}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->writeAndXWireFormat([BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 182
    :goto_1
    sub-int v3, p2, v2

    goto :goto_0

    .line 170
    :cond_2
    move v0, p2

    .line 171
    .local v0, andxStart:I
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget-object v4, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    invoke-virtual {v4, p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->writeParameterWordsWireFormat([BI)I

    move-result v4

    iput v4, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    .line 172
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget v3, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr p2, v3

    .line 173
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget v4, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    .line 174
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget v3, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->wordCount:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 176
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget-object v4, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    add-int/lit8 v5, p2, 0x2

    invoke-virtual {v4, p1, v5}, Lmeizu_jcifs/smb/ServerMessageBlock;->writeBytesWireFormat([BI)I

    move-result v4

    iput v4, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    .line 177
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #dstIndex:I
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget v3, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 178
    add-int/lit8 p2, v1, 0x1

    .end local v1           #dstIndex:I
    .restart local p2
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget v3, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 179
    iget-object v3, p0, Lmeizu_jcifs/smb/AndXServerMessageBlock;->andx:Lmeizu_jcifs/smb/ServerMessageBlock;

    iget v3, v3, Lmeizu_jcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr p2, v3

    goto :goto_1
.end method

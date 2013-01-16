.class abstract Lmeizu_jcifs/netbios/NameServicePacket;
.super Ljava/lang/Object;
.source "NameServicePacket.java"


# static fields
.field static final A:I = 0x1

.field static final ACT_ERR:I = 0x6

.field static final ADDITIONAL_OFFSET:I = 0xa

.field static final ANSWER_OFFSET:I = 0x6

.field static final AUTHORITY_OFFSET:I = 0x8

.field static final CFT_ERR:I = 0x7

.field static final FMT_ERR:I = 0x1

.field static final HEADER_LENGTH:I = 0xc

.field static final IMP_ERR:I = 0x4

.field static final IN:I = 0x1

.field static final NB:I = 0x20

.field static final NBSTAT:I = 0x21

.field static final NBSTAT_IN:I = 0x210001

.field static final NB_IN:I = 0x200001

.field static final NS:I = 0x2

.field static final NULL:I = 0xa

.field static final OPCODE_OFFSET:I = 0x2

.field static final QUERY:I = 0x0

.field static final QUESTION_OFFSET:I = 0x4

.field static final RFS_ERR:I = 0x5

.field static final SRV_ERR:I = 0x2

.field static final WACK:I = 0x7


# instance fields
.field additionalCount:I

.field addr:Ljava/net/InetAddress;

.field addrEntry:[Lmeizu_jcifs/netbios/NbtAddress;

.field addrIndex:I

.field answerCount:I

.field authorityCount:I

.field isAuthAnswer:Z

.field isBroadcast:Z

.field isRecurAvailable:Z

.field isRecurDesired:Z

.field isResponse:Z

.field isTruncated:Z

.field nameTrnId:I

.field opCode:I

.field questionClass:I

.field questionCount:I

.field questionName:Lmeizu_jcifs/netbios/Name;

.field questionType:I

.field rDataLength:I

.field received:Z

.field recordClass:I

.field recordName:Lmeizu_jcifs/netbios/Name;

.field recordType:I

.field resultCode:I

.field ttl:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-boolean v0, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isRecurDesired:Z

    .line 115
    iput-boolean v0, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 116
    iput v0, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionCount:I

    .line 117
    iput v0, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionClass:I

    .line 118
    return-void
.end method

.method static readInt2([BI)I
    .locals 2
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 68
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method static readInt4([BI)I
    .locals 2
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 72
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method static readNameTrnId([BI)I
    .locals 1
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 79
    invoke-static {p0, p1}, Lmeizu_jcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    return v0
.end method

.method static writeInt2(I[BI)V
    .locals 2
    .parameter "val"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 58
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 59
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 60
    return-void
.end method

.method static writeInt4(I[BI)V
    .locals 2
    .parameter "val"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 62
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 63
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 64
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #dstIndex:I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 65
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 66
    return-void
.end method


# virtual methods
.method abstract readBodyWireFormat([BI)I
.end method

.method readHeaderWireFormat([BI)I
    .locals 3
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 151
    invoke-static {p1, p2}, Lmeizu_jcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/netbios/NameServicePacket;->nameTrnId:I

    .line 152
    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isResponse:Z

    .line 153
    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x78

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lmeizu_jcifs/netbios/NameServicePacket;->opCode:I

    .line 154
    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isAuthAnswer:Z

    .line 155
    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isTruncated:Z

    .line 156
    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isRecurDesired:Z

    .line 157
    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isRecurAvailable:Z

    .line 159
    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isBroadcast:Z

    .line 160
    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lmeizu_jcifs/netbios/NameServicePacket;->resultCode:I

    .line 161
    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lmeizu_jcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionCount:I

    .line 162
    add-int/lit8 v0, p2, 0x6

    invoke-static {p1, v0}, Lmeizu_jcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/netbios/NameServicePacket;->answerCount:I

    .line 163
    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Lmeizu_jcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/netbios/NameServicePacket;->authorityCount:I

    .line 164
    add-int/lit8 v0, p2, 0xa

    invoke-static {p1, v0}, Lmeizu_jcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/netbios/NameServicePacket;->additionalCount:I

    .line 165
    const/16 v0, 0xc

    return v0

    :cond_0
    move v0, v2

    .line 152
    goto :goto_0

    :cond_1
    move v0, v2

    .line 154
    goto :goto_1

    :cond_2
    move v0, v2

    .line 155
    goto :goto_2

    :cond_3
    move v0, v2

    .line 156
    goto :goto_3

    :cond_4
    move v0, v2

    .line 157
    goto :goto_4

    :cond_5
    move v1, v2

    .line 159
    goto :goto_5
.end method

.method readQuestionSectionWireFormat([BI)I
    .locals 2
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 177
    move v0, p2

    .line 178
    .local v0, start:I
    iget-object v1, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionName:Lmeizu_jcifs/netbios/Name;

    invoke-virtual {v1, p1, p2}, Lmeizu_jcifs/netbios/Name;->readWireFormat([BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 179
    invoke-static {p1, p2}, Lmeizu_jcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionType:I

    .line 180
    add-int/lit8 p2, p2, 0x2

    .line 181
    invoke-static {p1, p2}, Lmeizu_jcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionClass:I

    .line 182
    add-int/lit8 p2, p2, 0x2

    .line 183
    sub-int v1, p2, v0

    return v1
.end method

.method abstract readRDataWireFormat([BI)I
.end method

.method readResourceRecordWireFormat([BI)I
    .locals 4
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 205
    move v1, p2

    .line 208
    .local v1, start:I
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xc0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_0

    .line 209
    iget-object v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionName:Lmeizu_jcifs/netbios/Name;

    iput-object v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->recordName:Lmeizu_jcifs/netbios/Name;

    .line 210
    add-int/lit8 p2, p2, 0x2

    .line 214
    :goto_0
    invoke-static {p1, p2}, Lmeizu_jcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->recordType:I

    .line 215
    add-int/lit8 p2, p2, 0x2

    .line 216
    invoke-static {p1, p2}, Lmeizu_jcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->recordClass:I

    .line 217
    add-int/lit8 p2, p2, 0x2

    .line 218
    invoke-static {p1, p2}, Lmeizu_jcifs/netbios/NameServicePacket;->readInt4([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->ttl:I

    .line 219
    add-int/lit8 p2, p2, 0x4

    .line 220
    invoke-static {p1, p2}, Lmeizu_jcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->rDataLength:I

    .line 221
    add-int/lit8 p2, p2, 0x2

    .line 223
    iget v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->rDataLength:I

    div-int/lit8 v2, v2, 0x6

    new-array v2, v2, [Lmeizu_jcifs/netbios/NbtAddress;

    iput-object v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->addrEntry:[Lmeizu_jcifs/netbios/NbtAddress;

    .line 224
    iget v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->rDataLength:I

    add-int v0, p2, v2

    .line 225
    .local v0, end:I
    const/4 v2, 0x0

    iput v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->addrIndex:I

    :goto_1
    if-ge p2, v0, :cond_1

    .line 226
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/netbios/NameServicePacket;->readRDataWireFormat([BI)I

    move-result v2

    add-int/2addr p2, v2

    .line 225
    iget v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->addrIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->addrIndex:I

    goto :goto_1

    .line 212
    .end local v0           #end:I
    :cond_0
    iget-object v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->recordName:Lmeizu_jcifs/netbios/Name;

    invoke-virtual {v2, p1, p2}, Lmeizu_jcifs/netbios/Name;->readWireFormat([BI)I

    move-result v2

    add-int/2addr p2, v2

    goto :goto_0

    .line 229
    .restart local v0       #end:I
    :cond_1
    sub-int v2, p2, v1

    return v2
.end method

.method readWireFormat([BI)I
    .locals 2
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 127
    move v0, p2

    .line 128
    .local v0, start:I
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/netbios/NameServicePacket;->readHeaderWireFormat([BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 129
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/netbios/NameServicePacket;->readBodyWireFormat([BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 130
    sub-int v1, p2, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x4

    .line 245
    iget v4, p0, Lmeizu_jcifs/netbios/NameServicePacket;->opCode:I

    sparse-switch v4, :sswitch_data_0

    .line 253
    iget v4, p0, Lmeizu_jcifs/netbios/NameServicePacket;->opCode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, opCodeString:Ljava/lang/String;
    :goto_0
    iget v4, p0, Lmeizu_jcifs/netbios/NameServicePacket;->resultCode:I

    packed-switch v4, :pswitch_data_0

    .line 276
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lmeizu_jcifs/netbios/NameServicePacket;->resultCode:I

    invoke-static {v5, v9}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, resultCodeString:Ljava/lang/String;
    :goto_1
    iget v4, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionType:I

    packed-switch v4, :pswitch_data_1

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionType:I

    invoke-static {v5, v8}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, questionTypeString:Ljava/lang/String;
    :goto_2
    iget v4, p0, Lmeizu_jcifs/netbios/NameServicePacket;->recordType:I

    sparse-switch v4, :sswitch_data_1

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lmeizu_jcifs/netbios/NameServicePacket;->recordType:I

    invoke-static {v5, v8}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, recordTypeString:Ljava/lang/String;
    :goto_3
    new-instance v5, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nameTrnId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lmeizu_jcifs/netbios/NameServicePacket;->nameTrnId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",isResponse="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isResponse:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",opCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",isAuthAnswer="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isAuthAnswer:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",isTruncated="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isTruncated:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",isRecurAvailable="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isRecurAvailable:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",isRecurDesired="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isRecurDesired:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",isBroadcast="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isBroadcast:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",resultCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lmeizu_jcifs/netbios/NameServicePacket;->resultCode:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",questionCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",answerCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lmeizu_jcifs/netbios/NameServicePacket;->answerCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",authorityCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lmeizu_jcifs/netbios/NameServicePacket;->authorityCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",additionalCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lmeizu_jcifs/netbios/NameServicePacket;->additionalCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",questionName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionName:Lmeizu_jcifs/netbios/Name;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",questionType="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",questionClass="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v4, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionClass:I

    if-ne v4, v9, :cond_0

    const-string v4, "IN"

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",recordName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lmeizu_jcifs/netbios/NameServicePacket;->recordName:Lmeizu_jcifs/netbios/Name;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",recordType="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",recordClass="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v4, p0, Lmeizu_jcifs/netbios/NameServicePacket;->recordClass:I

    if-ne v4, v9, :cond_1

    const-string v4, "IN"

    :goto_5
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",ttl="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lmeizu_jcifs/netbios/NameServicePacket;->ttl:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",rDataLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lmeizu_jcifs/netbios/NameServicePacket;->rDataLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v5

    .line 247
    .end local v0           #opCodeString:Ljava/lang/String;
    .end local v1           #questionTypeString:Ljava/lang/String;
    .end local v2           #recordTypeString:Ljava/lang/String;
    .end local v3           #resultCodeString:Ljava/lang/String;
    :sswitch_0
    const-string v0, "QUERY"

    .line 248
    .restart local v0       #opCodeString:Ljava/lang/String;
    goto/16 :goto_0

    .line 250
    .end local v0           #opCodeString:Ljava/lang/String;
    :sswitch_1
    const-string v0, "WACK"

    .line 251
    .restart local v0       #opCodeString:Ljava/lang/String;
    goto/16 :goto_0

    .line 258
    :pswitch_1
    const-string v3, "FMT_ERR"

    .line 259
    .restart local v3       #resultCodeString:Ljava/lang/String;
    goto/16 :goto_1

    .line 261
    .end local v3           #resultCodeString:Ljava/lang/String;
    :pswitch_2
    const-string v3, "SRV_ERR"

    .line 262
    .restart local v3       #resultCodeString:Ljava/lang/String;
    goto/16 :goto_1

    .line 264
    .end local v3           #resultCodeString:Ljava/lang/String;
    :pswitch_3
    const-string v3, "IMP_ERR"

    .line 265
    .restart local v3       #resultCodeString:Ljava/lang/String;
    goto/16 :goto_1

    .line 267
    .end local v3           #resultCodeString:Ljava/lang/String;
    :pswitch_4
    const-string v3, "RFS_ERR"

    .line 268
    .restart local v3       #resultCodeString:Ljava/lang/String;
    goto/16 :goto_1

    .line 270
    .end local v3           #resultCodeString:Ljava/lang/String;
    :pswitch_5
    const-string v3, "ACT_ERR"

    .line 271
    .restart local v3       #resultCodeString:Ljava/lang/String;
    goto/16 :goto_1

    .line 273
    .end local v3           #resultCodeString:Ljava/lang/String;
    :pswitch_6
    const-string v3, "CFT_ERR"

    .line 274
    .restart local v3       #resultCodeString:Ljava/lang/String;
    goto/16 :goto_1

    .line 281
    :pswitch_7
    const-string v1, "NB"

    .line 282
    .restart local v1       #questionTypeString:Ljava/lang/String;
    goto/16 :goto_2

    .line 284
    .end local v1           #questionTypeString:Ljava/lang/String;
    :pswitch_8
    const-string v1, "NBSTAT"

    .line 285
    .restart local v1       #questionTypeString:Ljava/lang/String;
    goto/16 :goto_2

    .line 292
    :sswitch_2
    const-string v2, "A"

    .line 293
    .restart local v2       #recordTypeString:Ljava/lang/String;
    goto/16 :goto_3

    .line 295
    .end local v2           #recordTypeString:Ljava/lang/String;
    :sswitch_3
    const-string v2, "NS"

    .line 296
    .restart local v2       #recordTypeString:Ljava/lang/String;
    goto/16 :goto_3

    .line 298
    .end local v2           #recordTypeString:Ljava/lang/String;
    :sswitch_4
    const-string v2, "NULL"

    .line 299
    .restart local v2       #recordTypeString:Ljava/lang/String;
    goto/16 :goto_3

    .line 301
    .end local v2           #recordTypeString:Ljava/lang/String;
    :sswitch_5
    const-string v2, "NB"

    .line 302
    .restart local v2       #recordTypeString:Ljava/lang/String;
    goto/16 :goto_3

    .line 304
    .end local v2           #recordTypeString:Ljava/lang/String;
    :sswitch_6
    const-string v2, "NBSTAT"

    .line 305
    .restart local v2       #recordTypeString:Ljava/lang/String;
    goto/16 :goto_3

    .line 311
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionClass:I

    invoke-static {v7, v8}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lmeizu_jcifs/netbios/NameServicePacket;->recordClass:I

    invoke-static {v7, v8}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 245
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch

    .line 256
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 279
    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 290
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0xa -> :sswitch_4
        0x20 -> :sswitch_5
        0x21 -> :sswitch_6
    .end sparse-switch
.end method

.method abstract writeBodyWireFormat([BI)I
.end method

.method writeHeaderWireFormat([BI)I
    .locals 6
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/16 v2, 0x80

    const/4 v3, 0x0

    .line 134
    move v0, p2

    .line 135
    .local v0, start:I
    iget v1, p0, Lmeizu_jcifs/netbios/NameServicePacket;->nameTrnId:I

    invoke-static {v1, p1, p2}, Lmeizu_jcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 136
    add-int/lit8 v4, p2, 0x2

    iget-boolean v1, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isResponse:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iget v5, p0, Lmeizu_jcifs/netbios/NameServicePacket;->opCode:I

    shl-int/lit8 v5, v5, 0x3

    and-int/lit8 v5, v5, 0x78

    add-int/2addr v5, v1

    iget-boolean v1, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isAuthAnswer:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    :goto_1
    add-int/2addr v5, v1

    iget-boolean v1, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isTruncated:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    :goto_2
    add-int/2addr v5, v1

    iget-boolean v1, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isRecurDesired:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_3
    add-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    .line 141
    add-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x1

    iget-boolean v4, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isRecurAvailable:Z

    if-eqz v4, :cond_5

    :goto_4
    iget-boolean v4, p0, Lmeizu_jcifs/netbios/NameServicePacket;->isBroadcast:Z

    if-eqz v4, :cond_0

    const/16 v3, 0x10

    :cond_0
    add-int/2addr v2, v3

    iget v3, p0, Lmeizu_jcifs/netbios/NameServicePacket;->resultCode:I

    and-int/lit8 v3, v3, 0xf

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 144
    iget v1, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionCount:I

    add-int/lit8 v2, v0, 0x4

    invoke-static {v1, p1, v2}, Lmeizu_jcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 145
    iget v1, p0, Lmeizu_jcifs/netbios/NameServicePacket;->answerCount:I

    add-int/lit8 v2, v0, 0x6

    invoke-static {v1, p1, v2}, Lmeizu_jcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 146
    iget v1, p0, Lmeizu_jcifs/netbios/NameServicePacket;->authorityCount:I

    add-int/lit8 v2, v0, 0x8

    invoke-static {v1, p1, v2}, Lmeizu_jcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 147
    iget v1, p0, Lmeizu_jcifs/netbios/NameServicePacket;->additionalCount:I

    add-int/lit8 v2, v0, 0xa

    invoke-static {v1, p1, v2}, Lmeizu_jcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 148
    const/16 v1, 0xc

    return v1

    :cond_1
    move v1, v3

    .line 136
    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    move v2, v3

    .line 141
    goto :goto_4
.end method

.method writeQuestionSectionWireFormat([BI)I
    .locals 2
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 168
    move v0, p2

    .line 169
    .local v0, start:I
    iget-object v1, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionName:Lmeizu_jcifs/netbios/Name;

    invoke-virtual {v1, p1, p2}, Lmeizu_jcifs/netbios/Name;->writeWireFormat([BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 170
    iget v1, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionType:I

    invoke-static {v1, p1, p2}, Lmeizu_jcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 171
    add-int/lit8 p2, p2, 0x2

    .line 172
    iget v1, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionClass:I

    invoke-static {v1, p1, p2}, Lmeizu_jcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 173
    add-int/lit8 p2, p2, 0x2

    .line 174
    sub-int v1, p2, v0

    return v1
.end method

.method abstract writeRDataWireFormat([BI)I
.end method

.method writeResourceRecordWireFormat([BI)I
    .locals 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 186
    move v1, p2

    .line 187
    .local v1, start:I
    iget-object v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->recordName:Lmeizu_jcifs/netbios/Name;

    iget-object v3, p0, Lmeizu_jcifs/netbios/NameServicePacket;->questionName:Lmeizu_jcifs/netbios/Name;

    if-ne v2, v3, :cond_0

    .line 188
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    const/16 v2, -0x40

    aput-byte v2, p1, p2

    .line 189
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    const/16 v2, 0xc

    aput-byte v2, p1, v0

    .line 193
    :goto_0
    iget v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->recordType:I

    invoke-static {v2, p1, p2}, Lmeizu_jcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 194
    add-int/lit8 p2, p2, 0x2

    .line 195
    iget v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->recordClass:I

    invoke-static {v2, p1, p2}, Lmeizu_jcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 196
    add-int/lit8 p2, p2, 0x2

    .line 197
    iget v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->ttl:I

    invoke-static {v2, p1, p2}, Lmeizu_jcifs/netbios/NameServicePacket;->writeInt4(I[BI)V

    .line 198
    add-int/lit8 p2, p2, 0x4

    .line 199
    add-int/lit8 v2, p2, 0x2

    invoke-virtual {p0, p1, v2}, Lmeizu_jcifs/netbios/NameServicePacket;->writeRDataWireFormat([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->rDataLength:I

    .line 200
    iget v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->rDataLength:I

    invoke-static {v2, p1, p2}, Lmeizu_jcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    .line 201
    iget v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->rDataLength:I

    add-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    .line 202
    sub-int v2, p2, v1

    return v2

    .line 191
    :cond_0
    iget-object v2, p0, Lmeizu_jcifs/netbios/NameServicePacket;->recordName:Lmeizu_jcifs/netbios/Name;

    invoke-virtual {v2, p1, p2}, Lmeizu_jcifs/netbios/Name;->writeWireFormat([BI)I

    move-result v2

    add-int/2addr p2, v2

    goto :goto_0
.end method

.method writeWireFormat([BI)I
    .locals 2
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 121
    move v0, p2

    .line 122
    .local v0, start:I
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/netbios/NameServicePacket;->writeHeaderWireFormat([BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 123
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/netbios/NameServicePacket;->writeBodyWireFormat([BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 124
    sub-int v1, p2, v0

    return v1
.end method

.class abstract Lmeizu_jcifs/smb/SmbComTransaction;
.super Lmeizu_jcifs/smb/ServerMessageBlock;
.source "SmbComTransaction.java"

# interfaces
.implements Ljava/util/Enumeration;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_MAX_DATA_COUNT:I = 0x0

.field private static final DISCONNECT_TID:I = 0x1

.field static final NET_SERVER_ENUM2:I = 0x68

.field static final NET_SERVER_ENUM3:I = 0xd7

.field static final NET_SHARE_ENUM:I = 0x0

.field private static final ONE_WAY_TRANSACTION:I = 0x2

.field private static final PADDING_SIZE:I = 0x2

.field private static final PRIMARY_SETUP_OFFSET:I = 0x3d

.field private static final SECONDARY_PARAMETER_OFFSET:I = 0x33

.field static final TRANS2_FIND_FIRST2:B = 0x1t

.field static final TRANS2_FIND_NEXT2:B = 0x2t

.field static final TRANS2_GET_DFS_REFERRAL:B = 0x10t

.field static final TRANS2_QUERY_FS_INFORMATION:B = 0x3t

.field static final TRANS2_QUERY_PATH_INFORMATION:B = 0x5t

.field static final TRANS2_SET_FILE_INFORMATION:B = 0x8t

.field static final TRANSACTION_BUF_SIZE:I = 0xffff

.field static final TRANS_CALL_NAMED_PIPE:B = 0x54t

.field static final TRANS_PEEK_NAMED_PIPE:B = 0x23t

.field static final TRANS_TRANSACT_NAMED_PIPE:B = 0x26t

.field static final TRANS_WAIT_NAMED_PIPE:B = 0x53t


# instance fields
.field private bufDataOffset:I

.field private bufParameterOffset:I

.field protected dataCount:I

.field protected dataDisplacement:I

.field protected dataOffset:I

.field private fid:I

.field private flags:I

.field private hasMore:Z

.field private isPrimary:Z

.field maxBufferSize:I

.field maxDataCount:I

.field maxParameterCount:I

.field maxSetupCount:B

.field name:Ljava/lang/String;

.field private pad:I

.field private pad1:I

.field protected parameterCount:I

.field protected parameterDisplacement:I

.field protected parameterOffset:I

.field protected primarySetupOffset:I

.field protected secondaryParameterOffset:I

.field setupCount:I

.field subCommand:B

.field timeout:I

.field totalDataCount:I

.field totalParameterCount:I

.field txn_buf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-string v0, "meizu_jcifs.smb.client.transaction_buf_size"

    const v1, 0xffff

    invoke-static {v0, v1}, Lmeizu_jcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit16 v0, v0, -0x200

    sput v0, Lmeizu_jcifs/smb/SmbComTransaction;->DEFAULT_MAX_DATA_COUNT:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lmeizu_jcifs/smb/ServerMessageBlock;-><init>()V

    .line 40
    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->flags:I

    .line 42
    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad:I

    .line 43
    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad1:I

    .line 44
    iput-boolean v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->hasMore:Z

    .line 45
    iput-boolean v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->isPrimary:Z

    .line 79
    sget v0, Lmeizu_jcifs/smb/SmbComTransaction;->DEFAULT_MAX_DATA_COUNT:I

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 81
    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->timeout:I

    .line 82
    iput v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->setupCount:I

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    .line 90
    const/16 v0, 0x400

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 91
    const/16 v0, 0x3d

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->primarySetupOffset:I

    .line 92
    const/16 v0, 0x33

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->secondaryParameterOffset:I

    .line 93
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->hasMore:Z

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 5

    .prologue
    const/16 v4, -0x60

    const/4 v2, 0x0

    .line 106
    iget-boolean v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->isPrimary:Z

    if-eqz v1, :cond_5

    .line 107
    iput-boolean v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->isPrimary:Z

    .line 109
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->primarySetupOffset:I

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->setupCount:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 110
    iget-byte v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    if-eq v1, v4, :cond_2

    .line 111
    iget-byte v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    const/16 v3, 0x25

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lmeizu_jcifs/smb/SmbComTransaction;->isResponse()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterOffset:I

    iget-object v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    iget v4, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterOffset:I

    invoke-virtual {p0, v3, v4}, Lmeizu_jcifs/smb/SmbComTransaction;->stringWireLength(Ljava/lang/String;I)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 117
    :cond_0
    :goto_0
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterOffset:I

    rem-int/lit8 v1, v1, 0x2

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad:I

    .line 118
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad:I

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad:I

    .line 119
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterOffset:I

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad:I

    add-int/2addr v1, v3

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 121
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->txn_buf:[B

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->bufParameterOffset:I

    invoke-virtual {p0, v1, v3}, Lmeizu_jcifs/smb/SmbComTransaction;->writeParametersWireFormat([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->totalParameterCount:I

    .line 122
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->totalParameterCount:I

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->bufDataOffset:I

    .line 124
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxBufferSize:I

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterOffset:I

    sub-int v0, v1, v3

    .line 125
    .local v0, available:I
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->totalParameterCount:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterCount:I

    .line 126
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterCount:I

    sub-int/2addr v0, v1

    .line 128
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterOffset:I

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataOffset:I

    .line 129
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataOffset:I

    rem-int/lit8 v1, v1, 0x2

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad1:I

    .line 130
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad1:I

    if-nez v1, :cond_4

    move v1, v2

    :goto_2
    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad1:I

    .line 131
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataOffset:I

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad1:I

    add-int/2addr v1, v3

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataOffset:I

    .line 133
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->txn_buf:[B

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->bufDataOffset:I

    invoke-virtual {p0, v1, v3}, Lmeizu_jcifs/smb/SmbComTransaction;->writeDataWireFormat([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->totalDataCount:I

    .line 135
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->totalDataCount:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataCount:I

    .line 168
    :goto_3
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterDisplacement:I

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterCount:I

    add-int/2addr v1, v3

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->totalParameterCount:I

    if-lt v1, v3, :cond_1

    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataDisplacement:I

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataCount:I

    add-int/2addr v1, v3

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->totalDataCount:I

    if-lt v1, v3, :cond_1

    .line 170
    iput-boolean v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->hasMore:Z

    .line 172
    :cond_1
    return-object p0

    .line 114
    .end local v0           #available:I
    :cond_2
    iget-byte v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    if-ne v1, v4, :cond_0

    .line 115
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterOffset:I

    goto :goto_0

    .line 118
    :cond_3
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad:I

    rsub-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 130
    .restart local v0       #available:I
    :cond_4
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad1:I

    rsub-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 137
    .end local v0           #available:I
    :cond_5
    iget-byte v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    if-eq v1, v4, :cond_7

    .line 138
    const/16 v1, 0x26

    iput-byte v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 144
    :goto_4
    const/16 v1, 0x33

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 145
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->totalParameterCount:I

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterDisplacement:I

    sub-int/2addr v1, v3

    if-lez v1, :cond_6

    .line 146
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterOffset:I

    rem-int/lit8 v1, v1, 0x2

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad:I

    .line 147
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad:I

    if-nez v1, :cond_8

    move v1, v2

    :goto_5
    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad:I

    .line 148
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterOffset:I

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad:I

    add-int/2addr v1, v3

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 152
    :cond_6
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterDisplacement:I

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterDisplacement:I

    .line 154
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxBufferSize:I

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterOffset:I

    sub-int/2addr v1, v3

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad:I

    sub-int v0, v1, v3

    .line 155
    .restart local v0       #available:I
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->totalParameterCount:I

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterDisplacement:I

    sub-int/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterCount:I

    .line 156
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterCount:I

    sub-int/2addr v0, v1

    .line 158
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterOffset:I

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataOffset:I

    .line 159
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataOffset:I

    rem-int/lit8 v1, v1, 0x2

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad1:I

    .line 160
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad1:I

    if-nez v1, :cond_9

    move v1, v2

    :goto_6
    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad1:I

    .line 161
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataOffset:I

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad1:I

    add-int/2addr v1, v3

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataOffset:I

    .line 163
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataDisplacement:I

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataDisplacement:I

    .line 165
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad1:I

    sub-int/2addr v0, v1

    .line 166
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->totalDataCount:I

    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataDisplacement:I

    sub-int/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataCount:I

    goto/16 :goto_3

    .line 140
    .end local v0           #available:I
    :cond_7
    const/16 v1, -0x5f

    iput-byte v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    goto :goto_4

    .line 147
    :cond_8
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad:I

    rsub-int/lit8 v1, v1, 0x2

    goto :goto_5

    .line 160
    .restart local v0       #available:I
    :cond_9
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad1:I

    rsub-int/lit8 v1, v1, 0x2

    goto :goto_6
.end method

.method readBytesWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method abstract readDataWireFormat([BII)I
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method abstract readParametersWireFormat([BII)I
.end method

.method abstract readSetupWireFormat([BII)I
.end method

.method reset()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lmeizu_jcifs/smb/ServerMessageBlock;->reset()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->hasMore:Z

    iput-boolean v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->isPrimary:Z

    .line 98
    return-void
.end method

.method reset(ILjava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "lastName"

    .prologue
    .line 100
    invoke-virtual {p0}, Lmeizu_jcifs/smb/SmbComTransaction;->reset()V

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 263
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

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->totalParameterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalDataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->totalDataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",maxParameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxParameterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",maxDataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxDataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",maxSetupCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxSetupCount:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->flags:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->timeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterDisplacement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataDisplacement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",setupCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->setupCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pad1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBytesWireFormat([BI)I
    .locals 8
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/4 v7, 0x0

    .line 220
    move v3, p2

    .line 221
    .local v3, start:I
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad:I

    .line 223
    .local v1, p:I
    iget-byte v4, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    const/16 v5, 0x25

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lmeizu_jcifs/smb/SmbComTransaction;->isResponse()Z

    move-result v4

    if-nez v4, :cond_0

    .line 224
    iget-object v4, p0, Lmeizu_jcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    invoke-virtual {p0, v4, p1, p2}, Lmeizu_jcifs/smb/SmbComTransaction;->writeString(Ljava/lang/String;[BI)I

    move-result v4

    add-int/2addr p2, v4

    .line 227
    :cond_0
    iget v4, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterCount:I

    if-lez v4, :cond_2

    move v2, v1

    .end local v1           #p:I
    .local v2, p:I
    move v0, p2

    .line 228
    .end local p2
    .local v0, dstIndex:I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2           #p:I
    .restart local v1       #p:I
    if-lez v2, :cond_1

    .line 229
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    aput-byte v7, p1, v0

    move v2, v1

    .end local v1           #p:I
    .restart local v2       #p:I
    move v0, p2

    .end local p2
    .restart local v0       #dstIndex:I
    goto :goto_0

    .line 232
    .end local v2           #p:I
    .restart local v1       #p:I
    :cond_1
    iget-object v4, p0, Lmeizu_jcifs/smb/SmbComTransaction;->txn_buf:[B

    iget v5, p0, Lmeizu_jcifs/smb/SmbComTransaction;->bufParameterOffset:I

    iget v6, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterCount:I

    invoke-static {v4, v5, p1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    iget v4, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterCount:I

    add-int p2, v0, v4

    .line 236
    .end local v0           #dstIndex:I
    .restart local p2
    :cond_2
    iget v4, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataCount:I

    if-lez v4, :cond_4

    .line 237
    iget v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->pad1:I

    move v2, v1

    .end local v1           #p:I
    .restart local v2       #p:I
    move v0, p2

    .line 238
    .end local p2
    .restart local v0       #dstIndex:I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2           #p:I
    .restart local v1       #p:I
    if-lez v2, :cond_3

    .line 239
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    aput-byte v7, p1, v0

    move v2, v1

    .end local v1           #p:I
    .restart local v2       #p:I
    move v0, p2

    .end local p2
    .restart local v0       #dstIndex:I
    goto :goto_1

    .line 241
    .end local v2           #p:I
    .restart local v1       #p:I
    :cond_3
    iget-object v4, p0, Lmeizu_jcifs/smb/SmbComTransaction;->txn_buf:[B

    iget v5, p0, Lmeizu_jcifs/smb/SmbComTransaction;->bufDataOffset:I

    iget v6, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataCount:I

    invoke-static {v4, v5, p1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    iget v4, p0, Lmeizu_jcifs/smb/SmbComTransaction;->bufDataOffset:I

    iget v5, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataCount:I

    add-int/2addr v4, v5

    iput v4, p0, Lmeizu_jcifs/smb/SmbComTransaction;->bufDataOffset:I

    .line 243
    iget v4, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataCount:I

    add-int p2, v0, v4

    .line 246
    .end local v0           #dstIndex:I
    .restart local p2
    :cond_4
    sub-int v4, p2, v3

    return v4
.end method

.method abstract writeDataWireFormat([BI)I
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 7
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/16 v6, 0x26

    const/4 v3, 0x0

    .line 175
    move v1, p2

    .line 177
    .local v1, start:I
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->totalParameterCount:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    .line 178
    add-int/lit8 p2, p2, 0x2

    .line 179
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->totalDataCount:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    .line 180
    add-int/lit8 p2, p2, 0x2

    .line 181
    iget-byte v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    if-eq v2, v6, :cond_0

    .line 182
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxParameterCount:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    .line 183
    add-int/lit8 p2, p2, 0x2

    .line 184
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxDataCount:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    .line 185
    add-int/lit8 p2, p2, 0x2

    .line 186
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    iget-byte v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxSetupCount:B

    aput-byte v2, p1, p2

    .line 187
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    aput-byte v3, p1, v0

    .line 188
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->flags:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    .line 189
    add-int/lit8 p2, p2, 0x2

    .line 190
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->timeout:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComTransaction;->writeInt4(J[BI)V

    .line 191
    add-int/lit8 p2, p2, 0x4

    .line 192
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #dstIndex:I
    aput-byte v3, p1, p2

    .line 193
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    aput-byte v3, p1, v0

    .line 195
    :cond_0
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterCount:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    .line 196
    add-int/lit8 p2, p2, 0x2

    .line 198
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterOffset:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    .line 199
    add-int/lit8 p2, p2, 0x2

    .line 200
    iget-byte v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    if-ne v2, v6, :cond_1

    .line 201
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterDisplacement:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    .line 202
    add-int/lit8 p2, p2, 0x2

    .line 204
    :cond_1
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataCount:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    .line 205
    add-int/lit8 p2, p2, 0x2

    .line 206
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataCount:I

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    .line 207
    add-int/lit8 p2, p2, 0x2

    .line 208
    iget-byte v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    if-ne v2, v6, :cond_3

    .line 209
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataDisplacement:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/smb/SmbComTransaction;->writeInt2(J[BI)V

    .line 210
    add-int/lit8 p2, p2, 0x2

    .line 217
    :goto_1
    sub-int v2, p2, v1

    return v2

    .line 206
    :cond_2
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataOffset:I

    goto :goto_0

    .line 212
    :cond_3
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #dstIndex:I
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->setupCount:I

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 213
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    aput-byte v3, p1, v0

    .line 214
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/smb/SmbComTransaction;->writeSetupWireFormat([BI)I

    move-result v2

    add-int/2addr p2, v2

    goto :goto_1
.end method

.method abstract writeParametersWireFormat([BI)I
.end method

.method abstract writeSetupWireFormat([BI)I
.end method

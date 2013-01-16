.class Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;
.super Lmeizu_jcifs/smb/SmbComTransactionResponse;
.source "Trans2QueryFSInformationResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;
    }
.end annotation


# static fields
.field static final SMB_FS_FULL_SIZE_INFORMATION:I = 0x3ef

.field static final SMB_INFO_ALLOCATION:I = 0x1

.field static final SMB_QUERY_FS_SIZE_INFO:I = 0x103


# instance fields
.field info:Lmeizu_jcifs/smb/AllocInfo;

.field private informationLevel:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "informationLevel"

    .prologue
    .line 54
    invoke-direct {p0}, Lmeizu_jcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 55
    iput p1, p0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;->informationLevel:I

    .line 56
    const/16 v0, 0x32

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 57
    const/4 v0, 0x3

    iput-byte v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->subCommand:B

    .line 58
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 76
    iget v0, p0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;->informationLevel:I

    sparse-switch v0, :sswitch_data_0

    .line 84
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 78
    :sswitch_0
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;->readSmbInfoAllocationWireFormat([BI)I

    move-result v0

    goto :goto_0

    .line 80
    :sswitch_1
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;->readSmbQueryFSSizeInfoWireFormat([BI)I

    move-result v0

    goto :goto_0

    .line 82
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;->readFsFullSizeInformationWireFormat([BI)I

    move-result v0

    goto :goto_0

    .line 76
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x103 -> :sswitch_1
        0x3ef -> :sswitch_2
    .end sparse-switch
.end method

.method readFsFullSizeInformationWireFormat([BI)I
    .locals 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 134
    move v1, p2

    .line 136
    .local v1, start:I
    new-instance v0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;

    invoke-direct {v0, p0}, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;-><init>(Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;)V

    .line 139
    .local v0, info:Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;->readInt8([BI)J

    move-result-wide v2

    iput-wide v2, v0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    .line 140
    add-int/lit8 p2, p2, 0x8

    .line 143
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;->readInt8([BI)J

    move-result-wide v2

    iput-wide v2, v0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    .line 144
    add-int/lit8 p2, p2, 0x8

    .line 147
    add-int/lit8 p2, p2, 0x8

    .line 149
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;->readInt4([BI)I

    move-result v2

    iput v2, v0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    .line 150
    add-int/lit8 p2, p2, 0x4

    .line 152
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;->readInt4([BI)I

    move-result v2

    iput v2, v0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    .line 153
    add-int/lit8 p2, p2, 0x4

    .line 155
    iput-object v0, p0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;->info:Lmeizu_jcifs/smb/AllocInfo;

    .line 157
    sub-int v2, p2, v1

    return v2
.end method

.method readParametersWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method readSmbInfoAllocationWireFormat([BI)I
    .locals 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 89
    move v1, p2

    .line 91
    .local v1, start:I
    new-instance v0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;

    invoke-direct {v0, p0}, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;-><init>(Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;)V

    .line 93
    .local v0, info:Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;
    add-int/lit8 p2, p2, 0x4

    .line 95
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;->readInt4([BI)I

    move-result v2

    iput v2, v0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    .line 96
    add-int/lit8 p2, p2, 0x4

    .line 98
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;->readInt4([BI)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    .line 99
    add-int/lit8 p2, p2, 0x4

    .line 101
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;->readInt4([BI)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    .line 102
    add-int/lit8 p2, p2, 0x4

    .line 104
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;->readInt2([BI)I

    move-result v2

    iput v2, v0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    .line 105
    add-int/lit8 p2, p2, 0x4

    .line 107
    iput-object v0, p0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;->info:Lmeizu_jcifs/smb/AllocInfo;

    .line 109
    sub-int v2, p2, v1

    return v2
.end method

.method readSmbQueryFSSizeInfoWireFormat([BI)I
    .locals 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 112
    move v1, p2

    .line 114
    .local v1, start:I
    new-instance v0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;

    invoke-direct {v0, p0}, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;-><init>(Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;)V

    .line 116
    .local v0, info:Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;->readInt8([BI)J

    move-result-wide v2

    iput-wide v2, v0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    .line 117
    add-int/lit8 p2, p2, 0x8

    .line 119
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;->readInt8([BI)J

    move-result-wide v2

    iput-wide v2, v0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    .line 120
    add-int/lit8 p2, p2, 0x8

    .line 122
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;->readInt4([BI)I

    move-result v2

    iput v2, v0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    .line 123
    add-int/lit8 p2, p2, 0x4

    .line 125
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;->readInt4([BI)I

    move-result v2

    iput v2, v0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    .line 126
    add-int/lit8 p2, p2, 0x4

    .line 128
    iput-object v0, p0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;->info:Lmeizu_jcifs/smb/AllocInfo;

    .line 130
    sub-int v2, p2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2QueryFSInformationResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

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
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.class Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;
.super Lmeizu_jcifs/smb/SmbComTransactionResponse;
.source "Trans2QueryPathInformationResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;,
        Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;
    }
.end annotation


# static fields
.field static final SMB_QUERY_FILE_BASIC_INFO:I = 0x101

.field static final SMB_QUERY_FILE_STANDARD_INFO:I = 0x102


# instance fields
.field info:Lmeizu_jcifs/smb/Info;

.field private informationLevel:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "informationLevel"

    .prologue
    .line 91
    invoke-direct {p0}, Lmeizu_jcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 92
    iput p1, p0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;->informationLevel:I

    .line 93
    const/4 v0, 0x5

    iput-byte v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->subCommand:B

    .line 94
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 113
    iget v0, p0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;->informationLevel:I

    packed-switch v0, :pswitch_data_0

    .line 119
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 115
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;->readSmbQueryFileBasicInfoWireFormat([BI)I

    move-result v0

    goto :goto_0

    .line 117
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;->readSmbQueryFileStandardInfoWireFormat([BI)I

    move-result v0

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method readParametersWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 110
    const/4 v0, 0x2

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method readSmbQueryFileBasicInfoWireFormat([BI)I
    .locals 4
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 139
    move v1, p2

    .line 141
    .local v1, start:I
    new-instance v0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;

    invoke-direct {v0, p0}, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;-><init>(Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;)V

    .line 142
    .local v0, info:Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, v0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->createTime:J

    .line 143
    add-int/lit8 p2, p2, 0x8

    .line 144
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, v0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->lastAccessTime:J

    .line 145
    add-int/lit8 p2, p2, 0x8

    .line 146
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, v0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->lastWriteTime:J

    .line 147
    add-int/lit8 p2, p2, 0x8

    .line 148
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, v0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->changeTime:J

    .line 149
    add-int/lit8 p2, p2, 0x8

    .line 150
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;->readInt2([BI)I

    move-result v2

    iput v2, v0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->attributes:I

    .line 151
    add-int/lit8 p2, p2, 0x2

    .line 152
    iput-object v0, p0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;->info:Lmeizu_jcifs/smb/Info;

    .line 154
    sub-int v2, p2, v1

    return v2
.end method

.method readSmbQueryFileStandardInfoWireFormat([BI)I
    .locals 8
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 123
    move v2, p2

    .line 125
    .local v2, start:I
    new-instance v1, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;

    invoke-direct {v1, p0}, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;-><init>(Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;)V

    .line 126
    .local v1, info:Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;->readInt8([BI)J

    move-result-wide v6

    iput-wide v6, v1, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->allocationSize:J

    .line 127
    add-int/lit8 p2, p2, 0x8

    .line 128
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;->readInt8([BI)J

    move-result-wide v6

    iput-wide v6, v1, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->endOfFile:J

    .line 129
    add-int/lit8 p2, p2, 0x8

    .line 130
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;->readInt4([BI)I

    move-result v3

    iput v3, v1, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->numberOfLinks:I

    .line 131
    add-int/lit8 p2, p2, 0x4

    .line 132
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, bufferIndex:I
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    if-lez v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, v1, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->deletePending:Z

    .line 133
    add-int/lit8 p2, v0, 0x1

    .end local v0           #bufferIndex:I
    .restart local p2
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    if-lez v3, :cond_1

    :goto_1
    iput-boolean v4, v1, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->directory:Z

    .line 134
    iput-object v1, p0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;->info:Lmeizu_jcifs/smb/Info;

    .line 136
    sub-int v3, p2, v2

    return v3

    .end local p2
    .restart local v0       #bufferIndex:I
    :cond_0
    move v3, v5

    .line 132
    goto :goto_0

    .end local v0           #bufferIndex:I
    .restart local p2
    :cond_1
    move v4, v5

    .line 133
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2QueryPathInformationResponse["

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
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.class Lmeizu_jcifs/smb/Trans2FindFirst2;
.super Lmeizu_jcifs/smb/SmbComTransaction;
.source "Trans2FindFirst2.java"


# static fields
.field private static final DEFAULT_LIST_COUNT:I = 0xc8

.field private static final DEFAULT_LIST_SIZE:I = 0xffff

.field private static final FLAGS_CLOSE_AFTER_THIS_REQUEST:I = 0x1

.field private static final FLAGS_CLOSE_IF_END_REACHED:I = 0x2

.field private static final FLAGS_FIND_WITH_BACKUP_INTENT:I = 0x10

.field private static final FLAGS_RESUME_FROM_PREVIOUS_END:I = 0x8

.field private static final FLAGS_RETURN_RESUME_KEYS:I = 0x4

#the value of this static final field might be set in the static constructor
.field static final LIST_COUNT:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final LIST_SIZE:I = 0x0

.field static final SMB_FILE_BOTH_DIRECTORY_INFO:I = 0x104

.field static final SMB_FILE_NAMES_INFO:I = 0x103

.field static final SMB_FIND_FILE_DIRECTORY_INFO:I = 0x101

.field static final SMB_FIND_FILE_FULL_DIRECTORY_INFO:I = 0x102

.field static final SMB_INFO_QUERY_EAS_FROM_LIST:I = 0x3

.field static final SMB_INFO_QUERY_EA_SIZE:I = 0x2

.field static final SMB_INFO_STANDARD:I = 0x1


# instance fields
.field private flags:I

.field private informationLevel:I

.field private searchAttributes:I

.field private searchStorageType:I

.field private wildcard:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "meizu_jcifs.smb.client.listSize"

    const v1, 0xffff

    invoke-static {v0, v1}, Lmeizu_jcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmeizu_jcifs/smb/Trans2FindFirst2;->LIST_SIZE:I

    .line 54
    const-string v0, "meizu_jcifs.smb.client.listCount"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lmeizu_jcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmeizu_jcifs/smb/Trans2FindFirst2;->LIST_COUNT:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "filename"
    .parameter "wildcard"
    .parameter "searchAttributes"

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Lmeizu_jcifs/smb/SmbComTransaction;-><init>()V

    .line 40
    iput v2, p0, Lmeizu_jcifs/smb/Trans2FindFirst2;->searchStorageType:I

    .line 57
    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iput-object p1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 62
    :goto_0
    iput-object p2, p0, Lmeizu_jcifs/smb/Trans2FindFirst2;->wildcard:Ljava/lang/String;

    .line 63
    and-int/lit8 v0, p3, 0x37

    iput v0, p0, Lmeizu_jcifs/smb/Trans2FindFirst2;->searchAttributes:I

    .line 64
    const/16 v0, 0x32

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 65
    const/4 v0, 0x1

    iput-byte v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->subCommand:B

    .line 67
    iput v2, p0, Lmeizu_jcifs/smb/Trans2FindFirst2;->flags:I

    .line 68
    const/16 v0, 0x104

    iput v0, p0, Lmeizu_jcifs/smb/Trans2FindFirst2;->informationLevel:I

    .line 70
    iput v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->totalDataCount:I

    .line 71
    const/16 v0, 0xa

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 72
    sget v0, Lmeizu_jcifs/smb/Trans2FindFirst2;->LIST_SIZE:I

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 73
    iput-byte v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 74
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method readParametersWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 111
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2FindFirst2["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",searchAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2FindFirst2;->searchAttributes:I

    invoke-static {v2, v3}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",searchCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmeizu_jcifs/smb/Trans2FindFirst2;->LIST_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2FindFirst2;->flags:I

    invoke-static {v2, v3}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",informationLevel=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2FindFirst2;->informationLevel:I

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",searchStorageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2FindFirst2;->searchStorageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",filename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

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
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 3
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 82
    move v0, p2

    .line 84
    .local v0, start:I
    iget v1, p0, Lmeizu_jcifs/smb/Trans2FindFirst2;->searchAttributes:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/Trans2FindFirst2;->writeInt2(J[BI)V

    .line 85
    add-int/lit8 p2, p2, 0x2

    .line 86
    sget v1, Lmeizu_jcifs/smb/Trans2FindFirst2;->LIST_COUNT:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/Trans2FindFirst2;->writeInt2(J[BI)V

    .line 87
    add-int/lit8 p2, p2, 0x2

    .line 88
    iget v1, p0, Lmeizu_jcifs/smb/Trans2FindFirst2;->flags:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/Trans2FindFirst2;->writeInt2(J[BI)V

    .line 89
    add-int/lit8 p2, p2, 0x2

    .line 90
    iget v1, p0, Lmeizu_jcifs/smb/Trans2FindFirst2;->informationLevel:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/Trans2FindFirst2;->writeInt2(J[BI)V

    .line 91
    add-int/lit8 p2, p2, 0x2

    .line 92
    iget v1, p0, Lmeizu_jcifs/smb/Trans2FindFirst2;->searchStorageType:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lmeizu_jcifs/smb/Trans2FindFirst2;->writeInt4(J[BI)V

    .line 93
    add-int/lit8 p2, p2, 0x4

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/Trans2FindFirst2;->wildcard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lmeizu_jcifs/smb/Trans2FindFirst2;->writeString(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 96
    sub-int v1, p2, v0

    return v1
.end method

.method writeSetupWireFormat([BI)I
    .locals 2
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 77
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    iget-byte v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->subCommand:B

    aput-byte v1, p1, p2

    .line 78
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 79
    const/4 v1, 0x2

    return v1
.end method

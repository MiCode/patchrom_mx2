.class Lmeizu_jcifs/smb/SmbComNTCreateAndX;
.super Lmeizu_jcifs/smb/AndXServerMessageBlock;
.source "SmbComNTCreateAndX.java"


# static fields
.field static final FILE_CREATE:I = 0x2

.field static final FILE_OPEN:I = 0x1

.field static final FILE_OPEN_IF:I = 0x3

.field static final FILE_OVERWRITE:I = 0x4

.field static final FILE_OVERWRITE_IF:I = 0x5

.field static final FILE_SEQUENTIAL_ONLY:I = 0x4

.field static final FILE_SUPERSEDE:I = 0x0

.field static final FILE_SYNCHRONOUS_IO_ALERT:I = 0x10

.field static final FILE_SYNCHRONOUS_IO_NONALERT:I = 0x20

.field static final FILE_WRITE_THROUGH:I = 0x2

.field static final SECURITY_CONTEXT_TRACKING:I = 0x1

.field static final SECURITY_EFFECTIVE_ONLY:I = 0x2


# instance fields
.field private allocationSize:J

.field private createDisposition:I

.field private createOptions:I

.field desiredAccess:I

.field private extFileAttributes:I

.field flags0:I

.field private impersonationLevel:I

.field private namelen_index:I

.field private rootDirectoryFid:I

.field private securityFlags:B

.field private shareAccess:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIIIILmeizu_jcifs/smb/ServerMessageBlock;)V
    .locals 5
    .parameter "name"
    .parameter "flags"
    .parameter "access"
    .parameter "shareAccess"
    .parameter "extFileAttributes"
    .parameter "createOptions"
    .parameter "andx"

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 93
    invoke-direct {p0, p7}, Lmeizu_jcifs/smb/AndXServerMessageBlock;-><init>(Lmeizu_jcifs/smb/ServerMessageBlock;)V

    .line 94
    iput-object p1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 95
    const/16 v0, -0x5e

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 97
    iput p3, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    .line 98
    iget v0, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    or-int/lit16 v0, v0, 0x89

    iput v0, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    .line 101
    iput p5, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->extFileAttributes:I

    .line 104
    iput p4, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->shareAccess:I

    .line 107
    and-int/lit8 v0, p2, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 109
    and-int/lit8 v0, p2, 0x10

    if-ne v0, v4, :cond_0

    .line 111
    const/4 v0, 0x5

    iput v0, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    .line 130
    :goto_0
    and-int/lit8 v0, p6, 0x1

    if-nez v0, :cond_4

    .line 131
    or-int/lit8 v0, p6, 0x40

    iput v0, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->createOptions:I

    .line 135
    :goto_1
    iput v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->impersonationLevel:I

    .line 136
    iput-byte v3, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->securityFlags:B

    .line 137
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    goto :goto_0

    .line 117
    :cond_1
    and-int/lit8 v0, p2, 0x10

    if-ne v0, v4, :cond_3

    .line 119
    and-int/lit8 v0, p2, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    .line 121
    iput v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    goto :goto_0

    .line 123
    :cond_2
    iput v3, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    goto :goto_0

    .line 126
    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    goto :goto_0

    .line 133
    :cond_4
    iput p6, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->createOptions:I

    goto :goto_1
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x4

    .line 181
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComNTCreateAndX["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->flags0:I

    invoke-static {v2, v5}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rootDirectoryFid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->rootDirectoryFid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",desiredAccess=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    invoke-static {v2, v4}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allocationSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->allocationSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",extFileAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->extFileAttributes:I

    invoke-static {v2, v4}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",shareAccess=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->shareAccess:I

    invoke-static {v2, v4}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",createDisposition=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    invoke-static {v2, v4}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",createOptions=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->createOptions:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",impersonationLevel=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->impersonationLevel:I

    invoke-static {v2, v4}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",securityFlags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->securityFlags:B

    invoke-static {v2, v5}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",name="

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

.method writeBytesWireFormat([BI)I
    .locals 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 170
    iget-object v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, p2}, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->writeString(Ljava/lang/String;[BI)I

    move-result v0

    .line 171
    .local v0, n:I
    iget-boolean v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->useUnicode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    :goto_0
    int-to-long v1, v1

    iget v3, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->namelen_index:I

    invoke-static {v1, v2, p1, v3}, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->writeInt2(J[BI)V

    .line 172
    return v0

    :cond_0
    move v1, v0

    .line 171
    goto :goto_0
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 4
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 140
    move v1, p2

    .line 142
    .local v1, start:I
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    const/4 v2, 0x0

    aput-byte v2, p1, p2

    .line 144
    iput v0, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->namelen_index:I

    .line 145
    add-int/lit8 p2, v0, 0x2

    .line 146
    .end local v0           #dstIndex:I
    .restart local p2
    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->flags0:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->writeInt4(J[BI)V

    .line 147
    add-int/lit8 p2, p2, 0x4

    .line 148
    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->rootDirectoryFid:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->writeInt4(J[BI)V

    .line 149
    add-int/lit8 p2, p2, 0x4

    .line 150
    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->writeInt4(J[BI)V

    .line 151
    add-int/lit8 p2, p2, 0x4

    .line 152
    iget-wide v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->allocationSize:J

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->writeInt8(J[BI)V

    .line 153
    add-int/lit8 p2, p2, 0x8

    .line 154
    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->extFileAttributes:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->writeInt4(J[BI)V

    .line 155
    add-int/lit8 p2, p2, 0x4

    .line 156
    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->shareAccess:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->writeInt4(J[BI)V

    .line 157
    add-int/lit8 p2, p2, 0x4

    .line 158
    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->writeInt4(J[BI)V

    .line 159
    add-int/lit8 p2, p2, 0x4

    .line 160
    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->createOptions:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->writeInt4(J[BI)V

    .line 161
    add-int/lit8 p2, p2, 0x4

    .line 162
    iget v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->impersonationLevel:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->writeInt4(J[BI)V

    .line 163
    add-int/lit8 p2, p2, 0x4

    .line 164
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #dstIndex:I
    iget-byte v2, p0, Lmeizu_jcifs/smb/SmbComNTCreateAndX;->securityFlags:B

    aput-byte v2, p1, p2

    .line 166
    sub-int v2, v0, v1

    return v2
.end method

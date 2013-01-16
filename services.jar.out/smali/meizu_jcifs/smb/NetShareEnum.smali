.class Lmeizu_jcifs/smb/NetShareEnum;
.super Lmeizu_jcifs/smb/SmbComTransaction;
.source "NetShareEnum.java"


# static fields
.field private static final DESCR:Ljava/lang/String; = "WrLeh\u0000B13BWz\u0000"


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Lmeizu_jcifs/smb/SmbComTransaction;-><init>()V

    .line 28
    const/16 v0, 0x25

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 29
    iput-byte v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->subCommand:B

    .line 30
    new-instance v0, Ljava/lang/String;

    const-string v1, "\\PIPE\\LANMAN"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 34
    iput-byte v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 35
    iput v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->setupCount:I

    .line 36
    const/16 v0, 0x1388

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->timeout:I

    .line 37
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method readParametersWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetShareEnum["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

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
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 6
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/4 v3, 0x0

    .line 43
    move v1, p2

    .line 47
    .local v1, start:I
    :try_start_0
    const-string v4, "WrLeh\u0000B13BWz\u0000"

    const-string v5, "ASCII"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 52
    .local v0, descr:[B
    const-wide/16 v4, 0x0

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/NetShareEnum;->writeInt2(J[BI)V

    .line 53
    add-int/lit8 p2, p2, 0x2

    .line 54
    array-length v4, v0

    invoke-static {v0, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    array-length v3, v0

    add-int/2addr p2, v3

    .line 56
    const-wide/16 v3, 0x1

    invoke-static {v3, v4, p1, p2}, Lmeizu_jcifs/smb/NetShareEnum;->writeInt2(J[BI)V

    .line 57
    add-int/lit8 p2, p2, 0x2

    .line 58
    iget v3, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxDataCount:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, p2}, Lmeizu_jcifs/smb/NetShareEnum;->writeInt2(J[BI)V

    .line 59
    add-int/lit8 p2, p2, 0x2

    .line 61
    sub-int v3, p2, v1

    .end local v0           #descr:[B
    :goto_0
    return v3

    .line 48
    :catch_0
    move-exception v2

    .line 49
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method writeSetupWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

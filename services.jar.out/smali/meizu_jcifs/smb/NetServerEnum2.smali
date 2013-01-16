.class Lmeizu_jcifs/smb/NetServerEnum2;
.super Lmeizu_jcifs/smb/SmbComTransaction;
.source "NetServerEnum2.java"


# static fields
.field static final DESCR:[Ljava/lang/String; = null

.field static final SV_TYPE_ALL:I = -0x1

.field static final SV_TYPE_DOMAIN_ENUM:I = -0x80000000


# instance fields
.field domain:Ljava/lang/String;

.field lastName:Ljava/lang/String;

.field serverTypes:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WrLehDO\u0000B16BBDz\u0000"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "WrLehDz\u0000B16BBDz\u0000"

    aput-object v2, v0, v1

    sput-object v0, Lmeizu_jcifs/smb/NetServerEnum2;->DESCR:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "domain"
    .parameter "serverTypes"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lmeizu_jcifs/smb/SmbComTransaction;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lmeizu_jcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lmeizu_jcifs/smb/NetServerEnum2;->domain:Ljava/lang/String;

    .line 39
    iput p2, p0, Lmeizu_jcifs/smb/NetServerEnum2;->serverTypes:I

    .line 40
    const/16 v0, 0x25

    iput-byte v0, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    .line 41
    const/16 v0, 0x68

    iput-byte v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->subCommand:B

    .line 42
    const-string v0, "\\PIPE\\LANMAN"

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    .line 44
    const/16 v0, 0x8

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 45
    const/16 v0, 0x4000

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 46
    iput-byte v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 47
    iput v1, p0, Lmeizu_jcifs/smb/SmbComTransaction;->setupCount:I

    .line 48
    const/16 v0, 0x1388

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->timeout:I

    .line 49
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method readParametersWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method reset(ILjava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "lastName"

    .prologue
    .line 52
    invoke-super {p0}, Lmeizu_jcifs/smb/SmbComTransaction;->reset()V

    .line 53
    iput-object p2, p0, Lmeizu_jcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    new-instance v1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetServerEnum2["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lmeizu_jcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",serverTypes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lmeizu_jcifs/smb/NetServerEnum2;->serverTypes:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const-string v0, "SV_TYPE_ALL"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "SV_TYPE_DOMAIN_ENUM"

    goto :goto_0
.end method

.method writeDataWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 8
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    move v1, p2

    .line 62
    .local v1, start:I
    iget-byte v6, p0, Lmeizu_jcifs/smb/SmbComTransaction;->subCommand:B

    const/16 v7, 0x68

    if-ne v6, v7, :cond_1

    move v3, v4

    .line 65
    .local v3, which:I
    :goto_0
    :try_start_0
    sget-object v6, Lmeizu_jcifs/smb/NetServerEnum2;->DESCR:[Ljava/lang/String;

    aget-object v6, v6, v3

    const-string v7, "ASCII"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    .local v0, descr:[B
    iget-byte v6, p0, Lmeizu_jcifs/smb/SmbComTransaction;->subCommand:B

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    invoke-static {v6, v7, p1, p2}, Lmeizu_jcifs/smb/NetServerEnum2;->writeInt2(J[BI)V

    .line 71
    add-int/lit8 p2, p2, 0x2

    .line 72
    array-length v6, v0

    invoke-static {v0, v4, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    array-length v6, v0

    add-int/2addr p2, v6

    .line 74
    const-wide/16 v6, 0x1

    invoke-static {v6, v7, p1, p2}, Lmeizu_jcifs/smb/NetServerEnum2;->writeInt2(J[BI)V

    .line 75
    add-int/lit8 p2, p2, 0x2

    .line 76
    iget v6, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxDataCount:I

    int-to-long v6, v6

    invoke-static {v6, v7, p1, p2}, Lmeizu_jcifs/smb/NetServerEnum2;->writeInt2(J[BI)V

    .line 77
    add-int/lit8 p2, p2, 0x2

    .line 78
    iget v6, p0, Lmeizu_jcifs/smb/NetServerEnum2;->serverTypes:I

    int-to-long v6, v6

    invoke-static {v6, v7, p1, p2}, Lmeizu_jcifs/smb/NetServerEnum2;->writeInt4(J[BI)V

    .line 79
    add-int/lit8 p2, p2, 0x4

    .line 80
    iget-object v6, p0, Lmeizu_jcifs/smb/NetServerEnum2;->domain:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, p1, p2, v4}, Lmeizu_jcifs/smb/NetServerEnum2;->writeString(Ljava/lang/String;[BIZ)I

    move-result v6

    add-int/2addr p2, v6

    .line 81
    if-ne v3, v5, :cond_0

    .line 82
    iget-object v5, p0, Lmeizu_jcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p1, p2, v4}, Lmeizu_jcifs/smb/NetServerEnum2;->writeString(Ljava/lang/String;[BIZ)I

    move-result v4

    add-int/2addr p2, v4

    .line 85
    :cond_0
    sub-int v4, p2, v1

    .end local v0           #descr:[B
    :goto_1
    return v4

    .end local v3           #which:I
    :cond_1
    move v3, v5

    .line 62
    goto :goto_0

    .line 66
    .restart local v3       #which:I
    :catch_0
    move-exception v2

    .line 67
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    goto :goto_1
.end method

.method writeSetupWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

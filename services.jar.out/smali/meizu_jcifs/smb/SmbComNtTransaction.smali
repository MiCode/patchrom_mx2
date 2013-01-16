.class abstract Lmeizu_jcifs/smb/SmbComNtTransaction;
.super Lmeizu_jcifs/smb/SmbComTransaction;
.source "SmbComNtTransaction.java"


# static fields
.field private static final NTT_PRIMARY_SETUP_OFFSET:I = 0x45

.field private static final NTT_SECONDARY_PARAMETER_OFFSET:I = 0x33

.field static final NT_TRANSACT_QUERY_SECURITY_DESC:I = 0x6


# instance fields
.field function:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lmeizu_jcifs/smb/SmbComTransaction;-><init>()V

    .line 33
    const/16 v0, 0x45

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->primarySetupOffset:I

    .line 34
    const/16 v0, 0x33

    iput v0, p0, Lmeizu_jcifs/smb/SmbComTransaction;->secondaryParameterOffset:I

    .line 35
    return-void
.end method


# virtual methods
.method writeParameterWordsWireFormat([BI)I
    .locals 7
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/16 v6, -0x5f

    const/4 v3, 0x0

    .line 38
    move v1, p2

    .line 40
    .local v1, start:I
    iget-byte v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    if-eq v2, v6, :cond_2

    .line 41
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    iget-byte v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxSetupCount:B

    aput-byte v2, p1, p2

    move p2, v0

    .line 45
    .end local v0           #dstIndex:I
    .restart local p2
    :goto_0
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #dstIndex:I
    aput-byte v3, p1, p2

    .line 46
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    aput-byte v3, p1, v0

    .line 47
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->totalParameterCount:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    .line 48
    add-int/lit8 p2, p2, 0x4

    .line 49
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->totalDataCount:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    .line 50
    add-int/lit8 p2, p2, 0x4

    .line 51
    iget-byte v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    if-eq v2, v6, :cond_0

    .line 52
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxParameterCount:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    .line 53
    add-int/lit8 p2, p2, 0x4

    .line 54
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->maxDataCount:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    .line 55
    add-int/lit8 p2, p2, 0x4

    .line 57
    :cond_0
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterCount:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    .line 58
    add-int/lit8 p2, p2, 0x4

    .line 59
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterCount:I

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    .line 60
    add-int/lit8 p2, p2, 0x4

    .line 61
    iget-byte v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    if-ne v2, v6, :cond_1

    .line 62
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterDisplacement:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    .line 63
    add-int/lit8 p2, p2, 0x4

    .line 65
    :cond_1
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataCount:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    .line 66
    add-int/lit8 p2, p2, 0x4

    .line 67
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataCount:I

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    .line 68
    add-int/lit8 p2, p2, 0x4

    .line 69
    iget-byte v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->command:B

    if-ne v2, v6, :cond_5

    .line 70
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataDisplacement:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, p2}, Lmeizu_jcifs/smb/SmbComNtTransaction;->writeInt4(J[BI)V

    .line 71
    add-int/lit8 p2, p2, 0x4

    .line 72
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #dstIndex:I
    aput-byte v3, p1, p2

    move p2, v0

    .line 80
    .end local v0           #dstIndex:I
    .restart local p2
    :goto_3
    sub-int v2, p2, v1

    return v2

    .line 43
    :cond_2
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #dstIndex:I
    aput-byte v3, p1, p2

    move p2, v0

    .end local v0           #dstIndex:I
    .restart local p2
    goto :goto_0

    .line 59
    :cond_3
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->parameterOffset:I

    goto :goto_1

    .line 67
    :cond_4
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->dataOffset:I

    goto :goto_2

    .line 74
    :cond_5
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #dstIndex:I
    iget v2, p0, Lmeizu_jcifs/smb/SmbComTransaction;->setupCount:I

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 75
    iget v2, p0, Lmeizu_jcifs/smb/SmbComNtTransaction;->function:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Lmeizu_jcifs/smb/SmbComNtTransaction;->writeInt2(J[BI)V

    .line 76
    add-int/lit8 p2, v0, 0x2

    .line 77
    .end local v0           #dstIndex:I
    .restart local p2
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/smb/SmbComNtTransaction;->writeSetupWireFormat([BI)I

    move-result v2

    add-int/2addr p2, v2

    goto :goto_3
.end method

.class Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;
.super Lmeizu_jcifs/smb/SmbComTransactionResponse;
.source "Trans2GetDfsReferralResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;
    }
.end annotation


# instance fields
.field flags:I

.field numReferrals:I

.field pathConsumed:I

.field referrals:[Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lmeizu_jcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 93
    const/16 v0, 0x10

    iput-byte v0, p0, Lmeizu_jcifs/smb/SmbComTransactionResponse;->subCommand:B

    .line 94
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 4
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 112
    move v1, p2

    .line 114
    .local v1, start:I
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;->readInt2([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    .line 115
    add-int/lit8 p2, p2, 0x2

    .line 120
    iget v2, p0, Lmeizu_jcifs/smb/ServerMessageBlock;->flags2:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 121
    iget v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    .line 123
    :cond_0
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;->readInt2([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    .line 124
    add-int/lit8 p2, p2, 0x2

    .line 125
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;->readInt2([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;->flags:I

    .line 126
    add-int/lit8 p2, p2, 0x4

    .line 128
    iget v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    new-array v2, v2, [Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;

    iput-object v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;

    .line 129
    const/4 v0, 0x0

    .local v0, ri:I
    :goto_0
    iget v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    if-ge v0, v2, :cond_1

    .line 130
    iget-object v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;

    new-instance v3, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;

    invoke-direct {v3, p0}, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;-><init>(Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;)V

    aput-object v3, v2, v0

    .line 131
    iget-object v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2, p3}, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->readWireFormat([BII)I

    move-result v2

    add-int/2addr p2, v2

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    sub-int v2, p2, v1

    return v2
.end method

.method readParametersWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 109
    const/4 v0, 0x0

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

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2GetDfsReferralResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pathConsumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",numReferrals="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

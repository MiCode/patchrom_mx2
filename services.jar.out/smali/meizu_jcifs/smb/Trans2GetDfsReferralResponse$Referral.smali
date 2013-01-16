.class Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;
.super Ljava/lang/Object;
.source "Trans2GetDfsReferralResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Referral"
.end annotation


# instance fields
.field private altPath:Ljava/lang/String;

.field private altPathOffset:I

.field private flags:I

.field node:Ljava/lang/String;

.field private nodeOffset:I

.field path:Ljava/lang/String;

.field private pathOffset:I

.field private proximity:I

.field private serverType:I

.field private size:I

.field final synthetic this$0:Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;

.field ttl:I

.field private version:I


# direct methods
.method constructor <init>(Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 25
    iput-object p1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method readWireFormat([BII)I
    .locals 7
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    const/4 v4, 0x3

    const v6, 0x8000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 41
    move v0, p2

    .line 43
    .local v0, start:I
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    .line 44
    iget v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    if-eq v1, v2, :cond_0

    .line 45
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " referral not supported. Please report this to meizu_jcifs at samba dot org."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_0
    add-int/lit8 p2, p2, 0x2

    .line 48
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->size:I

    .line 49
    add-int/lit8 p2, p2, 0x2

    .line 50
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->serverType:I

    .line 51
    add-int/lit8 p2, p2, 0x2

    .line 52
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->flags:I

    .line 53
    add-int/lit8 p2, p2, 0x2

    .line 54
    iget v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    if-ne v1, v4, :cond_4

    .line 55
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->proximity:I

    .line 56
    add-int/lit8 p2, p2, 0x2

    .line 57
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    .line 58
    add-int/lit8 p2, p2, 0x2

    .line 59
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->pathOffset:I

    .line 60
    add-int/lit8 p2, p2, 0x2

    .line 61
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->altPathOffset:I

    .line 62
    add-int/lit8 p2, p2, 0x2

    .line 63
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->nodeOffset:I

    .line 64
    add-int/lit8 p2, p2, 0x2

    .line 66
    iget-object v4, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;

    iget v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->pathOffset:I

    add-int v5, v0, v1

    iget-object v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;

    iget v1, v1, Lmeizu_jcifs/smb/ServerMessageBlock;->flags2:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, p1, v5, p3, v1}, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;->readString([BIIZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    .line 67
    iget v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->nodeOffset:I

    if-lez v1, :cond_1

    .line 68
    iget-object v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;

    iget v4, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->nodeOffset:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;

    iget v5, v5, Lmeizu_jcifs/smb/ServerMessageBlock;->flags2:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    :goto_1
    invoke-virtual {v1, p1, v4, p3, v2}, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;->readString([BIIZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    .line 73
    :cond_1
    :goto_2
    iget v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->size:I

    return v1

    :cond_2
    move v1, v3

    .line 66
    goto :goto_0

    :cond_3
    move v2, v3

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    iget v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    if-ne v1, v2, :cond_1

    .line 70
    iget-object v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;

    iget-object v4, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;

    iget v4, v4, Lmeizu_jcifs/smb/ServerMessageBlock;->flags2:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_5

    :goto_3
    invoke-virtual {v1, p1, p2, p3, v2}, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse;->readString([BIIZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Referral[version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",serverType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->serverType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",proximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->proximity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ttl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pathOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->pathOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",altPathOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->altPathOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",nodeOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->nodeOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",altPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->altPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",node="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

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

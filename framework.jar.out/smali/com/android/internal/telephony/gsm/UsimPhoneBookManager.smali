.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final EVENT_USIM_ADN_LOAD_DONE_EX:I = 0x5

.field private static final EVENT_USIM_ANR_LOAD_DONE:I = 0x6

.field private static final EVENT_USIM_EXT1_LOAD_DONE:I = 0x7

.field private static final EVENT_WRITE_RECORD_DONE:I = 0x8

.field static final EXT1_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT1_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT1_RECORD_TYPE_CALLED_PARTY_SUBADDRESS:I = 0x1

.field static final EXT1_RECORD_TYPE_FREE:I = 0x0

.field static final EXT1_RECORD_TYPE_MASK:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_EXT1_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field private mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field private mAdnEfs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAdnFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAdnRecordsNumLoaded:I

.field private mAnrFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAnrPresent:Z

.field private mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

.field private mEfextid:I

.field private mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailPresentInIap:Z

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExceptionLog:Ljava/lang/String;

.field private mExt1FileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/IccFileHandler;

.field private mIapFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mIsWriteSuccess:Z

.field private mLock:Ljava/lang/Object;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshCache:Z

.field private mUsimPbManagerEx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/AdnRecordCache;)V
    .locals 3
    .parameter "fh"
    .parameter "cache"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 54
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresent:Z

    .line 56
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 63
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordsNumLoaded:I

    .line 618
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileRecord:Ljava/util/ArrayList;

    .line 619
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    .line 620
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    .line 622
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 623
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    .line 625
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEfextid:I

    .line 627
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsWriteSuccess:Z

    .line 629
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnEfs:Ljava/util/Vector;

    .line 631
    const-string v0, "error"

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 89
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 92
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 93
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 94
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresent:Z

    return p1
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 385
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 389
    :goto_0
    return-void

    .line 388
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method private freeExt1Records(Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;Ljava/util/Vector;Ljava/lang/String;)Z
    .locals 10
    .parameter "uSimPbManager"
    .parameter
    .parameter "pin2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, toFree:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/16 v9, 0xff

    const/4 v7, 0x0

    .line 1080
    const/4 v1, 0x0

    .line 1082
    .local v1, ext1Record:[B
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfExt1Id()I

    move-result v0

    .line 1084
    .local v0, efExt1Id:I
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v5

    .local v5, s:I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 1085
    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1087
    .local v2, ext1RecordId:I
    const/4 v6, 0x0

    invoke-static {v6, v7, v7, v9}, Lcom/android/internal/telephony/AdnRecord;->buildExt1String([BIII)[B

    move-result-object v1

    .line 1088
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "usim contact: free EFext1 record, EFext1 = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", ext1RecordId = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1089
    .local v4, log:Ljava/lang/String;
    const-string v6, "GSM"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    invoke-direct {p0, v0, v2, v1, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1091
    const-string/jumbo v6, "usim contact: free EFext1 record, error of writeEfRecord"

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1092
    const-string v6, "GSM"

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1100
    .end local v2           #ext1RecordId:I
    .end local v4           #log:Ljava/lang/String;
    :goto_1
    return v6

    .line 1095
    .restart local v2       #ext1RecordId:I
    .restart local v4       #log:Ljava/lang/String;
    :cond_0
    const-string v6, "GSM"

    const-string/jumbo v8, "usim contact: free EFext1 record, success"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    invoke-virtual {p1, v2, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByExt1Record(II)V

    .line 1084
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1100
    .end local v2           #ext1RecordId:I
    .end local v4           #log:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private getAdnRecord(II)Lcom/android/internal/telephony/AdnRecord;
    .locals 3
    .parameter "efid"
    .parameter "adnRecordId"

    .prologue
    .line 1070
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 1071
    .local v0, val:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;
    if-nez v0, :cond_0

    .line 1072
    const/4 v1, 0x0

    .line 1074
    :goto_0
    return-object v1

    :cond_0
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecord(I)Lcom/android/internal/telephony/AdnRecord;

    move-result-object v1

    goto :goto_0
.end method

.method private getAdnRecordByLogicalIndex(I)Lcom/android/internal/telephony/AdnRecord;
    .locals 9
    .parameter "index"

    .prologue
    const/4 v7, 0x0

    .line 1526
    const/4 v6, 0x1

    if-lt p1, v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    if-nez v6, :cond_1

    :cond_0
    move-object v6, v7

    .line 1549
    :goto_0
    return-object v6

    .line 1534
    :cond_1
    const/4 v1, 0x0

    .line 1535
    .local v1, end:I
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnEfs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v3

    .local v3, s:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 1536
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnEfs:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1537
    .local v0, efAdnId:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 1538
    .local v5, usimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;
    if-nez v5, :cond_3

    .end local v0           #efAdnId:I
    .end local v5           #usimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;
    :cond_2
    move-object v6, v7

    .line 1549
    goto :goto_0

    .line 1541
    .restart local v0       #efAdnId:I
    .restart local v5       #usimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;
    :cond_3
    add-int/lit8 v4, v1, 0x1

    .line 1542
    .local v4, start:I
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecordCnt()I

    move-result v6

    add-int/2addr v1, v6

    .line 1544
    if-gt v4, p1, :cond_4

    if-gt p1, v1, :cond_4

    .line 1545
    sub-int v6, p1, v4

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecord(I)Lcom/android/internal/telephony/AdnRecord;

    move-result-object v6

    goto :goto_0

    .line 1535
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getAdnRecordSize(I)I
    .locals 3
    .parameter "efAdnId"

    .prologue
    .line 1562
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 1563
    .local v0, uSimPbManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecordSize()I

    move-result v1

    return v1
.end method

.method private getAllAdns()V
    .locals 5

    .prologue
    .line 1008
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnEfs:Ljava/util/Vector;

    .line 1009
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1010
    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1011
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1013
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 1015
    .local v2, val:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecords()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1016
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnEfs:Ljava/util/Vector;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfAdnId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1018
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v2           #val:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;
    :cond_0
    return-void
.end method

.method private internalUpdateAdnRecord(IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)Z
    .locals 22
    .parameter "efAdnId"
    .parameter "adnRecordId"
    .parameter "oldAdnRecord"
    .parameter "newAdnRecord"
    .parameter "pin2"

    .prologue
    .line 1105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 1108
    .local v5, uSimPbManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/AdnRecord;->getEmailLength()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmailLength()I

    move-result v4

    if-nez v4, :cond_0

    .line 1109
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEmptyEmailRecordCnt()I

    move-result v4

    const/4 v8, 0x1

    if-ge v4, v8, :cond_0

    .line 1110
    const-string v4, "GSM"

    const-string/jumbo v8, "usim contact: no free space for new email record, so can\'t update a contact"

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const/4 v4, 0x0

    .line 1199
    :goto_0
    return v4

    .line 1116
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v7

    .line 1118
    .local v7, tag:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 1119
    .local v6, number:Ljava/lang/String;
    const/16 v20, 0x0

    .line 1120
    .local v20, numberBytes:[B
    const/16 v19, 0x0

    .line 1122
    .local v19, emptyExt1RecordCntForNumber:I
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/AdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v14

    .line 1123
    .local v14, adNumber:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1124
    .local v15, adNumberBytes:[B
    const/16 v18, 0x0

    .line 1127
    .local v18, emptyExt1RecordCntForAdNumber:I
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1128
    const/16 v20, 0x0

    .line 1132
    :goto_1
    invoke-static {v6}, Lcom/android/internal/telephony/AdnRecord;->calcEmptyExt1RecordCntNeeded(Ljava/lang/String;)I

    move-result v19

    .line 1134
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1135
    const/4 v15, 0x0

    .line 1139
    :goto_2
    invoke-static {v14}, Lcom/android/internal/telephony/AdnRecord;->calcEmptyExt1RecordCntNeeded(Ljava/lang/String;)I

    move-result v18

    .line 1142
    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getRefCntChangeTableIfDeleteAdnRecord(I)Ljava/util/Map;

    move-result-object v16

    .line 1145
    .local v16, changeTable:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getExt1RecordIdToFreeIfDeleteAdnRecord(Ljava/util/Map;)Ljava/util/Vector;

    move-result-object v21

    .line 1148
    .local v21, toFree:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    add-int v4, v18, v19

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v8

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEmptyExt1RecordCnt()I

    move-result v9

    add-int/2addr v8, v9

    if-le v4, v8, :cond_3

    .line 1149
    const-string/jumbo v4, "usim contact: no free space for new number and additional number, so can\'t update a contact"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1150
    const-string v4, "GSM"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    const/4 v4, 0x0

    goto :goto_0

    .line 1130
    .end local v16           #changeTable:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v21           #toFree:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_1
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v20

    goto :goto_1

    .line 1137
    :cond_2
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v15

    goto :goto_2

    .line 1157
    .restart local v16       #changeTable:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v21       #toFree:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->decRefCntByChangeTable(Ljava/util/Map;)V

    .line 1160
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    invoke-direct {v0, v5, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->freeExt1Records(Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;Ljava/util/Vector;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1161
    const/4 v4, 0x0

    goto :goto_0

    .line 1164
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    move-object/from16 v4, p0

    move-object/from16 v8, p5

    move/from16 v9, p2

    .line 1165
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeNumberWithExt1RecordChain(Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1166
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1167
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1168
    :cond_7
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object v9, v5

    move-object/from16 v12, p5

    move/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeNumberWithExt1RecordChain(Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1169
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1173
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresent:Z

    if-eqz v4, :cond_a

    .line 1174
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1175
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p2

    invoke-direct {v0, v5, v14, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeAdNumberWithExt1RecordChain(Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1176
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1177
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1178
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p2

    invoke-direct {v0, v5, v4, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeAdNumberWithExt1RecordChain(Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1179
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1185
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v4, :cond_d

    .line 1186
    const/16 v17, 0x0

    .line 1187
    .local v17, email:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 1188
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    aget-object v17, v4, v8

    .line 1190
    :cond_b
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1191
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p5

    move/from16 v3, p2

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeIapAndEmailRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1192
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1193
    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    aget-object v4, v4, v8

    if-eqz v4, :cond_d

    .line 1194
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p2

    invoke-direct {v0, v5, v4, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeIapAndEmailRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1195
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1199
    .end local v17           #email:Ljava/lang/String;
    :cond_d
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method private isLoaded(I)I
    .locals 5
    .parameter "efid"

    .prologue
    .line 989
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 990
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 991
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 992
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 993
    .local v2, key:Ljava/lang/Integer;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 995
    .local v3, val:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfAdnId()I

    move-result v4

    if-eq v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfAnrId()I

    move-result v4

    if-eq v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfEmailId()I

    move-result v4

    if-eq v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfExt1Id()I

    move-result v4

    if-eq v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfIapId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1000
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1004
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #val:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;
    :goto_0
    return v4

    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 597
    const-string v0, "GSM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return-void
.end method

.method private parseAdnRecords()V
    .locals 11

    .prologue
    const/16 v10, 0x30

    .line 728
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 730
    .local v1, adns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    const/4 v6, 0x0

    .line 731
    .local v6, record:[B
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 734
    .local v5, maxExt1FileRecordId:I
    const/4 v4, 0x0

    .local v4, i:I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, s:I
    :goto_0
    if-ge v4, v7, :cond_3

    .line 735
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #record:[B
    check-cast v6, [B

    .line 736
    .restart local v6       #record:[B
    new-instance v0, Lcom/android/internal/telephony/AdnRecord;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfAdnId()I

    move-result v8

    add-int/lit8 v9, v4, 0x1

    invoke-direct {v0, v8, v9, v6}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 738
    .local v0, adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getExtRecord()I

    move-result v3

    .line 739
    .local v3, ext1RecordId:I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByAdnRecord(II)V

    .line 741
    const/16 v8, 0xff

    if-eq v3, v8, :cond_0

    .line 742
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->incExt1RecordRef(I)V

    .line 744
    if-le v3, v5, :cond_0

    .line 745
    const-string v8, "GSM"

    const-string v9, "ext1RecordId is too big"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getNumberLength()I

    move-result v8

    if-ge v8, v10, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 750
    const/4 v2, 0x0

    .line 752
    .local v2, data:[B
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getExtRecord()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #data:[B
    check-cast v2, [B

    .restart local v2       #data:[B
    if-nez v2, :cond_2

    .line 758
    .end local v2           #data:[B
    :cond_1
    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/AdnRecord;->truncNumber(I)V

    .line 759
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 755
    .restart local v2       #data:[B
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/AdnRecord;->appendExtRecordForNumber([B)V

    goto :goto_1

    .line 762
    .end local v0           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v2           #data:[B
    .end local v3           #ext1RecordId:I
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v8, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAdnRecords(Ljava/util/ArrayList;)V

    .line 765
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileRecord:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    array-length v8, v8

    invoke-virtual {v9, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAdnRecordSize(I)V

    .line 766
    return-void
.end method

.method private parseAnrRecords()V
    .locals 10

    .prologue
    const/16 v9, 0xf

    .line 769
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    .line 811
    :goto_0
    return-void

    .line 771
    :cond_0
    const/4 v5, 0x0

    .line 772
    .local v5, record:[B
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 775
    .local v4, maxExt1FileRecordId:I
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, s:I
    :goto_1
    if-ge v3, v6, :cond_6

    .line 776
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #record:[B
    check-cast v5, [B

    .line 777
    .restart local v5       #record:[B
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecord(I)Lcom/android/internal/telephony/AdnRecord;

    move-result-object v0

    .line 779
    .local v0, adn:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v0, :cond_1

    if-nez v5, :cond_2

    .line 775
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 782
    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/AdnRecord;->parseAdditionalNumber([B)V

    .line 784
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getExtRecordForAdditionalNumber()I

    move-result v2

    .line 785
    .local v2, ext1RecordId:I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByAnrRecord(II)V

    .line 787
    const/16 v7, 0xff

    if-eq v2, v7, :cond_3

    .line 788
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->incExt1RecordRef(I)V

    .line 790
    if-le v2, v4, :cond_3

    .line 791
    const-string v7, "GSM"

    const-string v8, "ext1RecordId is too big"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_3
    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getAdditionalNumberLength()I

    move-result v7

    if-ge v7, v9, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecordForAdditionalNumber()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 796
    const/4 v1, 0x0

    .line 798
    .local v1, data:[B
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getExtRecordForAdditionalNumber()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #data:[B
    check-cast v1, [B

    .restart local v1       #data:[B
    if-nez v1, :cond_5

    .line 804
    .end local v1           #data:[B
    :cond_4
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/AdnRecord;->truncAdditionalNumber(I)V

    .line 806
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v7, v3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAdnRecord(ILcom/android/internal/telephony/AdnRecord;)V

    goto :goto_2

    .line 801
    .restart local v1       #data:[B
    :cond_5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->appendExtRecordForAdditionalNumber([B)V

    goto :goto_3

    .line 810
    .end local v0           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v1           #data:[B
    .end local v2           #ext1RecordId:I
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    array-length v7, v7

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAnrRecordSize(I)V

    goto/16 :goto_0
.end method

.method private parseEmailRecords()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 879
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v8, :cond_0

    .line 920
    :goto_0
    return-void

    .line 884
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfEmailId()I

    move-result v0

    .line 885
    .local v0, efemailid:I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->isType1(I)Z

    move-result v5

    .line 887
    .local v5, isType1:Z
    if-eqz v5, :cond_1

    .line 893
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 894
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getFirstIapRecordIdLinkingEmailRecord(I)I

    move-result v4

    .line 895
    .local v4, iapRecordId:I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAdnRecordIdLinkedByEmailRecord(II)V

    .line 893
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 899
    .end local v3           #i:I
    .end local v4           #iapRecordId:I
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecords()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 901
    .local v6, len:I
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 902
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType2EmailFile()V

    .line 904
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v6, :cond_3

    .line 905
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 907
    .local v1, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 904
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 909
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecord(I)Lcom/android/internal/telephony/AdnRecord;

    move-result-object v7

    .line 911
    .local v7, rec:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v2, v8, [Ljava/lang/String;

    .line 912
    .local v2, emails:[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v8, v10, v2, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 913
    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 914
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v8, v3, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAdnRecord(ILcom/android/internal/telephony/AdnRecord;)V

    goto :goto_3

    .line 919
    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #emails:[Ljava/lang/String;
    .end local v6           #len:I
    .end local v7           #rec:Lcom/android/internal/telephony/AdnRecord;
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    array-length v8, v8

    invoke-virtual {v9, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setEmailRecordSize(I)V

    goto :goto_0
.end method

.method private parseExt1Records()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0xff

    .line 923
    const/4 v0, 0x0

    .line 924
    .local v0, data:[B
    const/16 v1, 0xff

    .line 926
    .local v1, ext1RecordId:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEfextid:I

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isLoaded(I)I

    move-result v3

    .line 931
    .local v3, n:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 932
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getExt1RecordLinker()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordLinker(Ljava/util/Map;)V

    .line 933
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getExt1ReferenceTable()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1ReferenceTable(Ljava/util/Map;)V

    goto :goto_0

    .line 937
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, s:I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 938
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #data:[B
    check-cast v0, [B

    .line 939
    .restart local v0       #data:[B
    array-length v5, v0

    const/16 v6, 0xd

    if-eq v5, v6, :cond_4

    .line 940
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByExt1Record(II)V

    .line 937
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 944
    :cond_4
    aget-byte v5, v0, v8

    and-int/lit8 v5, v5, 0x3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    aget-byte v5, v0, v8

    and-int/lit8 v5, v5, 0x3

    if-eq v5, v9, :cond_5

    .line 946
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByExt1Record(II)V

    goto :goto_2

    .line 950
    :cond_5
    aget-byte v5, v0, v9

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xa

    if-le v5, v6, :cond_6

    .line 951
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByExt1Record(II)V

    goto :goto_2

    .line 955
    :cond_6
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v0, v5

    and-int/lit16 v1, v5, 0xff

    .line 956
    add-int/lit8 v5, v2, 0x1

    if-ne v1, v5, :cond_7

    .line 957
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByExt1Record(II)V

    .line 961
    :goto_3
    if-eq v1, v7, :cond_3

    add-int/lit8 v5, v2, 0x1

    if-eq v1, v5, :cond_3

    .line 962
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->incExt1RecordRef(I)V

    goto :goto_2

    .line 959
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByExt1Record(II)V

    goto :goto_3
.end method

.method private parseIapRecords()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 814
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecords()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 823
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, s:I
    :goto_1
    if-ge v2, v5, :cond_4

    .line 824
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 826
    .local v4, record:[B
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v6, v4, v6

    and-int/lit16 v0, v6, 0xff

    .line 827
    .local v0, emailRecordId:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setEmailRecordIdLinkedByIapRecord(II)V

    .line 829
    const/16 v6, 0xff

    if-eq v0, v6, :cond_2

    .line 830
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 832
    .local v1, emails:[Ljava/lang/String;
    add-int/lit8 v6, v0, -0x1

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v8

    .line 833
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecord(I)Lcom/android/internal/telephony/AdnRecord;

    move-result-object v3

    .line 834
    .local v3, rec:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v3, :cond_3

    .line 835
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 840
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v6, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAdnRecord(ILcom/android/internal/telephony/AdnRecord;)V

    .line 823
    .end local v1           #emails:[Ljava/lang/String;
    .end local v3           #rec:Lcom/android/internal/telephony/AdnRecord;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 838
    .restart local v1       #emails:[Ljava/lang/String;
    .restart local v3       #rec:Lcom/android/internal/telephony/AdnRecord;
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/AdnRecord;

    .end local v3           #rec:Lcom/android/internal/telephony/AdnRecord;
    const-string v6, ""

    const-string v7, ""

    invoke-direct {v3, v6, v7, v1}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v3       #rec:Lcom/android/internal/telephony/AdnRecord;
    goto :goto_2

    .line 845
    .end local v0           #emailRecordId:I
    .end local v1           #emails:[Ljava/lang/String;
    .end local v3           #rec:Lcom/android/internal/telephony/AdnRecord;
    .end local v4           #record:[B
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v6, v6

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setIapRecordSize(I)V

    goto :goto_0
.end method

.method private readAdnFileAndWait(I)V
    .locals 6
    .parameter "recNum"

    .prologue
    const/16 v5, 0xc2

    .line 363
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 364
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    const/4 v1, 0x0

    .line 369
    .local v1, extEf:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 370
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 373
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v1, v5}, Lcom/android/internal/telephony/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 376
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "GSM"

    const-string v4, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readAdnFileAndWaitEx(I)V
    .locals 6
    .parameter "recNum"

    .prologue
    const/16 v5, 0xc0

    .line 635
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 636
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 639
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 640
    .local v1, efid:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setEfAdnId(I)V

    .line 642
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 645
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "GSM"

    const-string v4, "Interrupted Exception in readAdnFileAndWaitEx"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readAnrFileAndWaitEx(I)V
    .locals 6
    .parameter "recNum"

    .prologue
    const/16 v5, 0xc4

    .line 654
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 655
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 658
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 659
    .local v1, efid:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setEfAnrId(I)V

    .line 661
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 664
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "GSM"

    const-string v4, "Interrupted Exception in readAnrFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readEmailFileAndWait(I)V
    .locals 6
    .parameter "recNum"

    .prologue
    const/16 v5, 0xca

    .line 198
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 199
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 207
    .local v1, efid:I
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v3, :cond_2

    .line 208
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(I)V

    .line 209
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 210
    const-string v3, "GSM"

    const-string v4, "Error: IAP file is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 218
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 224
    const-string v3, "GSM"

    const-string v4, "Error: Email file is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "GSM"

    const-string v4, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 227
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord()V

    goto :goto_0
.end method

.method private readEmailFileAndWaitEx(I)V
    .locals 7
    .parameter "recNum"

    .prologue
    const/16 v6, 0xc1

    const/16 v5, 0xca

    .line 692
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 693
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 696
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 697
    .local v1, efid:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setEfEmailId(I)V

    .line 702
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v3, :cond_3

    .line 703
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(I)V

    .line 704
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 705
    const-string v3, "GSM"

    const-string v4, "Error: IAP file is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 708
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setEfIapId(I)V

    .line 711
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 714
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 720
    const-string v3, "GSM"

    const-string v4, "Error: Email file is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "GSM"

    const-string v4, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private readEmailRecord(I)Ljava/lang/String;
    .locals 6
    .parameter "recNum"

    .prologue
    .line 349
    const/4 v3, 0x0

    .line 351
    .local v3, emailRec:[B
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    const/4 v4, 0x0

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 358
    :goto_0
    return-object v2

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readExt1FileAndWaitEx(I)V
    .locals 6
    .parameter "recNum"

    .prologue
    const/16 v5, 0xc2

    .line 673
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 674
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 677
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 678
    .local v1, efid:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setEfExt1Id(I)V

    .line 680
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 683
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "GSM"

    const-string v4, "Interrupted Exception in readExtFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readIapFileAndWait(I)V
    .locals 3
    .parameter "efid"

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "GSM"

    const-string v2, "Interrupted Exception in readIapFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readPbrFileAndWait()V
    .locals 4

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "GSM"

    const-string v2, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshCache()V
    .locals 3

    .prologue
    .line 174
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 181
    :cond_0
    return-void

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 177
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 178
    .local v1, numRecs:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 179
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private storeNewAdnRecord(IIILcom/android/internal/telephony/AdnRecord;)V
    .locals 3
    .parameter "recordNumber"
    .parameter "efAdnId"
    .parameter "adnRecordId"
    .parameter "newAdn"

    .prologue
    .line 1553
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 1554
    .local v0, uSimPbManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;
    if-eqz v0, :cond_0

    .line 1555
    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1, p4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAdnRecord(ILcom/android/internal/telephony/AdnRecord;)V

    .line 1557
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1558
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2, p4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1559
    :cond_1
    return-void
.end method

.method private updatePhoneAdnRecord()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 242
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    .line 309
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 244
    .local v5, numAdnRecs:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    .line 250
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 251
    const/4 v8, 0x0

    .line 253
    .local v8, record:[B
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #record:[B
    check-cast v8, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .restart local v8       #record:[B
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v7, v8, v9

    .line 261
    .local v7, recNum:I
    if-ge v7, v12, :cond_1

    .line 262
    add-int/lit16 v7, v7, 0x100

    .line 264
    :cond_1
    if-eq v7, v12, :cond_2

    .line 265
    const/4 v9, 0x1

    new-array v2, v9, [Ljava/lang/String;

    .line 267
    .local v2, emails:[Ljava/lang/String;
    add-int/lit8 v9, v7, -0x1

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v11

    .line 268
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordsNumLoaded:I

    add-int/2addr v10, v3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    .line 269
    .local v6, rec:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v6, :cond_5

    .line 270
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 275
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordsNumLoaded:I

    add-int/2addr v10, v3

    invoke-virtual {v9, v10, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 250
    .end local v2           #emails:[Ljava/lang/String;
    .end local v6           #rec:Lcom/android/internal/telephony/AdnRecord;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 254
    .end local v7           #recNum:I
    .end local v8           #record:[B
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "GSM"

    const-string v10, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v3           #i:I
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 287
    .local v4, len:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    if-nez v9, :cond_4

    .line 288
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1EmailFile(I)V

    .line 290
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v5, :cond_6

    .line 291
    const/4 v1, 0x0

    .line 293
    .local v1, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    .restart local v1       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_7

    .line 290
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 273
    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #len:I
    .restart local v2       #emails:[Ljava/lang/String;
    .restart local v6       #rec:Lcom/android/internal/telephony/AdnRecord;
    .restart local v7       #recNum:I
    .restart local v8       #record:[B
    :cond_5
    new-instance v6, Lcom/android/internal/telephony/AdnRecord;

    .end local v6           #rec:Lcom/android/internal/telephony/AdnRecord;
    const-string v9, ""

    const-string v10, ""

    invoke-direct {v6, v9, v10, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v6       #rec:Lcom/android/internal/telephony/AdnRecord;
    goto :goto_2

    .line 294
    .end local v2           #emails:[Ljava/lang/String;
    .end local v6           #rec:Lcom/android/internal/telephony/AdnRecord;
    .end local v7           #recNum:I
    .end local v8           #record:[B
    .restart local v4       #len:I
    :catch_1
    move-exception v0

    .line 307
    :cond_6
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 308
    iput v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordsNumLoaded:I

    goto/16 :goto_0

    .line 299
    .restart local v1       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordsNumLoaded:I

    add-int/2addr v10, v3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    .line 301
    .restart local v6       #rec:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v2, v9, [Ljava/lang/String;

    .line 302
    .restart local v2       #emails:[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v9, v11, v2, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 304
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordsNumLoaded:I

    add-int/2addr v10, v3

    invoke-virtual {v9, v10, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method private updatePhoneAdnRecordEx()V
    .locals 4

    .prologue
    .line 968
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 969
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    .line 971
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseExt1Records()V

    .line 972
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseAdnRecords()V

    .line 973
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseIapRecords()V

    .line 974
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseEmailRecords()V

    .line 975
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseAnrRecords()V

    .line 978
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v1, :cond_1

    .line 979
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfAdnId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->getSfi(I)I

    move-result v0

    .line 980
    .local v0, mfAdnSfi:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 981
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setEfAdnSfi(I)V

    .line 984
    .end local v0           #mfAdnSfi:I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfAdnId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 986
    return-void
.end method

.method private writeAdNumberWithExt1RecordChain(Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 20
    .parameter "uSimPbManager"
    .parameter "adNumber"
    .parameter "pin2"
    .parameter "anrRecordId"

    .prologue
    .line 1294
    const/4 v10, 0x0

    .line 1302
    .local v10, adNumberBytes:[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAnrRecordSize()I

    move-result v3

    .line 1304
    .local v3, anrRecordSize:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfAnrId()I

    move-result v12

    .line 1305
    .local v12, efAnrId:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfExt1Id()I

    move-result v13

    .line 1306
    .local v13, efExt1Id:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfAdnSfi()I

    move-result v8

    .line 1311
    .local v8, efAdnSfi:I
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1313
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xff

    move/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/internal/telephony/AdnRecord;->buildAnrString(I[BIIIII)[B

    move-result-object v11

    .line 1315
    .local v11, anrRecord:[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "usim contact: free EFanr record, EFanr = "

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v19, ", anrRecordId = "

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1316
    .local v18, log:Ljava/lang/String;
    const-string v9, "GSM"

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p3

    invoke-direct {v0, v12, v1, v11, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1318
    const-string v9, "GSM"

    const-string/jumbo v19, "usim contact: free EFadn record, error of writeEfRecord"

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    const/4 v9, 0x0

    move-object v4, v10

    .line 1393
    .end local v10           #adNumberBytes:[B
    .end local v11           #anrRecord:[B
    .end local v18           #log:Ljava/lang/String;
    .local v4, adNumberBytes:[B
    :goto_0
    return v9

    .line 1321
    .end local v4           #adNumberBytes:[B
    .restart local v10       #adNumberBytes:[B
    .restart local v11       #anrRecord:[B
    .restart local v18       #log:Ljava/lang/String;
    :cond_0
    const-string v9, "GSM"

    const-string/jumbo v19, "usim contact: free EFadn record, success"

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    const/16 v9, 0xff

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByAnrRecord(II)V

    .line 1324
    const/4 v9, 0x1

    move-object v4, v10

    .end local v10           #adNumberBytes:[B
    .restart local v4       #adNumberBytes:[B
    goto :goto_0

    .line 1327
    .end local v4           #adNumberBytes:[B
    .end local v11           #anrRecord:[B
    .end local v18           #log:Ljava/lang/String;
    .restart local v10       #adNumberBytes:[B
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v4

    .line 1328
    .end local v10           #adNumberBytes:[B
    .restart local v4       #adNumberBytes:[B
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->calcEmptyExt1RecordCntNeeded(Ljava/lang/String;)I

    move-result v14

    .line 1331
    .local v14, emptyExt1RecordCntNeeded:I
    const/4 v5, 0x0

    .line 1332
    .local v5, offset:I
    if-nez v14, :cond_2

    .line 1333
    const/16 v7, 0xff

    .line 1334
    .local v7, ext1RecordId:I
    array-length v6, v4

    .local v6, dataBytes:I
    :goto_1
    move/from16 v9, p4

    .line 1345
    invoke-static/range {v3 .. v9}, Lcom/android/internal/telephony/AdnRecord;->buildAnrString(I[BIIIII)[B

    move-result-object v11

    .line 1347
    .restart local v11       #anrRecord:[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "usim contact: write EFanr record, EFanr = "

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v19, ", anrRecordId = "

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1348
    .restart local v18       #log:Ljava/lang/String;
    const-string v9, "GSM"

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p3

    invoke-direct {v0, v12, v1, v11, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1350
    const-string/jumbo v9, "usim contact: write EFanr record, error of writeEfRecord"

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1351
    const-string v9, "GSM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    const/4 v9, 0x0

    goto :goto_0

    .line 1336
    .end local v6           #dataBytes:I
    .end local v7           #ext1RecordId:I
    .end local v11           #anrRecord:[B
    .end local v18           #log:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getFirstEmptyExt1RecordId()I

    move-result v7

    .line 1337
    .restart local v7       #ext1RecordId:I
    const/4 v9, 0x1

    if-ge v7, v9, :cond_3

    .line 1338
    const-string/jumbo v9, "usim contact: write EFanr record, error of no free ext1 record"

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1339
    const-string v9, "GSM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1342
    :cond_3
    const/16 v6, 0xb

    .restart local v6       #dataBytes:I
    goto :goto_1

    .line 1354
    .restart local v11       #anrRecord:[B
    .restart local v18       #log:Ljava/lang/String;
    :cond_4
    const-string v9, "GSM"

    const-string/jumbo v19, "usim contact: write EFanr record, success"

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByAnrRecord(II)V

    .line 1357
    const/16 v9, 0xff

    if-eq v7, v9, :cond_5

    .line 1358
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->incExt1RecordRef(I)V

    .line 1361
    :cond_5
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v14, :cond_a

    .line 1362
    mul-int/lit8 v9, v17, 0xa

    add-int/lit8 v5, v9, 0xb

    .line 1364
    array-length v9, v4

    add-int/lit8 v19, v5, 0xa

    move/from16 v0, v19

    if-le v9, v0, :cond_6

    .line 1365
    const/16 v6, 0xa

    .line 1366
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getFirstEmptyExt1RecordId()I

    move-result v16

    .line 1367
    .local v16, ext1RecordIdLinked:I
    const/4 v9, 0x1

    move/from16 v0, v16

    if-ge v0, v9, :cond_7

    .line 1368
    const-string/jumbo v9, "usim contact: write EFanr record, error of no free ext1 record"

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1369
    const-string v9, "GSM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1373
    .end local v16           #ext1RecordIdLinked:I
    :cond_6
    array-length v9, v4

    sub-int v6, v9, v5

    .line 1374
    const/16 v16, 0xff

    .line 1377
    .restart local v16       #ext1RecordIdLinked:I
    :cond_7
    move/from16 v0, v16

    invoke-static {v4, v5, v6, v0}, Lcom/android/internal/telephony/AdnRecord;->buildExt1String([BIII)[B

    move-result-object v15

    .line 1379
    .local v15, ext1Record:[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "usim contact: write EFext1 record, EFext1 = "

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v19, ", ext1RecordId = "

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1380
    const-string v9, "GSM"

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v13, v7, v15, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 1382
    const-string/jumbo v9, "usim contact: write EFext1 record, error of writeEfRecord"

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1383
    const-string v9, "GSM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1386
    :cond_8
    const-string v9, "GSM"

    const-string/jumbo v19, "usim contact: write EFext1 record, success"

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByExt1Record(II)V

    .line 1389
    const/16 v9, 0xff

    move/from16 v0, v16

    if-eq v0, v9, :cond_9

    .line 1390
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->incExt1RecordRef(I)V

    .line 1361
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 1393
    .end local v15           #ext1Record:[B
    .end local v16           #ext1RecordIdLinked:I
    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method private writeEfRecord(II[BLjava/lang/String;)Z
    .locals 8
    .parameter "efid"
    .parameter "recordId"
    .parameter "data"
    .parameter "pin2"

    .prologue
    const/4 v7, 0x0

    .line 1504
    if-nez p3, :cond_0

    .line 1505
    const-string/jumbo v0, "usim contact: parameter data is null for writeEfRecord"

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1506
    const-string v0, "GSM"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 1522
    :goto_0
    return v0

    .line 1510
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1512
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1514
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1520
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1522
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsWriteSuccess:Z

    goto :goto_0

    .line 1515
    :catch_0
    move-exception v6

    .line 1516
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v0, "Interrupted Exception in writeEfRecord"

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1517
    const-string v0, "GSM"

    const-string v2, "Interrupted Exception in writeEfRecord"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    monitor-exit v1

    move v0, v7

    goto :goto_0

    .line 1520
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private writeIapAndEmailRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 15
    .parameter "uSimPbManager"
    .parameter "email"
    .parameter "pin2"
    .parameter "iapRecordId"

    .prologue
    .line 1204
    const/4 v8, 0x0

    .line 1205
    .local v8, iapRecord:[B
    const/4 v5, 0x0

    .line 1209
    .local v5, emailRecord:[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getIapRecordSize()I

    move-result v9

    .line 1210
    .local v9, iapRecordSize:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEmailRecordSize()I

    move-result v7

    .line 1212
    .local v7, emailRecordSize:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfEmailId()I

    move-result v3

    .line 1213
    .local v3, efEmailId:I
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-virtual {v12, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->isType1(I)Z

    move-result v10

    .line 1215
    .local v10, isType1:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfIapId()I

    move-result v4

    .line 1216
    .local v4, efIapId:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfAdnSfi()I

    move-result v2

    .line 1218
    .local v2, efAdnSfi:I
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1220
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEmailRecordIdLinkedByIapRecord(I)I

    move-result v6

    .line 1221
    .local v6, emailRecordId:I
    const/16 v12, 0xff

    if-ne v6, v12, :cond_0

    .line 1222
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getFirstEmptyEmailRecordId()I

    move-result v6

    .line 1223
    const/4 v12, 0x1

    if-ge v6, v12, :cond_0

    .line 1224
    const-string/jumbo v12, "usim contact: write EFemail record, error of no free EFemail record"

    iput-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1225
    const-string v12, "GSM"

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const/4 v12, 0x0

    .line 1289
    :goto_0
    return v12

    .line 1230
    :cond_0
    iget v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    invoke-static {v9, v12, v6}, Lcom/android/internal/telephony/AdnRecord;->buildIapString(III)[B

    move-result-object v8

    .line 1232
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "usim contact: write EFiap record, EFiap = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", iapRecordId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1233
    .local v11, log:Ljava/lang/String;
    const-string v12, "GSM"

    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    move/from16 v0, p4

    move-object/from16 v1, p3

    invoke-direct {p0, v4, v0, v8, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1235
    const-string/jumbo v12, "usim contact: write EFiap record, error of writeEfRecord"

    iput-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1236
    const-string v12, "GSM"

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    const/4 v12, 0x0

    goto :goto_0

    .line 1239
    :cond_1
    const-string v12, "GSM"

    const-string/jumbo v13, "usim contact: write EFiap record, success"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setEmailRecordIdLinkedByIapRecord(II)V

    .line 1244
    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v7, v0, v2, v1, v10}, Lcom/android/internal/telephony/AdnRecord;->buildEmailString(ILjava/lang/String;IIZ)[B

    move-result-object v5

    .line 1246
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "usim contact: write EFemail record, EfEmail = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", emailRecordId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1247
    const-string v12, "GSM"

    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    move-object/from16 v0, p3

    invoke-direct {p0, v3, v6, v5, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1249
    const-string/jumbo v12, "usim contact: write EFemail record, error of writeEfRecord"

    iput-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1250
    const-string v12, "GSM"

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1253
    :cond_2
    const-string v12, "GSM"

    const-string/jumbo v13, "usim contact: write EFemail record, success"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAdnRecordIdLinkedByEmailRecord(II)V

    .line 1289
    :cond_3
    :goto_1
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1258
    .end local v6           #emailRecordId:I
    .end local v11           #log:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEmailRecordIdLinkedByIapRecord(I)I

    move-result v6

    .line 1259
    .restart local v6       #emailRecordId:I
    iget v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    const/16 v13, 0xff

    invoke-static {v9, v12, v13}, Lcom/android/internal/telephony/AdnRecord;->buildIapString(III)[B

    move-result-object v8

    .line 1261
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "usim contact: free EFiap record, EFiap = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", iapRecordId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1262
    .restart local v11       #log:Ljava/lang/String;
    const-string v12, "GSM"

    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    move/from16 v0, p4

    move-object/from16 v1, p3

    invoke-direct {p0, v4, v0, v8, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 1264
    const-string/jumbo v12, "usim contact: free EFiap record, error of writeEfRecord"

    iput-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1265
    const-string v12, "GSM"

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1268
    :cond_5
    const-string v12, "GSM"

    const-string/jumbo v13, "usim contact: free EFiap record, success"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    const/16 v12, 0xff

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setEmailRecordIdLinkedByIapRecord(II)V

    .line 1273
    const/16 v12, 0xff

    if-eq v6, v12, :cond_3

    .line 1274
    const/4 v12, 0x0

    const/16 v13, 0xff

    const/16 v14, 0xff

    invoke-static {v7, v12, v13, v14, v10}, Lcom/android/internal/telephony/AdnRecord;->buildEmailString(ILjava/lang/String;IIZ)[B

    move-result-object v5

    .line 1276
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "usim contact: free EFemail record, EFemail = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", emailRecordId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1277
    const-string v12, "GSM"

    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    move-object/from16 v0, p3

    invoke-direct {p0, v3, v6, v5, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 1279
    const-string/jumbo v12, "usim contact: free EFemail record, error of writeEfRecord"

    iput-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1280
    const-string v12, "GSM"

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1283
    :cond_6
    const-string v12, "GSM"

    const-string/jumbo v13, "usim contact: free EFemail record, success"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const/16 v12, 0xff

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAdnRecordIdLinkedByEmailRecord(II)V

    goto/16 :goto_1
.end method

.method private writeNumberWithExt1RecordChain(Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 19
    .parameter "uSimPbManager"
    .parameter "number"
    .parameter "tag"
    .parameter "pin2"
    .parameter "adnRecordId"

    .prologue
    .line 1398
    const/16 v17, 0x0

    .line 1406
    .local v17, numberBytes:[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecordSize()I

    move-result v3

    .line 1407
    .local v3, adnRecordSize:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfAdnId()I

    move-result v10

    .line 1408
    .local v10, efAdnId:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfExt1Id()I

    move-result v11

    .line 1410
    .local v11, efExt1Id:I
    const/4 v12, 0x0

    .line 1412
    .local v12, emptyExt1RecordCntNeeded:I
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1414
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xff

    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/AdnRecord;->buildAdnString(ILjava/lang/String;[BIII)[B

    move-result-object v9

    .line 1416
    .local v9, adnRecord:[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "usim contact: free EFadn record, EFadn = "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, ", adnRecordId = "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1417
    .local v16, log:Ljava/lang/String;
    const-string v4, "GSM"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p4

    invoke-direct {v0, v10, v1, v9, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1419
    const-string/jumbo v4, "usim contact: free EFadn record, error of writeEfRecord"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1420
    const-string v4, "GSM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    const/4 v4, 0x0

    move-object/from16 v5, v17

    .line 1500
    .end local v9           #adnRecord:[B
    .end local v16           #log:Ljava/lang/String;
    .end local v17           #numberBytes:[B
    .local v5, numberBytes:[B
    :goto_0
    return v4

    .line 1423
    .end local v5           #numberBytes:[B
    .restart local v9       #adnRecord:[B
    .restart local v16       #log:Ljava/lang/String;
    .restart local v17       #numberBytes:[B
    :cond_0
    const-string v4, "GSM"

    const-string/jumbo v18, "usim contact: free EFadn record, success"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    const/16 v4, 0xff

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByAdnRecord(II)V

    .line 1426
    const/4 v4, 0x1

    move-object/from16 v5, v17

    .end local v17           #numberBytes:[B
    .restart local v5       #numberBytes:[B
    goto :goto_0

    .line 1429
    .end local v5           #numberBytes:[B
    .end local v9           #adnRecord:[B
    .end local v16           #log:Ljava/lang/String;
    .restart local v17       #numberBytes:[B
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1430
    const/4 v5, 0x0

    .line 1434
    .end local v17           #numberBytes:[B
    .restart local v5       #numberBytes:[B
    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->calcEmptyExt1RecordCntNeeded(Ljava/lang/String;)I

    move-result v12

    .line 1437
    const/4 v6, 0x0

    .line 1438
    .local v6, offset:I
    if-nez v12, :cond_4

    .line 1439
    const/16 v8, 0xff

    .line 1440
    .local v8, ext1RecordId:I
    if-nez v5, :cond_3

    const/4 v7, 0x0

    .local v7, dataBytes:I
    :goto_2
    move-object/from16 v4, p3

    .line 1451
    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/AdnRecord;->buildAdnString(ILjava/lang/String;[BIII)[B

    move-result-object v9

    .line 1453
    .restart local v9       #adnRecord:[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "usim contact: write EFadn record, EFadn = "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, ", adnRecordId = "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1454
    .restart local v16       #log:Ljava/lang/String;
    const-string v4, "GSM"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p4

    invoke-direct {v0, v10, v1, v9, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1456
    const-string/jumbo v4, "usim contact: write EFadn record, error of writeEfRecord"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1457
    const-string v4, "GSM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    const/4 v4, 0x0

    goto :goto_0

    .line 1432
    .end local v5           #numberBytes:[B
    .end local v6           #offset:I
    .end local v7           #dataBytes:I
    .end local v8           #ext1RecordId:I
    .end local v9           #adnRecord:[B
    .end local v16           #log:Ljava/lang/String;
    .restart local v17       #numberBytes:[B
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v5

    .end local v17           #numberBytes:[B
    .restart local v5       #numberBytes:[B
    goto :goto_1

    .line 1440
    .restart local v6       #offset:I
    .restart local v8       #ext1RecordId:I
    :cond_3
    array-length v7, v5

    goto :goto_2

    .line 1442
    .end local v8           #ext1RecordId:I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getFirstEmptyExt1RecordId()I

    move-result v8

    .line 1443
    .restart local v8       #ext1RecordId:I
    const/4 v4, 0x1

    if-ge v8, v4, :cond_5

    .line 1444
    const-string/jumbo v4, "usim contact: write EFadn record, error of no free ext1 record"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1445
    const-string v4, "GSM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1448
    :cond_5
    const/16 v7, 0xb

    .restart local v7       #dataBytes:I
    goto :goto_2

    .line 1460
    .restart local v9       #adnRecord:[B
    .restart local v16       #log:Ljava/lang/String;
    :cond_6
    const-string v4, "GSM"

    const-string/jumbo v18, "usim contact: write EFadn record, success"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByAdnRecord(II)V

    .line 1463
    const/16 v4, 0xff

    if-eq v8, v4, :cond_7

    .line 1464
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->incExt1RecordRef(I)V

    .line 1467
    :cond_7
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    if-ge v15, v12, :cond_c

    .line 1468
    mul-int/lit8 v4, v15, 0xa

    add-int/lit8 v6, v4, 0xb

    .line 1471
    array-length v4, v5

    add-int/lit8 v18, v6, 0xa

    move/from16 v0, v18

    if-le v4, v0, :cond_8

    .line 1472
    const/16 v7, 0xa

    .line 1473
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getFirstEmptyExt1RecordId()I

    move-result v14

    .line 1474
    .local v14, ext1RecordIdLinked:I
    const/4 v4, 0x1

    if-ge v14, v4, :cond_9

    .line 1475
    const-string/jumbo v4, "usim contact: write EFadn record, error of no free ext1 record"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1476
    const-string v4, "GSM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1480
    .end local v14           #ext1RecordIdLinked:I
    :cond_8
    array-length v4, v5

    sub-int v7, v4, v6

    .line 1481
    const/16 v14, 0xff

    .line 1484
    .restart local v14       #ext1RecordIdLinked:I
    :cond_9
    invoke-static {v5, v6, v7, v14}, Lcom/android/internal/telephony/AdnRecord;->buildExt1String([BIII)[B

    move-result-object v13

    .line 1486
    .local v13, ext1Record:[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "usim contact: write EFext1 record, EFext1 = "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, ", ext1RecordId = "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1487
    const-string v4, "GSM"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v11, v8, v13, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1489
    const-string/jumbo v4, "usim contact: write EFext1 record, error of writeEfRecord"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1490
    const-string v4, "GSM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1493
    :cond_a
    const-string v4, "GSM"

    const-string/jumbo v18, "usim contact: write EFext1 record, success"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByExt1Record(II)V

    .line 1496
    const/16 v4, 0xff

    if-eq v14, v4, :cond_b

    .line 1497
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->incExt1RecordRef(I)V

    .line 1467
    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 1500
    .end local v13           #ext1Record:[B
    .end local v14           #ext1RecordIdLinked:I
    :cond_c
    const/4 v4, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 395
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 485
    :goto_0
    return-void

    .line 397
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 398
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 399
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 401
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 403
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 406
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    const-string v1, "Loading USIM ADN records done"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 407
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 408
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 409
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 411
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 412
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 413
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 416
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v1, "Loading USIM IAP records done"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 417
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 418
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 419
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 421
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 422
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 423
    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 426
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    const-string v1, "Loading USIM Email records done"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 427
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 428
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 429
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 432
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 433
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 434
    monitor-exit v2

    goto :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    .line 438
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    const-string v1, "Loading USIM additional numbers done"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 439
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 440
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    .line 441
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileRecord:Ljava/util/ArrayList;

    .line 444
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 445
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 446
    monitor-exit v2

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v1

    .line 449
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const-string v1, "Loading USIM additional numbers done"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 450
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 451
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_5

    .line 452
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    .line 455
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 456
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 457
    monitor-exit v2

    goto/16 :goto_0

    :catchall_5
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v1

    .line 460
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    const-string v1, "Loading USIM additional numbers done"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 461
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 462
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_6

    .line 463
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    .line 466
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 467
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 468
    monitor-exit v2

    goto/16 :goto_0

    :catchall_6
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v1

    .line 471
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    const-string v1, "Writing USIM EF record done"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 472
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 473
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_7

    .line 474
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsWriteSuccess:Z

    .line 479
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 480
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 481
    monitor-exit v2

    goto/16 :goto_0

    :catchall_7
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v1

    .line 476
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsWriteSuccess:Z

    goto :goto_1

    .line 395
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public hasAdditionalNumber()Z
    .locals 1

    .prologue
    .line 1658
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresent:Z

    return v0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 1669
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return v0
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 185
    return-void
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 145
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 146
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    if-eqz v2, :cond_0

    .line 147
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 148
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->refreshCache()V

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v3

    .line 170
    :goto_0
    return-object v2

    .line 153
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 157
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_3

    .line 158
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 161
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_4

    monitor-exit v3

    goto :goto_0

    .line 163
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 164
    .local v1, numRecs:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_5

    .line 165
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 166
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public loadEfFilesFromUsimEx()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1021
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1022
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1023
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    if-eqz v3, :cond_0

    .line 1024
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 1025
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->refreshCache()V

    .line 1027
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v4

    .line 1066
    :goto_0
    return-object v3

    .line 1030
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    monitor-exit v4

    goto :goto_0

    .line 1065
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1034
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_3

    .line 1035
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1038
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_4

    monitor-exit v4

    goto :goto_0

    .line 1040
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 1041
    .local v2, numRecs:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_8

    .line 1043
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1044
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1041
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1046
    :cond_6
    new-instance v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 1047
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWaitEx(I)V

    .line 1048
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWaitEx(I)V

    .line 1049
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrFileAndWaitEx(I)V

    .line 1052
    const/16 v3, 0xc2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0xc2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEfextid:I

    if-eq v3, v5, :cond_7

    .line 1053
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readExt1FileAndWaitEx(I)V

    .line 1054
    const/16 v3, 0xc2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEfextid:I

    .line 1060
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordEx()V

    goto :goto_2

    .line 1056
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEfextid:I

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setEfExt1Id(I)V

    goto :goto_3

    .line 1064
    .end local v0           #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAllAdns()V

    .line 1065
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1066
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method parseType1EmailFile(I)V
    .locals 9
    .parameter "numRecs"

    .prologue
    const/4 v8, -0x1

    .line 312
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 313
    const/4 v3, 0x0

    .line 314
    .local v3, emailRec:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_2

    .line 316
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #emailRec:[B
    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .restart local v3       #emailRec:[B
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-byte v0, v3, v6

    .line 324
    .local v0, adnRecNum:I
    if-ge v0, v8, :cond_0

    .line 325
    add-int/lit16 v0, v0, 0x100

    .line 327
    :cond_0
    if-ne v0, v8, :cond_3

    .line 314
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 317
    .end local v0           #adnRecNum:I
    .end local v3           #emailRec:[B
    :catch_0
    move-exception v1

    .line 318
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "GSM"

    const-string v7, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    return-void

    .line 331
    .restart local v0       #adnRecNum:I
    .restart local v3       #emailRec:[B
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, email:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 338
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 339
    .local v5, val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_4

    .line 340
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .restart local v5       #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method parseType2EmailFile()V
    .locals 8

    .prologue
    .line 849
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 850
    const/4 v2, 0x0

    .line 851
    .local v2, emailRec:[B
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, s:I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 852
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #emailRec:[B
    check-cast v2, [B

    .line 854
    .restart local v2       #emailRec:[B
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v2, v6

    and-int/lit16 v0, v6, 0xff

    .line 855
    .local v0, adnRecordId:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAdnRecordIdLinkedByEmailRecord(II)V

    .line 857
    const/16 v6, 0xff

    if-ne v0, v6, :cond_1

    .line 851
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 861
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v1

    .line 863
    .local v1, email:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 868
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 869
    .local v5, val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_2

    .line 870
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .restart local v5       #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 876
    .end local v0           #adnRecordId:I
    .end local v1           #email:Ljava/lang/String;
    .end local v5           #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 99
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 100
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 101
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 102
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 105
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 106
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresent:Z

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileRecord:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileRecord:Ljava/util/ArrayList;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    if-eqz v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->clear()V

    .line 125
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 130
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    .line 133
    :cond_4
    iput v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEfextid:I

    .line 134
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsWriteSuccess:Z

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnEfs:Ljava/util/Vector;

    if-eqz v0, :cond_5

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnEfs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 138
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnEfs:Ljava/util/Vector;

    .line 141
    :cond_5
    return-void
.end method

.method public updateEF(Lcom/android/internal/telephony/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "adn"
    .parameter "ef"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"

    .prologue
    const/4 v7, 0x0

    .line 1583
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnRecordByLogicalIndex(I)Lcom/android/internal/telephony/AdnRecord;

    move-result-object v3

    .line 1586
    .local v3, oldAdnRecord:Lcom/android/internal/telephony/AdnRecord;
    if-nez v3, :cond_1

    .line 1587
    if-eqz p5, :cond_0

    .line 1588
    invoke-static {p5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Adn records have not been loaded or recordNumber is out of range"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1590
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    .line 1648
    :cond_0
    :goto_0
    return-void

    .line 1596
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getEfId()I

    move-result v1

    .line 1597
    .local v1, efAdnId:I
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getRecordId()I

    move-result v2

    .line 1598
    .local v2, adnRecordId:I
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnRecordSize(I)I

    move-result v6

    .line 1601
    .local v6, adnRecordSize:I
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/AdnRecord;->setEfId(I)V

    .line 1602
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/AdnRecord;->setRecordId(I)V

    .line 1607
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/AdnRecord;->isEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1608
    if-eqz p5, :cond_0

    .line 1609
    invoke-static {p5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1610
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1616
    :cond_2
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/AdnRecord;->isLegal(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1617
    if-eqz p5, :cond_0

    .line 1618
    invoke-static {p5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Wrong sim contact parameter"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1619
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1624
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresent:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1625
    if-eqz p5, :cond_0

    .line 1626
    invoke-static {p5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "can\'t input additional number"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1627
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1632
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1633
    if-eqz p5, :cond_0

    .line 1634
    invoke-static {p5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "can\'t input email"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1635
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_5
    move-object v0, p0

    move-object v4, p1

    move-object v5, p4

    .line 1640
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->internalUpdateAdnRecord(IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1641
    invoke-direct {p0, p3, v1, v2, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->storeNewAdnRecord(IIILcom/android/internal/telephony/AdnRecord;)V

    .line 1642
    invoke-static {p5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1643
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1645
    :cond_6
    invoke-static {p5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v4, Ljava/lang/RuntimeException;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1646
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

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

    .line 85
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 54
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 55
    iput v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 59
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 62
    iput v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordsNumLoaded:I

    .line 598
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileRecord:Ljava/util/ArrayList;

    .line 599
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    .line 600
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    .line 602
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 603
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    .line 605
    iput v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEfextid:I

    .line 607
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsWriteSuccess:Z

    .line 609
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnEfs:Ljava/util/Vector;

    .line 611
    const-string v0, "error"

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 88
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 91
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 92
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 93
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
    .line 379
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 381
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 385
    :goto_0
    return-void

    .line 384
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

    .line 1058
    const/4 v1, 0x0

    .line 1060
    .local v1, ext1Record:[B
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfExt1Id()I

    move-result v0

    .line 1062
    .local v0, efExt1Id:I
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v5

    .local v5, s:I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 1063
    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1065
    .local v2, ext1RecordId:I
    const/4 v6, 0x0

    invoke-static {v6, v7, v7, v9}, Lcom/android/internal/telephony/AdnRecord;->buildExt1String([BIII)[B

    move-result-object v1

    .line 1066
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

    .line 1067
    .local v4, log:Ljava/lang/String;
    const-string v6, "GSM"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-direct {p0, v0, v2, v1, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1069
    const-string/jumbo v6, "usim contact: free EFext1 record, error of writeEfRecord"

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1070
    const-string v6, "GSM"

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1078
    .end local v2           #ext1RecordId:I
    .end local v4           #log:Ljava/lang/String;
    :goto_1
    return v6

    .line 1073
    .restart local v2       #ext1RecordId:I
    .restart local v4       #log:Ljava/lang/String;
    :cond_0
    const-string v6, "GSM"

    const-string/jumbo v8, "usim contact: free EFext1 record, success"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-virtual {p1, v2, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByExt1Record(II)V

    .line 1062
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1078
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
    .line 1048
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 1049
    .local v0, val:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;
    if-nez v0, :cond_0

    .line 1050
    const/4 v1, 0x0

    .line 1052
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

    .line 1500
    const/4 v6, 0x1

    if-lt p1, v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    if-nez v6, :cond_1

    :cond_0
    move-object v6, v7

    .line 1523
    :goto_0
    return-object v6

    .line 1508
    :cond_1
    const/4 v1, 0x0

    .line 1509
    .local v1, end:I
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnEfs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v3

    .local v3, s:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 1510
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnEfs:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1511
    .local v0, efAdnId:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 1512
    .local v5, usimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;
    if-nez v5, :cond_3

    .end local v0           #efAdnId:I
    .end local v5           #usimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;
    :cond_2
    move-object v6, v7

    .line 1523
    goto :goto_0

    .line 1515
    .restart local v0       #efAdnId:I
    .restart local v5       #usimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;
    :cond_3
    add-int/lit8 v4, v1, 0x1

    .line 1516
    .local v4, start:I
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecordCnt()I

    move-result v6

    add-int/2addr v1, v6

    .line 1518
    if-gt v4, p1, :cond_4

    if-gt p1, v1, :cond_4

    .line 1519
    sub-int v6, p1, v4

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecord(I)Lcom/android/internal/telephony/AdnRecord;

    move-result-object v6

    goto :goto_0

    .line 1509
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getAdnRecordSize(I)I
    .locals 3
    .parameter "efAdnId"

    .prologue
    .line 1536
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 1537
    .local v0, uSimPbManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecordSize()I

    move-result v1

    return v1
.end method

.method private getAllAdns()V
    .locals 5

    .prologue
    .line 986
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnEfs:Ljava/util/Vector;

    .line 987
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 988
    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 989
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 991
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 993
    .local v2, val:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecords()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 994
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnEfs:Ljava/util/Vector;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfAdnId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 996
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
    .line 1083
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 1086
    .local v5, uSimPbManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/AdnRecord;->getEmailLength()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmailLength()I

    move-result v4

    if-nez v4, :cond_0

    .line 1087
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEmptyEmailRecordCnt()I

    move-result v4

    const/4 v8, 0x1

    if-ge v4, v8, :cond_0

    .line 1088
    const-string v4, "GSM"

    const-string/jumbo v8, "usim contact: no free space for new email record, so can\'t update a contact"

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const/4 v4, 0x0

    .line 1173
    :goto_0
    return v4

    .line 1094
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v7

    .line 1096
    .local v7, tag:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 1097
    .local v6, number:Ljava/lang/String;
    const/16 v20, 0x0

    .line 1098
    .local v20, numberBytes:[B
    const/16 v19, 0x0

    .line 1100
    .local v19, emptyExt1RecordCntForNumber:I
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/AdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v14

    .line 1101
    .local v14, adNumber:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1102
    .local v15, adNumberBytes:[B
    const/16 v18, 0x0

    .line 1105
    .local v18, emptyExt1RecordCntForAdNumber:I
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1106
    const/16 v20, 0x0

    .line 1110
    :goto_1
    invoke-static {v6}, Lcom/android/internal/telephony/AdnRecord;->calcEmptyExt1RecordCntNeeded(Ljava/lang/String;)I

    move-result v19

    .line 1112
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1113
    const/4 v15, 0x0

    .line 1117
    :goto_2
    invoke-static {v14}, Lcom/android/internal/telephony/AdnRecord;->calcEmptyExt1RecordCntNeeded(Ljava/lang/String;)I

    move-result v18

    .line 1120
    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getRefCntChangeTableIfDeleteAdnRecord(I)Ljava/util/Map;

    move-result-object v16

    .line 1123
    .local v16, changeTable:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getExt1RecordIdToFreeIfDeleteAdnRecord(Ljava/util/Map;)Ljava/util/Vector;

    move-result-object v21

    .line 1126
    .local v21, toFree:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    add-int v4, v18, v19

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v8

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEmptyExt1RecordCnt()I

    move-result v9

    add-int/2addr v8, v9

    if-le v4, v8, :cond_3

    .line 1127
    const-string/jumbo v4, "usim contact: no free space for new number and additional number, so can\'t update a contact"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1128
    const-string v4, "GSM"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const/4 v4, 0x0

    goto :goto_0

    .line 1108
    .end local v16           #changeTable:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v21           #toFree:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_1
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v20

    goto :goto_1

    .line 1115
    :cond_2
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v15

    goto :goto_2

    .line 1135
    .restart local v16       #changeTable:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v21       #toFree:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->decRefCntByChangeTable(Ljava/util/Map;)V

    .line 1138
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    invoke-direct {v0, v5, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->freeExt1Records(Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;Ljava/util/Vector;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1139
    const/4 v4, 0x0

    goto :goto_0

    .line 1142
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

    .line 1143
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeNumberWithExt1RecordChain(Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1144
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1145
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

    .line 1146
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

    .line 1147
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1151
    :cond_8
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1152
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p2

    invoke-direct {v0, v5, v14, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeAdNumberWithExt1RecordChain(Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1153
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1154
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1155
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p2

    invoke-direct {v0, v5, v4, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeAdNumberWithExt1RecordChain(Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1156
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1161
    :cond_a
    const/16 v17, 0x0

    .line 1162
    .local v17, email:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 1163
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    aget-object v17, v4, v8

    .line 1165
    :cond_b
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1166
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p5

    move/from16 v3, p2

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeIapAndEmailRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1167
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1168
    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    aget-object v4, v4, v8

    if-eqz v4, :cond_d

    .line 1169
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p2

    invoke-direct {v0, v5, v4, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeIapAndEmailRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1170
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1173
    :cond_d
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method private isLoaded(I)I
    .locals 5
    .parameter "efid"

    .prologue
    .line 967
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 968
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 969
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 970
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 971
    .local v2, key:Ljava/lang/Integer;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 973
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

    .line 978
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 982
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
    .line 577
    const-string v0, "GSM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-void
.end method

.method private parseAdnRecords()V
    .locals 11

    .prologue
    const/16 v10, 0x30

    .line 708
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v1, adns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    const/4 v6, 0x0

    .line 711
    .local v6, record:[B
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 714
    .local v5, maxExt1FileRecordId:I
    const/4 v4, 0x0

    .local v4, i:I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, s:I
    :goto_0
    if-ge v4, v7, :cond_3

    .line 715
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #record:[B
    check-cast v6, [B

    .line 716
    .restart local v6       #record:[B
    new-instance v0, Lcom/android/internal/telephony/AdnRecord;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfAdnId()I

    move-result v8

    add-int/lit8 v9, v4, 0x1

    invoke-direct {v0, v8, v9, v6}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 718
    .local v0, adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getExtRecord()I

    move-result v3

    .line 719
    .local v3, ext1RecordId:I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByAdnRecord(II)V

    .line 721
    const/16 v8, 0xff

    if-eq v3, v8, :cond_0

    .line 722
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->incExt1RecordRef(I)V

    .line 724
    if-le v3, v5, :cond_0

    .line 725
    const-string v8, "GSM"

    const-string v9, "ext1RecordId is too big"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getNumberLength()I

    move-result v8

    if-ge v8, v10, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 730
    const/4 v2, 0x0

    .line 732
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

    .line 738
    .end local v2           #data:[B
    :cond_1
    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/AdnRecord;->truncNumber(I)V

    .line 739
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 735
    .restart local v2       #data:[B
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/AdnRecord;->appendExtRecordForNumber([B)V

    goto :goto_1

    .line 742
    .end local v0           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v2           #data:[B
    .end local v3           #ext1RecordId:I
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v8, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAdnRecords(Ljava/util/ArrayList;)V

    .line 745
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileRecord:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    array-length v8, v8

    invoke-virtual {v9, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAdnRecordSize(I)V

    .line 746
    return-void
.end method

.method private parseAnrRecords()V
    .locals 10

    .prologue
    const/16 v9, 0xf

    .line 749
    const/4 v5, 0x0

    .line 750
    .local v5, record:[B
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 753
    .local v4, maxExt1FileRecordId:I
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, s:I
    :goto_0
    if-ge v3, v6, :cond_5

    .line 754
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #record:[B
    check-cast v5, [B

    .line 755
    .restart local v5       #record:[B
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecord(I)Lcom/android/internal/telephony/AdnRecord;

    move-result-object v0

    .line 757
    .local v0, adn:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v0, :cond_0

    if-nez v5, :cond_1

    .line 753
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 760
    :cond_1
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/AdnRecord;->parseAdditionalNumber([B)V

    .line 762
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getExtRecordForAdditionalNumber()I

    move-result v2

    .line 763
    .local v2, ext1RecordId:I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByAnrRecord(II)V

    .line 765
    const/16 v7, 0xff

    if-eq v2, v7, :cond_2

    .line 766
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->incExt1RecordRef(I)V

    .line 768
    if-le v2, v4, :cond_2

    .line 769
    const-string v7, "GSM"

    const-string v8, "ext1RecordId is too big"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getAdditionalNumberLength()I

    move-result v7

    if-ge v7, v9, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecordForAdditionalNumber()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 774
    const/4 v1, 0x0

    .line 776
    .local v1, data:[B
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getExtRecordForAdditionalNumber()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #data:[B
    check-cast v1, [B

    .restart local v1       #data:[B
    if-nez v1, :cond_4

    .line 782
    .end local v1           #data:[B
    :cond_3
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/AdnRecord;->truncAdditionalNumber(I)V

    .line 784
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v7, v3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAdnRecord(ILcom/android/internal/telephony/AdnRecord;)V

    goto :goto_1

    .line 779
    .restart local v1       #data:[B
    :cond_4
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->appendExtRecordForAdditionalNumber([B)V

    goto :goto_2

    .line 788
    .end local v0           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v1           #data:[B
    .end local v2           #ext1RecordId:I
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    array-length v7, v7

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAnrRecordSize(I)V

    .line 789
    return-void
.end method

.method private parseEmailRecords()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 857
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v8, :cond_0

    .line 898
    :goto_0
    return-void

    .line 862
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfEmailId()I

    move-result v0

    .line 863
    .local v0, efemailid:I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->isType1(I)Z

    move-result v5

    .line 865
    .local v5, isType1:Z
    if-eqz v5, :cond_1

    .line 871
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 872
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getFirstIapRecordIdLinkingEmailRecord(I)I

    move-result v4

    .line 873
    .local v4, iapRecordId:I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAdnRecordIdLinkedByEmailRecord(II)V

    .line 871
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 877
    .end local v3           #i:I
    .end local v4           #iapRecordId:I
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecords()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 879
    .local v6, len:I
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 880
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType2EmailFile()V

    .line 882
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v6, :cond_3

    .line 883
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 885
    .local v1, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 882
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 887
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecord(I)Lcom/android/internal/telephony/AdnRecord;

    move-result-object v7

    .line 889
    .local v7, rec:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v2, v8, [Ljava/lang/String;

    .line 890
    .local v2, emails:[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v8, v10, v2, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 891
    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 892
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v8, v3, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAdnRecord(ILcom/android/internal/telephony/AdnRecord;)V

    goto :goto_3

    .line 897
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

    .line 901
    const/4 v0, 0x0

    .line 902
    .local v0, data:[B
    const/16 v1, 0xff

    .line 904
    .local v1, ext1RecordId:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEfextid:I

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isLoaded(I)I

    move-result v3

    .line 909
    .local v3, n:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 910
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

    .line 911
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

    .line 915
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, s:I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 916
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #data:[B
    check-cast v0, [B

    .line 917
    .restart local v0       #data:[B
    array-length v5, v0

    const/16 v6, 0xd

    if-eq v5, v6, :cond_4

    .line 918
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByExt1Record(II)V

    .line 915
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 922
    :cond_4
    aget-byte v5, v0, v8

    and-int/lit8 v5, v5, 0x3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    aget-byte v5, v0, v8

    and-int/lit8 v5, v5, 0x3

    if-eq v5, v9, :cond_5

    .line 924
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByExt1Record(II)V

    goto :goto_2

    .line 928
    :cond_5
    aget-byte v5, v0, v9

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xa

    if-le v5, v6, :cond_6

    .line 929
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByExt1Record(II)V

    goto :goto_2

    .line 933
    :cond_6
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v0, v5

    and-int/lit16 v1, v5, 0xff

    .line 934
    add-int/lit8 v5, v2, 0x1

    if-ne v1, v5, :cond_7

    .line 935
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByExt1Record(II)V

    .line 939
    :goto_3
    if-eq v1, v7, :cond_3

    add-int/lit8 v5, v2, 0x1

    if-eq v1, v5, :cond_3

    .line 940
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->incExt1RecordRef(I)V

    goto :goto_2

    .line 937
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

    .line 792
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecords()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 801
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, s:I
    :goto_1
    if-ge v2, v5, :cond_4

    .line 802
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 804
    .local v4, record:[B
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v6, v4, v6

    and-int/lit16 v0, v6, 0xff

    .line 805
    .local v0, emailRecordId:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setEmailRecordIdLinkedByIapRecord(II)V

    .line 807
    const/16 v6, 0xff

    if-eq v0, v6, :cond_2

    .line 808
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 810
    .local v1, emails:[Ljava/lang/String;
    add-int/lit8 v6, v0, -0x1

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v8

    .line 811
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecord(I)Lcom/android/internal/telephony/AdnRecord;

    move-result-object v3

    .line 812
    .local v3, rec:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v3, :cond_3

    .line 813
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 818
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v6, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAdnRecord(ILcom/android/internal/telephony/AdnRecord;)V

    .line 801
    .end local v1           #emails:[Ljava/lang/String;
    .end local v3           #rec:Lcom/android/internal/telephony/AdnRecord;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 816
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

    .line 823
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

    .line 359
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 360
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    const/4 v1, 0x0

    .line 365
    .local v1, extEf:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 366
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 369
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

    .line 372
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
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

    .line 615
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 616
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 619
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 620
    .local v1, efid:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setEfAdnId(I)V

    .line 622
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 625
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 626
    :catch_0
    move-exception v0

    .line 627
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

    .line 634
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 635
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 638
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 639
    .local v1, efid:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setEfAnrId(I)V

    .line 641
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 644
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 645
    :catch_0
    move-exception v0

    .line 646
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

    .line 194
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 195
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 203
    .local v1, efid:I
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v3, :cond_2

    .line 204
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(I)V

    .line 205
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 206
    const-string v3, "GSM"

    const-string v4, "Error: IAP file is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
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

    .line 214
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 220
    const-string v3, "GSM"

    const-string v4, "Error: Email file is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "GSM"

    const-string v4, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 223
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

    .line 672
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 673
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_1

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 676
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 677
    .local v1, efid:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setEfEmailId(I)V

    .line 682
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v3, :cond_3

    .line 683
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(I)V

    .line 684
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 685
    const-string v3, "GSM"

    const-string v4, "Error: IAP file is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 688
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

    .line 691
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

    .line 694
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 700
    const-string v3, "GSM"

    const-string v4, "Error: Email file is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 695
    :catch_0
    move-exception v0

    .line 696
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
    .line 345
    const/4 v3, 0x0

    .line 347
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

    .line 353
    const/4 v4, 0x0

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 354
    :goto_0
    return-object v2

    .line 348
    :catch_0
    move-exception v1

    .line 349
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readExt1FileAndWaitEx(I)V
    .locals 6
    .parameter "recNum"

    .prologue
    const/16 v5, 0xc2

    .line 653
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 654
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 657
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 658
    .local v1, efid:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setEfExt1Id(I)V

    .line 660
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 663
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 664
    :catch_0
    move-exception v0

    .line 665
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
    .line 229
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "GSM"

    const-string v2, "Interrupted Exception in readIapFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readPbrFileAndWait()V
    .locals 4

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "GSM"

    const-string v2, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshCache()V
    .locals 3

    .prologue
    .line 170
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 177
    :cond_0
    return-void

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 173
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 174
    .local v1, numRecs:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 175
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 174
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
    .line 1527
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 1528
    .local v0, uSimPbManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;
    if-eqz v0, :cond_0

    .line 1529
    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1, p4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAdnRecord(ILcom/android/internal/telephony/AdnRecord;)V

    .line 1531
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1532
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2, p4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1533
    :cond_1
    return-void
.end method

.method private updatePhoneAdnRecord()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 238
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    .line 305
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 240
    .local v5, numAdnRecs:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    .line 246
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 247
    const/4 v8, 0x0

    .line 249
    .local v8, record:[B
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #record:[B
    check-cast v8, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .restart local v8       #record:[B
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v7, v8, v9

    .line 257
    .local v7, recNum:I
    if-ge v7, v12, :cond_1

    .line 258
    add-int/lit16 v7, v7, 0x100

    .line 260
    :cond_1
    if-eq v7, v12, :cond_2

    .line 261
    const/4 v9, 0x1

    new-array v2, v9, [Ljava/lang/String;

    .line 263
    .local v2, emails:[Ljava/lang/String;
    add-int/lit8 v9, v7, -0x1

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v11

    .line 264
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordsNumLoaded:I

    add-int/2addr v10, v3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    .line 265
    .local v6, rec:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v6, :cond_5

    .line 266
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 271
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordsNumLoaded:I

    add-int/2addr v10, v3

    invoke-virtual {v9, v10, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 246
    .end local v2           #emails:[Ljava/lang/String;
    .end local v6           #rec:Lcom/android/internal/telephony/AdnRecord;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 250
    .end local v7           #recNum:I
    .end local v8           #record:[B
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "GSM"

    const-string v10, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v3           #i:I
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 283
    .local v4, len:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    if-nez v9, :cond_4

    .line 284
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1EmailFile(I)V

    .line 286
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v5, :cond_6

    .line 287
    const/4 v1, 0x0

    .line 289
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

    .line 293
    .restart local v1       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_7

    .line 286
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 269
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

    .line 290
    .end local v2           #emails:[Ljava/lang/String;
    .end local v6           #rec:Lcom/android/internal/telephony/AdnRecord;
    .end local v7           #recNum:I
    .end local v8           #record:[B
    .restart local v4       #len:I
    :catch_1
    move-exception v0

    .line 303
    :cond_6
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 304
    iput v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordsNumLoaded:I

    goto/16 :goto_0

    .line 295
    .restart local v1       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordsNumLoaded:I

    add-int/2addr v10, v3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    .line 297
    .restart local v6       #rec:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v2, v9, [Ljava/lang/String;

    .line 298
    .restart local v2       #emails:[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v9, v11, v2, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 300
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordsNumLoaded:I

    add-int/2addr v10, v3

    invoke-virtual {v9, v10, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method private updatePhoneAdnRecordEx()V
    .locals 4

    .prologue
    .line 946
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 947
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    .line 949
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseExt1Records()V

    .line 950
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseAdnRecords()V

    .line 951
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseIapRecords()V

    .line 952
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseEmailRecords()V

    .line 953
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseAnrRecords()V

    .line 956
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v1, :cond_1

    .line 957
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfAdnId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->getSfi(I)I

    move-result v0

    .line 958
    .local v0, mfAdnSfi:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 959
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setEfAdnSfi(I)V

    .line 962
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

    .line 963
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 964
    return-void
.end method

.method private writeAdNumberWithExt1RecordChain(Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 20
    .parameter "uSimPbManager"
    .parameter "adNumber"
    .parameter "pin2"
    .parameter "anrRecordId"

    .prologue
    .line 1268
    const/4 v10, 0x0

    .line 1276
    .local v10, adNumberBytes:[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAnrRecordSize()I

    move-result v3

    .line 1278
    .local v3, anrRecordSize:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfAnrId()I

    move-result v12

    .line 1279
    .local v12, efAnrId:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfExt1Id()I

    move-result v13

    .line 1280
    .local v13, efExt1Id:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfAdnSfi()I

    move-result v8

    .line 1285
    .local v8, efAdnSfi:I
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1287
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xff

    move/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/internal/telephony/AdnRecord;->buildAnrString(I[BIIIII)[B

    move-result-object v11

    .line 1289
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

    .line 1290
    .local v18, log:Ljava/lang/String;
    const-string v9, "GSM"

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p3

    invoke-direct {v0, v12, v1, v11, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1292
    const-string v9, "GSM"

    const-string/jumbo v19, "usim contact: free EFadn record, error of writeEfRecord"

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const/4 v9, 0x0

    move-object v4, v10

    .line 1367
    .end local v10           #adNumberBytes:[B
    .end local v11           #anrRecord:[B
    .end local v18           #log:Ljava/lang/String;
    .local v4, adNumberBytes:[B
    :goto_0
    return v9

    .line 1295
    .end local v4           #adNumberBytes:[B
    .restart local v10       #adNumberBytes:[B
    .restart local v11       #anrRecord:[B
    .restart local v18       #log:Ljava/lang/String;
    :cond_0
    const-string v9, "GSM"

    const-string/jumbo v19, "usim contact: free EFadn record, success"

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const/16 v9, 0xff

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByAnrRecord(II)V

    .line 1298
    const/4 v9, 0x1

    move-object v4, v10

    .end local v10           #adNumberBytes:[B
    .restart local v4       #adNumberBytes:[B
    goto :goto_0

    .line 1301
    .end local v4           #adNumberBytes:[B
    .end local v11           #anrRecord:[B
    .end local v18           #log:Ljava/lang/String;
    .restart local v10       #adNumberBytes:[B
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v4

    .line 1302
    .end local v10           #adNumberBytes:[B
    .restart local v4       #adNumberBytes:[B
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->calcEmptyExt1RecordCntNeeded(Ljava/lang/String;)I

    move-result v14

    .line 1305
    .local v14, emptyExt1RecordCntNeeded:I
    const/4 v5, 0x0

    .line 1306
    .local v5, offset:I
    if-nez v14, :cond_2

    .line 1307
    const/16 v7, 0xff

    .line 1308
    .local v7, ext1RecordId:I
    array-length v6, v4

    .local v6, dataBytes:I
    :goto_1
    move/from16 v9, p4

    .line 1319
    invoke-static/range {v3 .. v9}, Lcom/android/internal/telephony/AdnRecord;->buildAnrString(I[BIIIII)[B

    move-result-object v11

    .line 1321
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

    .line 1322
    .restart local v18       #log:Ljava/lang/String;
    const-string v9, "GSM"

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p3

    invoke-direct {v0, v12, v1, v11, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1324
    const-string/jumbo v9, "usim contact: write EFanr record, error of writeEfRecord"

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1325
    const-string v9, "GSM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    const/4 v9, 0x0

    goto :goto_0

    .line 1310
    .end local v6           #dataBytes:I
    .end local v7           #ext1RecordId:I
    .end local v11           #anrRecord:[B
    .end local v18           #log:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getFirstEmptyExt1RecordId()I

    move-result v7

    .line 1311
    .restart local v7       #ext1RecordId:I
    const/4 v9, 0x1

    if-ge v7, v9, :cond_3

    .line 1312
    const-string/jumbo v9, "usim contact: write EFanr record, error of no free ext1 record"

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1313
    const-string v9, "GSM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1316
    :cond_3
    const/16 v6, 0xb

    .restart local v6       #dataBytes:I
    goto :goto_1

    .line 1328
    .restart local v11       #anrRecord:[B
    .restart local v18       #log:Ljava/lang/String;
    :cond_4
    const-string v9, "GSM"

    const-string/jumbo v19, "usim contact: write EFanr record, success"

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByAnrRecord(II)V

    .line 1331
    const/16 v9, 0xff

    if-eq v7, v9, :cond_5

    .line 1332
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->incExt1RecordRef(I)V

    .line 1335
    :cond_5
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v14, :cond_a

    .line 1336
    mul-int/lit8 v9, v17, 0xa

    add-int/lit8 v5, v9, 0xb

    .line 1338
    array-length v9, v4

    add-int/lit8 v19, v5, 0xa

    move/from16 v0, v19

    if-le v9, v0, :cond_6

    .line 1339
    const/16 v6, 0xa

    .line 1340
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getFirstEmptyExt1RecordId()I

    move-result v16

    .line 1341
    .local v16, ext1RecordIdLinked:I
    const/4 v9, 0x1

    move/from16 v0, v16

    if-ge v0, v9, :cond_7

    .line 1342
    const-string/jumbo v9, "usim contact: write EFanr record, error of no free ext1 record"

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1343
    const-string v9, "GSM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1347
    .end local v16           #ext1RecordIdLinked:I
    :cond_6
    array-length v9, v4

    sub-int v6, v9, v5

    .line 1348
    const/16 v16, 0xff

    .line 1351
    .restart local v16       #ext1RecordIdLinked:I
    :cond_7
    move/from16 v0, v16

    invoke-static {v4, v5, v6, v0}, Lcom/android/internal/telephony/AdnRecord;->buildExt1String([BIII)[B

    move-result-object v15

    .line 1353
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

    .line 1354
    const-string v9, "GSM"

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v13, v7, v15, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 1356
    const-string/jumbo v9, "usim contact: write EFext1 record, error of writeEfRecord"

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1357
    const-string v9, "GSM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1360
    :cond_8
    const-string v9, "GSM"

    const-string/jumbo v19, "usim contact: write EFext1 record, success"

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByExt1Record(II)V

    .line 1363
    const/16 v9, 0xff

    move/from16 v0, v16

    if-eq v0, v9, :cond_9

    .line 1364
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->incExt1RecordRef(I)V

    .line 1335
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 1367
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

    .line 1478
    if-nez p3, :cond_0

    .line 1479
    const-string/jumbo v0, "usim contact: parameter data is null for writeEfRecord"

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1480
    const-string v0, "GSM"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 1496
    :goto_0
    return v0

    .line 1484
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

    .line 1486
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1488
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1494
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1496
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsWriteSuccess:Z

    goto :goto_0

    .line 1489
    :catch_0
    move-exception v6

    .line 1490
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v0, "Interrupted Exception in writeEfRecord"

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1491
    const-string v0, "GSM"

    const-string v2, "Interrupted Exception in writeEfRecord"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    monitor-exit v1

    move v0, v7

    goto :goto_0

    .line 1494
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
    .line 1178
    const/4 v8, 0x0

    .line 1179
    .local v8, iapRecord:[B
    const/4 v5, 0x0

    .line 1183
    .local v5, emailRecord:[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getIapRecordSize()I

    move-result v9

    .line 1184
    .local v9, iapRecordSize:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEmailRecordSize()I

    move-result v7

    .line 1186
    .local v7, emailRecordSize:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfEmailId()I

    move-result v3

    .line 1187
    .local v3, efEmailId:I
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-virtual {v12, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->isType1(I)Z

    move-result v10

    .line 1189
    .local v10, isType1:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfIapId()I

    move-result v4

    .line 1190
    .local v4, efIapId:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfAdnSfi()I

    move-result v2

    .line 1192
    .local v2, efAdnSfi:I
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1194
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEmailRecordIdLinkedByIapRecord(I)I

    move-result v6

    .line 1195
    .local v6, emailRecordId:I
    const/16 v12, 0xff

    if-ne v6, v12, :cond_0

    .line 1196
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getFirstEmptyEmailRecordId()I

    move-result v6

    .line 1197
    const/4 v12, 0x1

    if-ge v6, v12, :cond_0

    .line 1198
    const-string/jumbo v12, "usim contact: write EFemail record, error of no free EFemail record"

    iput-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1199
    const-string v12, "GSM"

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const/4 v12, 0x0

    .line 1263
    :goto_0
    return v12

    .line 1204
    :cond_0
    iget v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    invoke-static {v9, v12, v6}, Lcom/android/internal/telephony/AdnRecord;->buildIapString(III)[B

    move-result-object v8

    .line 1206
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

    .line 1207
    .local v11, log:Ljava/lang/String;
    const-string v12, "GSM"

    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    move/from16 v0, p4

    move-object/from16 v1, p3

    invoke-direct {p0, v4, v0, v8, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1209
    const-string/jumbo v12, "usim contact: write EFiap record, error of writeEfRecord"

    iput-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1210
    const-string v12, "GSM"

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const/4 v12, 0x0

    goto :goto_0

    .line 1213
    :cond_1
    const-string v12, "GSM"

    const-string/jumbo v13, "usim contact: write EFiap record, success"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setEmailRecordIdLinkedByIapRecord(II)V

    .line 1218
    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v7, v0, v2, v1, v10}, Lcom/android/internal/telephony/AdnRecord;->buildEmailString(ILjava/lang/String;IIZ)[B

    move-result-object v5

    .line 1220
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

    .line 1221
    const-string v12, "GSM"

    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    move-object/from16 v0, p3

    invoke-direct {p0, v3, v6, v5, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1223
    const-string/jumbo v12, "usim contact: write EFemail record, error of writeEfRecord"

    iput-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1224
    const-string v12, "GSM"

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1227
    :cond_2
    const-string v12, "GSM"

    const-string/jumbo v13, "usim contact: write EFemail record, success"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAdnRecordIdLinkedByEmailRecord(II)V

    .line 1263
    :cond_3
    :goto_1
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1232
    .end local v6           #emailRecordId:I
    .end local v11           #log:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEmailRecordIdLinkedByIapRecord(I)I

    move-result v6

    .line 1233
    .restart local v6       #emailRecordId:I
    iget v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    const/16 v13, 0xff

    invoke-static {v9, v12, v13}, Lcom/android/internal/telephony/AdnRecord;->buildIapString(III)[B

    move-result-object v8

    .line 1235
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

    .line 1236
    .restart local v11       #log:Ljava/lang/String;
    const-string v12, "GSM"

    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    move/from16 v0, p4

    move-object/from16 v1, p3

    invoke-direct {p0, v4, v0, v8, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 1238
    const-string/jumbo v12, "usim contact: free EFiap record, error of writeEfRecord"

    iput-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1239
    const-string v12, "GSM"

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1242
    :cond_5
    const-string v12, "GSM"

    const-string/jumbo v13, "usim contact: free EFiap record, success"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const/16 v12, 0xff

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setEmailRecordIdLinkedByIapRecord(II)V

    .line 1247
    const/16 v12, 0xff

    if-eq v6, v12, :cond_3

    .line 1248
    const/4 v12, 0x0

    const/16 v13, 0xff

    const/16 v14, 0xff

    invoke-static {v7, v12, v13, v14, v10}, Lcom/android/internal/telephony/AdnRecord;->buildEmailString(ILjava/lang/String;IIZ)[B

    move-result-object v5

    .line 1250
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

    .line 1251
    const-string v12, "GSM"

    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    move-object/from16 v0, p3

    invoke-direct {p0, v3, v6, v5, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 1253
    const-string/jumbo v12, "usim contact: free EFemail record, error of writeEfRecord"

    iput-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1254
    const-string v12, "GSM"

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1257
    :cond_6
    const-string v12, "GSM"

    const-string/jumbo v13, "usim contact: free EFemail record, success"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
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
    .line 1372
    const/16 v17, 0x0

    .line 1380
    .local v17, numberBytes:[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getAdnRecordSize()I

    move-result v3

    .line 1381
    .local v3, adnRecordSize:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfAdnId()I

    move-result v10

    .line 1382
    .local v10, efAdnId:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getEfExt1Id()I

    move-result v11

    .line 1384
    .local v11, efExt1Id:I
    const/4 v12, 0x0

    .line 1386
    .local v12, emptyExt1RecordCntNeeded:I
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1388
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xff

    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/AdnRecord;->buildAdnString(ILjava/lang/String;[BIII)[B

    move-result-object v9

    .line 1390
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

    .line 1391
    .local v16, log:Ljava/lang/String;
    const-string v4, "GSM"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p4

    invoke-direct {v0, v10, v1, v9, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1393
    const-string/jumbo v4, "usim contact: free EFadn record, error of writeEfRecord"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1394
    const-string v4, "GSM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    const/4 v4, 0x0

    move-object/from16 v5, v17

    .line 1474
    .end local v9           #adnRecord:[B
    .end local v16           #log:Ljava/lang/String;
    .end local v17           #numberBytes:[B
    .local v5, numberBytes:[B
    :goto_0
    return v4

    .line 1397
    .end local v5           #numberBytes:[B
    .restart local v9       #adnRecord:[B
    .restart local v16       #log:Ljava/lang/String;
    .restart local v17       #numberBytes:[B
    :cond_0
    const-string v4, "GSM"

    const-string/jumbo v18, "usim contact: free EFadn record, success"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const/16 v4, 0xff

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByAdnRecord(II)V

    .line 1400
    const/4 v4, 0x1

    move-object/from16 v5, v17

    .end local v17           #numberBytes:[B
    .restart local v5       #numberBytes:[B
    goto :goto_0

    .line 1403
    .end local v5           #numberBytes:[B
    .end local v9           #adnRecord:[B
    .end local v16           #log:Ljava/lang/String;
    .restart local v17       #numberBytes:[B
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1404
    const/4 v5, 0x0

    .line 1408
    .end local v17           #numberBytes:[B
    .restart local v5       #numberBytes:[B
    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->calcEmptyExt1RecordCntNeeded(Ljava/lang/String;)I

    move-result v12

    .line 1411
    const/4 v6, 0x0

    .line 1412
    .local v6, offset:I
    if-nez v12, :cond_4

    .line 1413
    const/16 v8, 0xff

    .line 1414
    .local v8, ext1RecordId:I
    if-nez v5, :cond_3

    const/4 v7, 0x0

    .local v7, dataBytes:I
    :goto_2
    move-object/from16 v4, p3

    .line 1425
    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/AdnRecord;->buildAdnString(ILjava/lang/String;[BIII)[B

    move-result-object v9

    .line 1427
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

    .line 1428
    .restart local v16       #log:Ljava/lang/String;
    const-string v4, "GSM"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p4

    invoke-direct {v0, v10, v1, v9, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1430
    const-string/jumbo v4, "usim contact: write EFadn record, error of writeEfRecord"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1431
    const-string v4, "GSM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    const/4 v4, 0x0

    goto :goto_0

    .line 1406
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

    .line 1414
    .restart local v6       #offset:I
    .restart local v8       #ext1RecordId:I
    :cond_3
    array-length v7, v5

    goto :goto_2

    .line 1416
    .end local v8           #ext1RecordId:I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getFirstEmptyExt1RecordId()I

    move-result v8

    .line 1417
    .restart local v8       #ext1RecordId:I
    const/4 v4, 0x1

    if-ge v8, v4, :cond_5

    .line 1418
    const-string/jumbo v4, "usim contact: write EFadn record, error of no free ext1 record"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1419
    const-string v4, "GSM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1422
    :cond_5
    const/16 v7, 0xb

    .restart local v7       #dataBytes:I
    goto :goto_2

    .line 1434
    .restart local v9       #adnRecord:[B
    .restart local v16       #log:Ljava/lang/String;
    :cond_6
    const-string v4, "GSM"

    const-string/jumbo v18, "usim contact: write EFadn record, success"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByAdnRecord(II)V

    .line 1437
    const/16 v4, 0xff

    if-eq v8, v4, :cond_7

    .line 1438
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->incExt1RecordRef(I)V

    .line 1441
    :cond_7
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    if-ge v15, v12, :cond_c

    .line 1442
    mul-int/lit8 v4, v15, 0xa

    add-int/lit8 v6, v4, 0xb

    .line 1445
    array-length v4, v5

    add-int/lit8 v18, v6, 0xa

    move/from16 v0, v18

    if-le v4, v0, :cond_8

    .line 1446
    const/16 v7, 0xa

    .line 1447
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getFirstEmptyExt1RecordId()I

    move-result v14

    .line 1448
    .local v14, ext1RecordIdLinked:I
    const/4 v4, 0x1

    if-ge v14, v4, :cond_9

    .line 1449
    const-string/jumbo v4, "usim contact: write EFadn record, error of no free ext1 record"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1450
    const-string v4, "GSM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1454
    .end local v14           #ext1RecordIdLinked:I
    :cond_8
    array-length v4, v5

    sub-int v7, v4, v6

    .line 1455
    const/16 v14, 0xff

    .line 1458
    .restart local v14       #ext1RecordIdLinked:I
    :cond_9
    invoke-static {v5, v6, v7, v14}, Lcom/android/internal/telephony/AdnRecord;->buildExt1String([BIII)[B

    move-result-object v13

    .line 1460
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

    .line 1461
    const-string v4, "GSM"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v11, v8, v13, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1463
    const-string/jumbo v4, "usim contact: write EFext1 record, error of writeEfRecord"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    .line 1464
    const-string v4, "GSM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1467
    :cond_a
    const-string v4, "GSM"

    const-string/jumbo v18, "usim contact: write EFext1 record, success"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setExt1RecordIdLinkedByExt1Record(II)V

    .line 1470
    const/16 v4, 0xff

    if-eq v14, v4, :cond_b

    .line 1471
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->incExt1RecordRef(I)V

    .line 1441
    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 1474
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
    .line 391
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 481
    :goto_0
    return-void

    .line 393
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 394
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 395
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 397
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 399
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 402
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    const-string v1, "Loading USIM ADN records done"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 403
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 404
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 405
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 407
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 408
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 409
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 412
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v1, "Loading USIM IAP records done"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 413
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 414
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 415
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 417
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 418
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 419
    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 422
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    const-string v1, "Loading USIM Email records done"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 423
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 424
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 425
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 428
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 429
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 430
    monitor-exit v2

    goto :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    .line 434
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    const-string v1, "Loading USIM additional numbers done"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 435
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 436
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    .line 437
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileRecord:Ljava/util/ArrayList;

    .line 440
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 441
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 442
    monitor-exit v2

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v1

    .line 445
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const-string v1, "Loading USIM additional numbers done"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 446
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 447
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_5

    .line 448
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    .line 451
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 452
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 453
    monitor-exit v2

    goto/16 :goto_0

    :catchall_5
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v1

    .line 456
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    const-string v1, "Loading USIM additional numbers done"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 457
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 458
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_6

    .line 459
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    .line 462
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 463
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 464
    monitor-exit v2

    goto/16 :goto_0

    :catchall_6
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v1

    .line 467
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    const-string v1, "Writing USIM EF record done"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 468
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 469
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_7

    .line 470
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsWriteSuccess:Z

    .line 475
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 476
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 477
    monitor-exit v2

    goto/16 :goto_0

    :catchall_7
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v1

    .line 472
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsWriteSuccess:Z

    goto :goto_1

    .line 391
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

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 181
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

    .line 140
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 141
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 142
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    if-eqz v2, :cond_0

    .line 143
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 144
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->refreshCache()V

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v3

    .line 166
    :goto_0
    return-object v2

    .line 149
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 153
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_3

    .line 154
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 157
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_4

    monitor-exit v3

    goto :goto_0

    .line 159
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 160
    .local v1, numRecs:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_5

    .line 161
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 162
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
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

    .line 999
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1000
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1001
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    if-eqz v3, :cond_0

    .line 1002
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 1003
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->refreshCache()V

    .line 1005
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v4

    .line 1044
    :goto_0
    return-object v3

    .line 1008
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    monitor-exit v4

    goto :goto_0

    .line 1043
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1012
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_3

    .line 1013
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1016
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_4

    monitor-exit v4

    goto :goto_0

    .line 1018
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 1019
    .local v2, numRecs:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_8

    .line 1021
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1022
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1019
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1024
    :cond_6
    new-instance v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 1025
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWaitEx(I)V

    .line 1026
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWaitEx(I)V

    .line 1027
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrFileAndWaitEx(I)V

    .line 1030
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

    .line 1031
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readExt1FileAndWaitEx(I)V

    .line 1032
    const/16 v3, 0xc2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEfextid:I

    .line 1038
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordEx()V

    goto :goto_2

    .line 1034
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEfextid:I

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setEfExt1Id(I)V

    goto :goto_3

    .line 1042
    .end local v0           #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAllAdns()V

    .line 1043
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1044
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method parseType1EmailFile(I)V
    .locals 9
    .parameter "numRecs"

    .prologue
    const/4 v8, -0x1

    .line 308
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 309
    const/4 v3, 0x0

    .line 310
    .local v3, emailRec:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_2

    .line 312
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #emailRec:[B
    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .restart local v3       #emailRec:[B
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-byte v0, v3, v6

    .line 320
    .local v0, adnRecNum:I
    if-ge v0, v8, :cond_0

    .line 321
    add-int/lit16 v0, v0, 0x100

    .line 323
    :cond_0
    if-ne v0, v8, :cond_3

    .line 310
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 313
    .end local v0           #adnRecNum:I
    .end local v3           #emailRec:[B
    :catch_0
    move-exception v1

    .line 314
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "GSM"

    const-string v7, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    return-void

    .line 327
    .restart local v0       #adnRecNum:I
    .restart local v3       #emailRec:[B
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, email:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 334
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 335
    .local v5, val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_4

    .line 336
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .restart local v5       #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
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
    .line 827
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 828
    const/4 v2, 0x0

    .line 829
    .local v2, emailRec:[B
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, s:I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 830
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #emailRec:[B
    check-cast v2, [B

    .line 832
    .restart local v2       #emailRec:[B
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v2, v6

    and-int/lit16 v0, v6, 0xff

    .line 833
    .local v0, adnRecordId:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->setAdnRecordIdLinkedByEmailRecord(II)V

    .line 835
    const/16 v6, 0xff

    if-ne v0, v6, :cond_1

    .line 829
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 839
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v1

    .line 841
    .local v1, email:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 846
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 847
    .local v5, val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_2

    .line 848
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 850
    .restart local v5       #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 854
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

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 97
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 98
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 99
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 100
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 101
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileRecord:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileRecord:Ljava/util/ArrayList;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 116
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->clear()V

    .line 121
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurUsimPbManagerEx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 126
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUsimPbManagerEx:Ljava/util/Map;

    .line 129
    :cond_4
    iput v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEfextid:I

    .line 130
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsWriteSuccess:Z

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnEfs:Ljava/util/Vector;

    if-eqz v0, :cond_5

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnEfs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 134
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnEfs:Ljava/util/Vector;

    .line 137
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

    .line 1557
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnRecordByLogicalIndex(I)Lcom/android/internal/telephony/AdnRecord;

    move-result-object v3

    .line 1560
    .local v3, oldAdnRecord:Lcom/android/internal/telephony/AdnRecord;
    if-nez v3, :cond_1

    .line 1561
    if-eqz p5, :cond_0

    .line 1562
    invoke-static {p5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Adn records have not been loaded or recordNumber is out of range"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1564
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    .line 1606
    :cond_0
    :goto_0
    return-void

    .line 1570
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getEfId()I

    move-result v1

    .line 1571
    .local v1, efAdnId:I
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getRecordId()I

    move-result v2

    .line 1572
    .local v2, adnRecordId:I
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnRecordSize(I)I

    move-result v6

    .line 1575
    .local v6, adnRecordSize:I
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/AdnRecord;->setEfId(I)V

    .line 1576
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/AdnRecord;->setRecordId(I)V

    .line 1581
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/AdnRecord;->isEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1582
    if-eqz p5, :cond_0

    .line 1583
    invoke-static {p5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1584
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1590
    :cond_2
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/AdnRecord;->isLegal(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1591
    if-eqz p5, :cond_0

    .line 1592
    invoke-static {p5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Wrong sim contact parameter"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1593
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v4, p1

    move-object v5, p4

    .line 1598
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->internalUpdateAdnRecord(IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1599
    invoke-direct {p0, p3, v1, v2, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->storeNewAdnRecord(IIILcom/android/internal/telephony/AdnRecord;)V

    .line 1600
    invoke-static {p5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1601
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1603
    :cond_4
    invoke-static {p5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v4, Ljava/lang/RuntimeException;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExceptionLog:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1604
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;
.super Ljava/lang/Object;
.source "UsimPhoneBookManagerEx.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field private static final DEFAULT_RECORD_NUM:I = 0xfa


# instance fields
.field private adnRecordId_ext1RecordId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private adnRecordSize:I

.field private adnRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private adnSfi:I

.field private anrRecordId_ext1RecordId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private anrRecordSize:I

.field private efAdnId:I

.field private efAnrId:I

.field private efEmailId:I

.field private efExe1Id:I

.field private efIapId:I

.field private emailRecordId_adnRecordId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private emailRecordSize:I

.field private ext1RecordId_ext1RecordId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ext1RecordId_referenceCnt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private iapRecordId_emailRecordId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private iapRecordSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xfa

    const/4 v1, 0x0

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x1c

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->adnRecordSize:I

    .line 20
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->adnSfi:I

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->iapRecordSize:I

    .line 26
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->emailRecordSize:I

    .line 29
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->anrRecordSize:I

    .line 31
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efAdnId:I

    .line 32
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efIapId:I

    .line 33
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efEmailId:I

    .line 34
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efAnrId:I

    .line 35
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efExe1Id:I

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->adnRecordId_ext1RecordId:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->anrRecordId_ext1RecordId:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->iapRecordId_emailRecordId:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->emailRecordId_adnRecordId:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_ext1RecordId:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_referenceCnt:Ljava/util/Map;

    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "adnNum"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x1c

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->adnRecordSize:I

    .line 20
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->adnSfi:I

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->iapRecordSize:I

    .line 26
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->emailRecordSize:I

    .line 29
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->anrRecordSize:I

    .line 31
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efAdnId:I

    .line 32
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efIapId:I

    .line 33
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efEmailId:I

    .line 34
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efAnrId:I

    .line 35
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efExe1Id:I

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->adnRecordId_ext1RecordId:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->anrRecordId_ext1RecordId:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->iapRecordId_emailRecordId:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->emailRecordId_adnRecordId:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_ext1RecordId:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_referenceCnt:Ljava/util/Map;

    .line 55
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->adnRecordSize:I

    .line 68
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->adnSfi:I

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->iapRecordSize:I

    .line 70
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->emailRecordSize:I

    .line 71
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->anrRecordSize:I

    .line 73
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efAdnId:I

    .line 74
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efIapId:I

    .line 75
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efEmailId:I

    .line 76
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efAnrId:I

    .line 77
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efExe1Id:I

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->adnRecordId_ext1RecordId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->anrRecordId_ext1RecordId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->iapRecordId_emailRecordId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->emailRecordId_adnRecordId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_ext1RecordId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_referenceCnt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 85
    return-void
.end method

.method public decExt1RecordRef(I)V
    .locals 4
    .parameter "ext1RecordId"

    .prologue
    .line 347
    if-ltz p1, :cond_0

    const/16 v1, 0xff

    if-lt p1, v1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_referenceCnt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 351
    .local v0, value:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_referenceCnt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public decRefCntByChangeTable(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, changeTable:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 466
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 467
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 468
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 469
    .local v2, key:I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 471
    .local v3, val:I
    :goto_0
    if-lez v3, :cond_0

    .line 472
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->decExt1RecordRef(I)V

    .line 473
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 476
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v2           #key:I
    .end local v3           #val:I
    :cond_1
    return-void
.end method

.method public getAdnRecord(I)Lcom/android/internal/telephony/AdnRecord;
    .locals 1
    .parameter "adnRecordId"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->adnRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    return-object v0
.end method

.method public getAdnRecordCnt()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->adnRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getAdnRecordIdLinkedByEmailRecord(I)I
    .locals 2
    .parameter "emailRecordId"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->emailRecordId_adnRecordId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAdnRecordSize()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->adnRecordSize:I

    return v0
.end method

.method public getAdnRecords()Ljava/util/ArrayList;
    .locals 1
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
    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->adnRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAnrRecordSize()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->anrRecordSize:I

    return v0
.end method

.method public getEfAdnId()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efAdnId:I

    return v0
.end method

.method public getEfAdnSfi()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->adnSfi:I

    return v0
.end method

.method public getEfAnrId()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efAnrId:I

    return v0
.end method

.method public getEfEmailId()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efEmailId:I

    return v0
.end method

.method public getEfExt1Id()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efExe1Id:I

    return v0
.end method

.method public getEfIapId()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efIapId:I

    return v0
.end method

.method public getEmailRecordIdLinkedByIapRecord(I)I
    .locals 2
    .parameter "iapRecordId"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->iapRecordId_emailRecordId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEmailRecordSize()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->emailRecordSize:I

    return v0
.end method

.method public getEmptyEmailRecordCnt()I
    .locals 5

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 237
    .local v0, cnt:I
    const/4 v1, 0x1

    .local v1, i:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->emailRecordId_adnRecordId:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .local v2, s:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 238
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->emailRecordId_adnRecordId:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_0

    .line 239
    add-int/lit8 v0, v0, 0x1

    .line 237
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_1
    return v0
.end method

.method public getEmptyExt1RecordCnt()I
    .locals 5

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 298
    .local v0, cnt:I
    const/4 v1, 0x1

    .local v1, i:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_ext1RecordId:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .local v2, s:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 299
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_referenceCnt:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_referenceCnt:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 300
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 298
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_2
    return v0
.end method

.method public getExt1RecordIdChainLinkedByAdnRecord(I)Ljava/util/Vector;
    .locals 3
    .parameter "adnRecordId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 143
    .local v1, ext1RecordIdChain:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getExt1RecordIdLinkedByAdnRecord(I)I

    move-result v0

    .line 147
    .local v0, ext1RecordId:I
    :goto_0
    const/16 v2, 0xff

    if-eq v0, v2, :cond_0

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getExt1RecordIdLinkedByExt1Record(I)I

    move-result v0

    goto :goto_0

    .line 154
    :cond_0
    return-object v1
.end method

.method public getExt1RecordIdChainLinkedByAnrRecord(I)Ljava/util/Vector;
    .locals 3
    .parameter "anrRecordId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 160
    .local v1, ext1RecordIdChain:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getExt1RecordIdLinkedByAnrRecord(I)I

    move-result v0

    .line 164
    .local v0, ext1RecordId:I
    :goto_0
    const/16 v2, 0xff

    if-eq v0, v2, :cond_0

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getExt1RecordIdLinkedByExt1Record(I)I

    move-result v0

    goto :goto_0

    .line 171
    :cond_0
    return-object v1
.end method

.method public getExt1RecordIdLinkedByAdnRecord(I)I
    .locals 2
    .parameter "adnRecordId"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->adnRecordId_ext1RecordId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getExt1RecordIdLinkedByAnrRecord(I)I
    .locals 3
    .parameter "anrRecordId"

    .prologue
    .line 275
    const/16 v0, 0xff

    .line 278
    .local v0, ext1RecordId:I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->anrRecordId_ext1RecordId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 283
    :goto_0
    return v0

    .line 279
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getExt1RecordIdLinkedByExt1Record(I)I
    .locals 2
    .parameter "ext1RecordId"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_ext1RecordId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getExt1RecordIdToFreeIfDeleteAdnRecord(Ljava/util/Map;)Ljava/util/Vector;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, changeTable:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 450
    .local v3, toFree:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 451
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 452
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 453
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 454
    .local v2, key:Ljava/lang/Integer;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 456
    .local v4, val:Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getRefCntOfExt1Record(I)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 457
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 461
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v4           #val:Ljava/lang/Integer;
    :cond_1
    return-object v3
.end method

.method public getExt1RecordLinker()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_ext1RecordId:Ljava/util/Map;

    return-object v0
.end method

.method public getExt1ReferenceTable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_referenceCnt:Ljava/util/Map;

    return-object v0
.end method

.method public getFirstEmptyEmailRecordId()I
    .locals 4

    .prologue
    .line 226
    const/4 v0, 0x1

    .local v0, i:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->emailRecordId_adnRecordId:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 227
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->emailRecordId_adnRecordId:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    .line 231
    .end local v0           #i:I
    :goto_1
    return v0

    .line 226
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getFirstEmptyExt1RecordId()I
    .locals 4

    .prologue
    .line 308
    const/4 v0, 0x1

    .local v0, i:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_ext1RecordId:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 309
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_referenceCnt:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_referenceCnt:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 314
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v0

    .line 308
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getFirstIapRecordIdLinkingEmailRecord(I)I
    .locals 4
    .parameter "emailRecordId"

    .prologue
    .line 200
    const/4 v0, 0x1

    .local v0, i:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->iapRecordId_emailRecordId:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 201
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->iapRecordId_emailRecordId:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 205
    .end local v0           #i:I
    :goto_1
    return v0

    .line 200
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getIapRecordSize()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->iapRecordSize:I

    return v0
.end method

.method public getRefCntChangeTableIfDeleteAdnRecord(I)Ljava/util/Map;
    .locals 13
    .parameter "adnRecordId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 385
    .local v0, changeTable:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getExt1RecordIdChainLinkedByAdnRecord(I)Ljava/util/Vector;

    move-result-object v2

    .line 386
    .local v2, ext1RecordIdChainLinkedByAdnRecord:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getExt1RecordIdChainLinkedByAnrRecord(I)Ljava/util/Vector;

    move-result-object v3

    .line 389
    .local v3, ext1RecordIdChainLinkedByAnrRecord:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v4, -0x1

    .line 390
    .local v4, firstSharedExt1RecordId:I
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .local v5, i:I
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    .line 391
    .local v6, j:I
    :goto_0
    const/4 v11, -0x1

    if-le v5, v11, :cond_0

    const/4 v11, -0x1

    if-le v6, v11, :cond_0

    .line 392
    invoke-virtual {v2, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eq v11, v12, :cond_3

    .line 402
    :cond_0
    const/4 v8, 0x1

    .line 403
    .local v8, lastRefCnt:I
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v10

    .local v10, s:I
    :goto_1
    if-ge v5, v10, :cond_1

    .line 404
    invoke-virtual {v2, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 405
    .local v1, ext1RecordId:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getRefCntOfExt1Record(I)I

    move-result v9

    .line 407
    .local v9, nowRefCnt:I
    const/4 v11, 0x1

    if-eq v8, v11, :cond_4

    .line 414
    .end local v1           #ext1RecordId:I
    .end local v9           #nowRefCnt:I
    :cond_1
    const/4 v7, -0x1

    .line 415
    .local v7, lastExt1RecordId:I
    const/4 v8, 0x1

    .line 416
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v10

    :goto_2
    if-ge v5, v10, :cond_2

    .line 417
    invoke-virtual {v3, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 418
    .restart local v1       #ext1RecordId:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->getRefCntOfExt1Record(I)I

    move-result v9

    .line 420
    .restart local v9       #nowRefCnt:I
    const/4 v11, 0x2

    if-le v8, v11, :cond_5

    .line 444
    .end local v1           #ext1RecordId:I
    .end local v9           #nowRefCnt:I
    :cond_2
    return-object v0

    .line 395
    .end local v7           #lastExt1RecordId:I
    .end local v8           #lastRefCnt:I
    .end local v10           #s:I
    :cond_3
    invoke-virtual {v2, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 391
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 409
    .restart local v1       #ext1RecordId:I
    .restart local v8       #lastRefCnt:I
    .restart local v9       #nowRefCnt:I
    .restart local v10       #s:I
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    move v8, v9

    .line 403
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 422
    .restart local v7       #lastExt1RecordId:I
    :cond_5
    const/4 v11, 0x2

    if-ne v8, v11, :cond_6

    .line 423
    if-ne v7, v4, :cond_2

    .line 424
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :goto_3
    move v8, v9

    .line 441
    move v7, v1

    .line 416
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 429
    :cond_6
    if-eq v1, v4, :cond_7

    .line 430
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 432
    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_8

    .line 433
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 435
    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public getRefCntOfExt1Record(I)I
    .locals 3
    .parameter "ext1RecordId"

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_referenceCnt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 360
    .local v0, value:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 364
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public incExt1RecordRef(I)V
    .locals 4
    .parameter "ext1RecordId"

    .prologue
    .line 335
    if-ltz p1, :cond_0

    const/16 v1, 0xff

    if-lt p1, v1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_referenceCnt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 339
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 340
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_referenceCnt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 342
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_referenceCnt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAdnRecord(ILcom/android/internal/telephony/AdnRecord;)V
    .locals 1
    .parameter "adnRecordId"
    .parameter "adnRecord"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->adnRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public setAdnRecordIdLinkedByEmailRecord(II)V
    .locals 3
    .parameter "emailRecordId"
    .parameter "adnRecordId"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->emailRecordId_adnRecordId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    return-void
.end method

.method public setAdnRecordSize(I)V
    .locals 0
    .parameter "adnRecordSize"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->adnRecordSize:I

    .line 98
    return-void
.end method

.method public setAdnRecords(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, adnRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->adnRecords:Ljava/util/ArrayList;

    .line 110
    return-void
.end method

.method public setAnrRecordSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 255
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->anrRecordSize:I

    .line 256
    return-void
.end method

.method public setEfAdnId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efAdnId:I

    .line 126
    return-void
.end method

.method public setEfAdnSfi(I)V
    .locals 0
    .parameter "adnSfi"

    .prologue
    .line 89
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->adnSfi:I

    .line 90
    return-void
.end method

.method public setEfAnrId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 263
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efAnrId:I

    .line 264
    return-void
.end method

.method public setEfEmailId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 218
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efEmailId:I

    .line 219
    return-void
.end method

.method public setEfExt1Id(I)V
    .locals 0
    .parameter "efExt1Id"

    .prologue
    .line 288
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efExe1Id:I

    .line 289
    return-void
.end method

.method public setEfIapId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 184
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->efIapId:I

    .line 185
    return-void
.end method

.method public setEmailRecordIdLinkedByIapRecord(II)V
    .locals 3
    .parameter "iapRecordId"
    .parameter "emailRecordId"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->iapRecordId_emailRecordId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public setEmailRecordSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 210
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->emailRecordSize:I

    .line 211
    return-void
.end method

.method public setExt1RecordIdLinkedByAdnRecord(II)V
    .locals 3
    .parameter "adnRecordId"
    .parameter "ext1RecordId"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->adnRecordId_ext1RecordId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public setExt1RecordIdLinkedByAnrRecord(II)V
    .locals 3
    .parameter "anrRecordId"
    .parameter "ext1RecordIdLinked"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->anrRecordId_ext1RecordId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    return-void
.end method

.method public setExt1RecordIdLinkedByExt1Record(II)V
    .locals 3
    .parameter "ext1RecordId"
    .parameter "ext1RecordIdLinked"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_ext1RecordId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-void
.end method

.method public setExt1RecordLinker(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, ext1RecordLinker:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 327
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_ext1RecordId:Ljava/util/Map;

    .line 328
    :cond_0
    return-void
.end method

.method public setExt1ReferenceTable(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, ext1ReferenceTable:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 369
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->ext1RecordId_referenceCnt:Ljava/util/Map;

    .line 370
    :cond_0
    return-void
.end method

.method public setIapRecordSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 176
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManagerEx;->iapRecordSize:I

    .line 177
    return-void
.end method

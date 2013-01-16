.class public Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;
.super Ljava/lang/Object;
.source "SimPhoneBookManagerEx.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field private static final DEFAULT_RECORD_NUM:I = 0xfa


# instance fields
.field private adnRecordId_extRecordId:Ljava/util/Map;
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

.field adnRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private efExtId:I

.field private efId:I

.field private extRecordCnt:I

.field private extRecordId_extRecordId:Ljava/util/Map;
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

.field private extRecordId_referenceCnt:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xfa

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x1c

    iput v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->adnRecordSize:I

    .line 17
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->extRecordCnt:I

    .line 19
    iput v2, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->efId:I

    .line 20
    iput v2, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->efExtId:I

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->adnRecordId_extRecordId:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->extRecordId_extRecordId:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->extRecordId_referenceCnt:Ljava/util/Map;

    .line 34
    return-void
.end method


# virtual methods
.method public decExtRecordRef(I)V
    .locals 4
    .parameter "extRecordId"

    .prologue
    .line 155
    if-ltz p1, :cond_0

    const/16 v1, 0xff

    if-lt p1, v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->extRecordId_referenceCnt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 159
    .local v0, value:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->extRecordId_referenceCnt:Ljava/util/Map;

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
    .line 220
    .local p1, changeTable:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 221
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 223
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 224
    .local v2, key:I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 226
    .local v3, val:I
    :goto_0
    if-lez v3, :cond_0

    .line 227
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->decExtRecordRef(I)V

    .line 228
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 231
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v2           #key:I
    .end local v3           #val:I
    :cond_1
    return-void
.end method

.method public getAdn(I)Lcom/android/internal/telephony/AdnRecord;
    .locals 2
    .parameter "adnRecordId"

    .prologue
    .line 89
    if-lez p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->adnRecords:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdnRecordSize()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->adnRecordSize:I

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
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->adnRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEfAdnId()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->efId:I

    return v0
.end method

.method public getEfExtId()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->efExtId:I

    return v0
.end method

.method public getEmptyExtRecordCnt()I
    .locals 4

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, cnt:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->extRecordCnt:I

    if-gt v1, v2, :cond_2

    .line 116
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->extRecordId_referenceCnt:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->extRecordId_referenceCnt:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 115
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_2
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
    .line 203
    .local p1, changeTable:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 205
    .local v3, toFree:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 206
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 208
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 209
    .local v2, key:Ljava/lang/Integer;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 211
    .local v4, val:Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->getRefCntOfExtRecord(I)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 212
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v4           #val:Ljava/lang/Integer;
    :cond_1
    return-object v3
.end method

.method public getExtRecordCnt()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->extRecordCnt:I

    return v0
.end method

.method public getExtRecordIdChainLinkedByAdnRecord(I)Ljava/util/Vector;
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
    .line 62
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 64
    .local v1, extRecordIdChain:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->getExtRecordIdLinkedByAdnRecord(I)I

    move-result v0

    .line 66
    .local v0, extRecordId:I
    :goto_0
    const/16 v2, 0xff

    if-eq v0, v2, :cond_0

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->getExtRecordIdLinkedByExtRecord(I)I

    move-result v0

    goto :goto_0

    .line 72
    :cond_0
    return-object v1
.end method

.method public getExtRecordIdLinkedByAdnRecord(I)I
    .locals 2
    .parameter "adnRecordId"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->adnRecordId_extRecordId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getExtRecordIdLinkedByExtRecord(I)I
    .locals 2
    .parameter "extRecordId"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->extRecordId_extRecordId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFirstEmptyExtRecordId()I
    .locals 3

    .prologue
    .line 125
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->extRecordCnt:I

    if-gt v0, v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->extRecordId_referenceCnt:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->extRecordId_referenceCnt:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 131
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v0

    .line 125
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getRefCntChangeTableIfDeleteAdnRecord(I)Ljava/util/Map;
    .locals 10
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
    const/4 v9, 0x1

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v0, changeTable:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->getExtRecordIdChainLinkedByAdnRecord(I)Ljava/util/Vector;

    move-result-object v2

    .line 188
    .local v2, extRecordIdChainLinkedByAdnRecord:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    .line 189
    .local v4, lastRefCnt:I
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    .local v6, s:I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 190
    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 191
    .local v1, extRecordId:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->getRefCntOfExtRecord(I)I

    move-result v5

    .line 193
    .local v5, nowRefCnt:I
    if-eq v4, v9, :cond_1

    .line 199
    .end local v1           #extRecordId:I
    .end local v5           #nowRefCnt:I
    :cond_0
    return-object v0

    .line 195
    .restart local v1       #extRecordId:I
    .restart local v5       #nowRefCnt:I
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    move v4, v5

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getRefCntOfExtRecord(I)I
    .locals 3
    .parameter "extRecordId"

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->extRecordId_referenceCnt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 168
    .local v0, value:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 172
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public incExtRecordRef(I)V
    .locals 4
    .parameter "extRecordId"

    .prologue
    .line 143
    if-ltz p1, :cond_0

    const/16 v1, 0xff

    if-lt p1, v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->extRecordId_referenceCnt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 147
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 148
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->extRecordId_referenceCnt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->extRecordId_referenceCnt:Ljava/util/Map;

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

.method public setAdn(ILcom/android/internal/telephony/AdnRecord;)V
    .locals 2
    .parameter "adnRecordId"
    .parameter "adn"

    .prologue
    .line 84
    if-lez p1, :cond_0

    if-eqz p2, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->adnRecords:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    return-void
.end method

.method public setAdnRecordSize(I)V
    .locals 0
    .parameter "adnRecordSize"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->adnRecordSize:I

    .line 39
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
    .line 76
    .local p1, adnRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->adnRecords:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method public setEfAdnId(I)V
    .locals 0
    .parameter "efId"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->efId:I

    .line 47
    return-void
.end method

.method public setEfExtId(I)V
    .locals 0
    .parameter "efExtId"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->efExtId:I

    .line 98
    return-void
.end method

.method public setExtRecordCnt(I)V
    .locals 0
    .parameter "extRecordCnt"

    .prologue
    .line 105
    iput p1, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->extRecordCnt:I

    .line 106
    return-void
.end method

.method public setExtRecordIdLinkedByAdnRecord(II)V
    .locals 3
    .parameter "adnRecordId"
    .parameter "extRecordId"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->adnRecordId_extRecordId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public setExtRecordIdLinkedByExtRecord(II)V
    .locals 3
    .parameter "extRecordId"
    .parameter "extRecordIdLinked"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->extRecordId_extRecordId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

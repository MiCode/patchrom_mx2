.class public Lcom/android/internal/telephony/AdnRecordLoader;
.super Landroid/os/Handler;
.source "AdnRecordLoader.java"


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x3

.field static final EVENT_ADN_LOAD_ALL_DONE_EX:I = 0x6

.field static final EVENT_ADN_LOAD_DONE:I = 0x1

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x4

.field static final EVENT_EXTENSION_LOAD_ALL_DONE_EX:I = 0x7

.field static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x2

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x5

.field static final EVENT_WRITE_RECORD_DONE:I = 0x8

.field static final LOG_TAG:Ljava/lang/String; = "RIL_AdnRecordLoader"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field adns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field ef:I

.field extensionEF:I

.field mExceptionLog:Ljava/lang/String;

.field private mFh:Lcom/android/internal/telephony/IccFileHandler;

.field private mIsWriteSuccess:Z

.field mLock:Ljava/lang/Object;

.field pendingExtLoads:I

.field pin2:Ljava/lang/String;

.field recordNumber:I

.field result:Ljava/lang/Object;

.field private simPbManagerEx:Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;

.field userResponse:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 1
    .parameter "fh"

    .prologue
    .line 69
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 110
    const-string v0, "error"

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mExceptionLog:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mLock:Ljava/lang/Object;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->simPbManagerEx:Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mIsWriteSuccess:Z

    .line 70
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 71
    return-void
.end method

.method private freeExtRecords(Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;Ljava/util/Vector;Ljava/lang/String;)Z
    .locals 10
    .parameter "simPbManagerEx"
    .parameter
    .parameter "pin2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;",
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

    .line 248
    const/4 v1, 0x0

    .line 250
    .local v1, extRecord:[B
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->getEfExtId()I

    move-result v0

    .line 252
    .local v0, efExtId:I
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v5

    .local v5, s:I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 253
    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 255
    .local v2, extRecordId:I
    const/4 v6, 0x0

    invoke-static {v6, v7, v7, v9}, Lcom/android/internal/telephony/AdnRecord;->buildExt1String([BIII)[B

    move-result-object v1

    .line 256
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sim contact: free EFext1 record, EFext = "

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

    .line 257
    .local v4, log:Ljava/lang/String;
    const-string v6, "RIL_AdnRecordLoader"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-direct {p0, v0, v2, v1, p3}, Lcom/android/internal/telephony/AdnRecordLoader;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 259
    const-string/jumbo v6, "sim contact: free EFext1 record, error of writeEfRecord"

    iput-object v6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mExceptionLog:Ljava/lang/String;

    .line 260
    const-string v6, "RIL_AdnRecordLoader"

    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mExceptionLog:Ljava/lang/String;

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 269
    .end local v2           #extRecordId:I
    .end local v4           #log:Ljava/lang/String;
    :goto_1
    return v6

    .line 263
    .restart local v2       #extRecordId:I
    .restart local v4       #log:Ljava/lang/String;
    :cond_0
    const-string v6, "RIL_AdnRecordLoader"

    const-string/jumbo v8, "sim contact: free EFext record, success"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p1, v2, v9}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->setExtRecordIdLinkedByExtRecord(II)V

    .line 252
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    .end local v2           #extRecordId:I
    .end local v4           #log:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private internalUpdateAdnRecord(Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)Z
    .locals 9
    .parameter "simPbManagerEx"
    .parameter "efAdnId"
    .parameter "adnRecordId"
    .parameter "oldAdnRecord"
    .parameter "newAdnRecord"
    .parameter "pin2"

    .prologue
    .line 194
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->getRefCntChangeTableIfDeleteAdnRecord(I)Ljava/util/Map;

    move-result-object v6

    .line 195
    .local v6, changeTable:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->getExt1RecordIdToFreeIfDeleteAdnRecord(Ljava/util/Map;)Ljava/util/Vector;

    move-result-object v8

    .line 197
    .local v8, toFree:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {p5}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/AdnRecord;->calcEmptyExt1RecordCntNeeded(Ljava/lang/String;)I

    move-result v7

    .line 199
    .local v7, emptyExtRecordCntNeeded:I
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->getEmptyExtRecordCnt()I

    move-result v1

    add-int/2addr v0, v1

    if-le v7, v0, :cond_0

    .line 200
    const-string/jumbo v0, "sim contact: no enough ext records for number"

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mExceptionLog:Ljava/lang/String;

    .line 201
    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    .line 205
    :cond_0
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->decRefCntByChangeTable(Ljava/util/Map;)V

    .line 206
    invoke-direct {p0, p1, v8, p6}, Lcom/android/internal/telephony/AdnRecordLoader;->freeExtRecords(Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;Ljava/util/Vector;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p5}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p5}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 212
    :cond_2
    invoke-virtual {p5}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p6

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecordLoader;->writeNumberWithExtRecordChain(Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 213
    const/4 v0, 0x0

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {p4}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 216
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p6

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecordLoader;->writeNumberWithExtRecordChain(Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 217
    const/4 v0, 0x0

    goto :goto_0

    .line 220
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private writeEfRecord(II[BLjava/lang/String;)Z
    .locals 8
    .parameter "efid"
    .parameter "recordId"
    .parameter "data"
    .parameter "pin2"

    .prologue
    const/4 v7, 0x0

    .line 224
    if-nez p3, :cond_0

    .line 225
    const-string/jumbo v0, "sim contact: parameter data is null for writeEfRecord"

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mExceptionLog:Ljava/lang/String;

    .line 226
    const-string v0, "RIL_AdnRecordLoader"

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mExceptionLog:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 242
    :goto_0
    return v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 232
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    iget-boolean v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mIsWriteSuccess:Z

    goto :goto_0

    .line 235
    :catch_0
    move-exception v6

    .line 236
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v0, "sim contact: Interrupted Exception in writeEfRecord"

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mExceptionLog:Ljava/lang/String;

    .line 237
    const-string v0, "RIL_AdnRecordLoader"

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mExceptionLog:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    monitor-exit v1

    move v0, v7

    goto :goto_0

    .line 240
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private writeNumberWithExtRecordChain(Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 19
    .parameter "simPbManagerEx"
    .parameter "number"
    .parameter "tag"
    .parameter "pin2"
    .parameter "adnRecordId"

    .prologue
    .line 274
    const/16 v17, 0x0

    .line 282
    .local v17, numberBytes:[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->getAdnRecordSize()I

    move-result v3

    .line 283
    .local v3, adnRecordSize:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->getEfAdnId()I

    move-result v10

    .line 284
    .local v10, efAdnId:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->getEfExtId()I

    move-result v11

    .line 286
    .local v11, efExtId:I
    const/4 v12, 0x0

    .line 288
    .local v12, emptyExtRecordCntNeeded:I
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xff

    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/AdnRecord;->buildAdnString(ILjava/lang/String;[BIII)[B

    move-result-object v9

    .line 292
    .local v9, adnRecord:[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sim contact: free EFadn record, EFadn = "

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

    .line 293
    .local v16, log:Ljava/lang/String;
    const-string v4, "RIL_AdnRecordLoader"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p4

    invoke-direct {v0, v10, v1, v9, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 295
    const-string/jumbo v4, "sim contact: free EFadn record, error of writeEfRecord"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mExceptionLog:Ljava/lang/String;

    .line 296
    const-string v4, "RIL_AdnRecordLoader"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v4, 0x0

    move-object/from16 v5, v17

    .line 377
    .end local v9           #adnRecord:[B
    .end local v16           #log:Ljava/lang/String;
    .end local v17           #numberBytes:[B
    .local v5, numberBytes:[B
    :goto_0
    return v4

    .line 299
    .end local v5           #numberBytes:[B
    .restart local v9       #adnRecord:[B
    .restart local v16       #log:Ljava/lang/String;
    .restart local v17       #numberBytes:[B
    :cond_0
    const-string v4, "RIL_AdnRecordLoader"

    const-string/jumbo v18, "sim contact: free EFadn record, success"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/16 v4, 0xff

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->setExtRecordIdLinkedByAdnRecord(II)V

    .line 302
    const/4 v4, 0x1

    move-object/from16 v5, v17

    .end local v17           #numberBytes:[B
    .restart local v5       #numberBytes:[B
    goto :goto_0

    .line 305
    .end local v5           #numberBytes:[B
    .end local v9           #adnRecord:[B
    .end local v16           #log:Ljava/lang/String;
    .restart local v17       #numberBytes:[B
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->calcEmptyExt1RecordCntNeeded(Ljava/lang/String;)I

    move-result v12

    .line 307
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 308
    const/4 v5, 0x0

    .line 314
    .end local v17           #numberBytes:[B
    .restart local v5       #numberBytes:[B
    :goto_1
    const/4 v6, 0x0

    .line 315
    .local v6, offset:I
    if-nez v12, :cond_4

    .line 316
    const/16 v8, 0xff

    .line 317
    .local v8, extRecordId:I
    if-nez v5, :cond_3

    const/4 v7, 0x0

    .local v7, dataBytes:I
    :goto_2
    move-object/from16 v4, p3

    .line 328
    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/AdnRecord;->buildAdnString(ILjava/lang/String;[BIII)[B

    move-result-object v9

    .line 330
    .restart local v9       #adnRecord:[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sim contact: write EFadn record, EFadn = "

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

    .line 331
    .restart local v16       #log:Ljava/lang/String;
    const-string v4, "RIL_AdnRecordLoader"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p4

    invoke-direct {v0, v10, v1, v9, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 333
    const-string/jumbo v4, "sim contact: write EFadn record, error of writeEfRecord"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mExceptionLog:Ljava/lang/String;

    .line 334
    const-string v4, "RIL_AdnRecordLoader"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v4, 0x0

    goto :goto_0

    .line 310
    .end local v5           #numberBytes:[B
    .end local v6           #offset:I
    .end local v7           #dataBytes:I
    .end local v8           #extRecordId:I
    .end local v9           #adnRecord:[B
    .end local v16           #log:Ljava/lang/String;
    .restart local v17       #numberBytes:[B
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v5

    .end local v17           #numberBytes:[B
    .restart local v5       #numberBytes:[B
    goto :goto_1

    .line 317
    .restart local v6       #offset:I
    .restart local v8       #extRecordId:I
    :cond_3
    array-length v7, v5

    goto :goto_2

    .line 319
    .end local v8           #extRecordId:I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->getFirstEmptyExtRecordId()I

    move-result v8

    .line 320
    .restart local v8       #extRecordId:I
    const/4 v4, 0x1

    if-ge v8, v4, :cond_5

    .line 321
    const-string/jumbo v4, "sim contact: write EFadn record, error of no free ext1 record"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mExceptionLog:Ljava/lang/String;

    .line 322
    const-string v4, "RIL_AdnRecordLoader"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 325
    :cond_5
    const/16 v7, 0xb

    .restart local v7       #dataBytes:I
    goto :goto_2

    .line 337
    .restart local v9       #adnRecord:[B
    .restart local v16       #log:Ljava/lang/String;
    :cond_6
    const-string v4, "RIL_AdnRecordLoader"

    const-string/jumbo v18, "sim contact: write EFadn record, success"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->setExtRecordIdLinkedByAdnRecord(II)V

    .line 340
    const/16 v4, 0xff

    if-eq v8, v4, :cond_7

    .line 341
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->incExtRecordRef(I)V

    .line 344
    :cond_7
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    if-ge v15, v12, :cond_c

    .line 345
    mul-int/lit8 v4, v15, 0xa

    add-int/lit8 v6, v4, 0xb

    .line 348
    array-length v4, v5

    add-int/lit8 v18, v6, 0xa

    move/from16 v0, v18

    if-le v4, v0, :cond_8

    .line 349
    const/16 v7, 0xa

    .line 350
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->getFirstEmptyExtRecordId()I

    move-result v14

    .line 351
    .local v14, extRecordIdLinked:I
    const/4 v4, 0x1

    if-ge v14, v4, :cond_9

    .line 352
    const-string/jumbo v4, "sim contact: write EFadn record, error of no free ext1 record"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mExceptionLog:Ljava/lang/String;

    .line 353
    const-string v4, "RIL_AdnRecordLoader"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 357
    .end local v14           #extRecordIdLinked:I
    :cond_8
    array-length v4, v5

    sub-int v7, v4, v6

    .line 358
    const/16 v14, 0xff

    .line 361
    .restart local v14       #extRecordIdLinked:I
    :cond_9
    invoke-static {v5, v6, v7, v14}, Lcom/android/internal/telephony/AdnRecord;->buildExt1String([BIII)[B

    move-result-object v13

    .line 363
    .local v13, extRecord:[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "sim contact: write EFext1 record, EFext1 = "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, ", extRecordId = "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 364
    const-string v4, "RIL_AdnRecordLoader"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v11, v8, v13, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->writeEfRecord(II[BLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 366
    const-string/jumbo v4, "usim card: write EFext1 record, error of writeEfRecord"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mExceptionLog:Ljava/lang/String;

    .line 367
    const-string v4, "RIL_AdnRecordLoader"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mExceptionLog:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 370
    :cond_a
    const-string v4, "RIL_AdnRecordLoader"

    const-string/jumbo v18, "sim contact: write EFext1 record, success"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v14}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->setExtRecordIdLinkedByExtRecord(II)V

    .line 373
    const/16 v4, 0xff

    if-eq v14, v4, :cond_b

    .line 374
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->incExtRecordRef(I)V

    .line 344
    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 377
    .end local v13           #extRecord:[B
    .end local v14           #extRecordIdLinked:I
    :cond_c
    const/4 v4, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 414
    :try_start_0
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v1, :pswitch_data_0

    .line 650
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    if-nez v1, :cond_1

    .line 651
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 654
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 655
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 657
    :cond_1
    :goto_1
    return-void

    .line 417
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 418
    .local v9, ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 419
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mIsWriteSuccess:Z

    .line 424
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 425
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 426
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 638
    .end local v9           #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v11

    .line 639
    .local v11, exc:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 640
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 642
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 645
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_1

    .line 421
    .end local v11           #exc:Ljava/lang/RuntimeException;
    .restart local v9       #ar:Landroid/os/AsyncResult;
    :cond_2
    const/4 v1, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mIsWriteSuccess:Z

    goto :goto_2

    .line 429
    .end local v9           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 430
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    .line 432
    .local v8, adnBytes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 433
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load all adn failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 436
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    .line 437
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 441
    const/4 v14, 0x0

    .local v14, i:I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, s:I
    :goto_3
    move/from16 v0, v16

    if-ge v14, v0, :cond_5

    .line 442
    new-instance v7, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    add-int/lit8 v3, v14, 0x1

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v7, v2, v3, v1}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 443
    .local v7, adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-virtual {v7}, Lcom/android/internal/telephony/AdnRecord;->getExtRecord()I

    move-result v13

    .line 446
    .local v13, extRecordId:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->simPbManagerEx:Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;

    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v1, v2, v13}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->setExtRecordIdLinkedByAdnRecord(II)V

    .line 447
    const/16 v1, 0xff

    if-eq v13, v1, :cond_4

    .line 448
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->simPbManagerEx:Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;

    invoke-virtual {v1, v13}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->incExtRecordRef(I)V

    .line 441
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 451
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v13           #extRecordId:I
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->simPbManagerEx:Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->setAdnRecordSize(I)V

    .line 455
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    const/4 v3, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->simPbManagerEx:Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->setAdnRecords(Ljava/util/ArrayList;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->simPbManagerEx:Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 461
    .end local v8           #adnBytes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v14           #i:I
    .end local v16           #s:I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 462
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v12, v0

    .line 464
    .local v12, extBytes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    .line 465
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load extension file failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 469
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->simPbManagerEx:Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->setExtRecordCnt(I)V

    .line 470
    const/4 v14, 0x0

    .restart local v14       #i:I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    .restart local v16       #s:I
    :goto_4
    move/from16 v0, v16

    if-ge v14, v0, :cond_a

    .line 471
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 472
    .local v4, data:[B
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v4, v1

    and-int/lit16 v13, v1, 0xff

    .line 474
    .restart local v13       #extRecordId:I
    add-int/lit8 v1, v14, 0x1

    if-ne v1, v13, :cond_9

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->simPbManagerEx:Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;

    add-int/lit8 v2, v14, 0x1

    const/16 v3, 0xff

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->setExtRecordIdLinkedByExtRecord(II)V

    .line 470
    :cond_8
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 477
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->simPbManagerEx:Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;

    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v1, v2, v13}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->setExtRecordIdLinkedByExtRecord(II)V

    .line 479
    const/16 v1, 0xff

    if-eq v13, v1, :cond_8

    .line 480
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->simPbManagerEx:Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;

    invoke-virtual {v1, v13}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->incExtRecordRef(I)V

    goto :goto_5

    .line 485
    .end local v4           #data:[B
    .end local v13           #extRecordId:I
    :cond_a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v16

    :goto_6
    move/from16 v0, v16

    if-ge v14, v0, :cond_1

    .line 486
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/AdnRecord;

    .line 488
    .restart local v7       #adn:Lcom/android/internal/telephony/AdnRecord;
    :goto_7
    invoke-virtual {v7}, Lcom/android/internal/telephony/AdnRecord;->getNumberLength()I

    move-result v1

    const/16 v2, 0x30

    if-ge v1, v2, :cond_b

    invoke-virtual {v7}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 489
    invoke-virtual {v7}, Lcom/android/internal/telephony/AdnRecord;->getExtRecord()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 490
    .restart local v4       #data:[B
    if-nez v4, :cond_c

    .line 495
    .end local v4           #data:[B
    :cond_b
    const/16 v1, 0x30

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/AdnRecord;->truncNumber(I)V

    .line 496
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    invoke-virtual {v1, v14, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 485
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 492
    .restart local v4       #data:[B
    :cond_c
    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/AdnRecord;->appendExtRecordForNumber([B)V

    goto :goto_7

    .line 501
    .end local v4           #data:[B
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #extBytes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v14           #i:I
    .end local v16           #s:I
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 502
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v7, v0

    .line 504
    .restart local v7       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_d

    .line 505
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get EF record size failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 509
    :cond_d
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object v15, v0

    .line 515
    .local v15, recordSize:[I
    array-length v1, v15

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    const/4 v2, 0x2

    aget v2, v15, v2

    if-le v1, v2, :cond_f

    .line 516
    :cond_e
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 520
    :cond_f
    const/4 v1, 0x0

    aget v1, v15, v1

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/AdnRecord;->buildAdnString(I)[B

    move-result-object v4

    .line 522
    .restart local v4       #data:[B
    if-nez v4, :cond_10

    .line 523
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "wrong ADN format"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 527
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 530
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 534
    .end local v4           #data:[B
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v15           #recordSize:[I
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 535
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_11

    .line 536
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "update EF adn record failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 539
    :cond_11
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 540
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 543
    .end local v9           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 544
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v4, v0

    .line 546
    .restart local v4       #data:[B
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_12

    .line 547
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 557
    :cond_12
    new-instance v7, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    invoke-direct {v7, v1, v2, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 558
    .restart local v7       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 560
    invoke-virtual {v7}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 567
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    iget v3, v7, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 574
    .end local v4           #data:[B
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 575
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v4, v0

    .line 576
    .restart local v4       #data:[B
    iget-object v1, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v7, v0

    .line 578
    .restart local v7       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_13

    .line 579
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 582
    :cond_13
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADN extension EF: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/AdnRecord;->appendExtRecordForNumber([B)V

    .line 589
    const/16 v1, 0x30

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/AdnRecord;->truncNumber(I)V

    .line 590
    invoke-virtual {v7}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v7}, Lcom/android/internal/telephony/AdnRecord;->getNumberLength()I

    move-result v1

    const/16 v2, 0x30

    if-ge v1, v2, :cond_14

    .line 595
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 597
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    invoke-virtual {v7}, Lcom/android/internal/telephony/AdnRecord;->getExtRecord()I

    move-result v3

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 603
    :cond_14
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 609
    .end local v4           #data:[B
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 610
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v10, v0

    .line 612
    .local v10, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_15

    .line 613
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 616
    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    .line 617
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 618
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 620
    const/4 v14, 0x0

    .restart local v14       #i:I
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v16

    .restart local v16       #s:I
    :goto_8
    move/from16 v0, v16

    if-ge v14, v0, :cond_0

    .line 621
    new-instance v7, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    add-int/lit8 v3, v14, 0x1

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v7, v2, v3, v1}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 622
    .restart local v7       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    invoke-virtual {v7}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 629
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 631
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    iget v3, v7, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 620
    :cond_16
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "response"

    .prologue
    .line 99
    iput p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 100
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 101
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 107
    return-void
.end method

.method public loadAllFromEFEx(IILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "response"

    .prologue
    .line 123
    iput p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 124
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 125
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 127
    new-instance v0, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->simPbManagerEx:Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->simPbManagerEx:Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->setEfAdnId(I)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->simPbManagerEx:Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->setEfExtId(I)V

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 132
    return-void
.end method

.method public loadFromEF(IIILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "response"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 81
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 82
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 83
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 89
    return-void
.end method

.method public updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 395
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 396
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 397
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 398
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 399
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 403
    return-void
.end method

.method public updateEFEx(Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "simPbManagerEx"
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 137
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 138
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 139
    iput p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 140
    iput-object p7, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 141
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->simPbManagerEx:Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;

    .line 145
    move v3, p5

    .line 148
    .local v3, adnRecordId:I
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->simPbManagerEx:Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;

    if-nez v0, :cond_1

    .line 149
    if-eqz p7, :cond_0

    .line 150
    invoke-static {p7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "sim contact: EFadn not loaded"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 151
    invoke-virtual {p7}, Landroid/os/Message;->sendToTarget()V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->getAdn(I)Lcom/android/internal/telephony/AdnRecord;

    move-result-object v4

    .line 158
    .local v4, oldAdnRecord:Lcom/android/internal/telephony/AdnRecord;
    if-nez v4, :cond_2

    .line 159
    if-eqz p7, :cond_0

    .line 160
    invoke-static {p7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "sim contact: recordNumber is out of range"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 161
    invoke-virtual {p7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/AdnRecord;->setEfId(I)V

    .line 168
    invoke-virtual {p2, p5}, Lcom/android/internal/telephony/AdnRecord;->setRecordId(I)V

    .line 171
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->getAdnRecordSize()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/AdnRecord;->isLegal(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 172
    if-eqz p7, :cond_0

    .line 173
    invoke-static {p7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Wrong sim contact parameter"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 174
    invoke-virtual {p7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 180
    :cond_3
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v5, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->internalUpdateAdnRecord(Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)Z

    move-result v0

    if-ne v7, v0, :cond_4

    .line 181
    invoke-virtual {p1, v3, p2}, Lcom/android/internal/telephony/gsm/SimPhoneBookManagerEx;->setAdn(ILcom/android/internal/telephony/AdnRecord;)V

    .line 182
    invoke-static {p7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 183
    invoke-virtual {p7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 185
    :cond_4
    invoke-static {p7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mExceptionLog:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 186
    invoke-virtual {p7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

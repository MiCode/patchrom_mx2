.class Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;
.super Ljava/lang/Object;
.source "IccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IccRecordFileInfo"
.end annotation


# static fields
.field public static final ICC_FCP_TEMP_FLAG:B = 0x62t

.field public static final ICC_FILE_DESC_FLAG:B = -0x7et

.field public static final ICC_FILE_SIZE_FLAG:B = -0x80t

.field public static final ICC_REC_COUNT_BIT:I = 0x2

.field public static final ICC_REC_SIZE_BIT:I = 0x1


# instance fields
.field protected mData:[B

.field protected mRecordCount:I

.field protected mRecordSize:I

.field protected mRecordType:I

.field protected mValidInfoBmp:I

.field final synthetic this$0:Lcom/android/internal/telephony/IccFileHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccFileHandler;[B)V
    .locals 1
    .parameter
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 304
    iput-object p1, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->this$0:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mValidInfoBmp:I

    .line 298
    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordSize:I

    .line 299
    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordCount:I

    .line 305
    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mValidInfoBmp:I

    .line 306
    iput-object p2, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    .line 307
    return-void
.end method

.method private parseUsimRecordFileDescriptionInfo(I)I
    .locals 8
    .parameter "curOffset"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 364
    iget-object v4, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    array-length v0, v4

    .line 365
    .local v0, bufTotLen:I
    iget-object v4, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    add-int/lit8 v5, p1, 0x1

    aget-byte v2, v4, v5

    .line 366
    .local v2, len:I
    const/4 v1, 0x0

    .line 367
    .local v1, fileDesByte:I
    if-eq v2, v7, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    .line 390
    :cond_0
    :goto_0
    return v3

    .line 370
    :cond_1
    add-int v4, p1, v2

    if-gt v4, v0, :cond_0

    .line 374
    iget-object v3, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    add-int/lit8 v4, p1, 0x2

    aget-byte v1, v3, v4

    .line 375
    xor-int/lit8 v3, v1, 0x1

    and-int/lit8 v3, v3, 0x7

    if-nez v3, :cond_3

    .line 376
    iput v6, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordType:I

    .line 385
    :goto_1
    if-ne v2, v7, :cond_2

    .line 386
    iget-object v3, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    add-int/lit8 v4, p1, 0x5

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordSize:I

    .line 387
    iget-object v3, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    add-int/lit8 v4, p1, 0x6

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordCount:I

    .line 389
    :cond_2
    iget v3, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mValidInfoBmp:I

    or-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mValidInfoBmp:I

    .line 390
    iget-object v3, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    add-int/lit8 v4, p1, 0x1

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 377
    :cond_3
    xor-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0x7

    if-nez v3, :cond_4

    .line 378
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordType:I

    goto :goto_1

    .line 379
    :cond_4
    xor-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x7

    if-nez v3, :cond_5

    .line 380
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordType:I

    goto :goto_1

    .line 382
    :cond_5
    iput v6, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordType:I

    goto :goto_1
.end method

.method private parseUsimRecordFileInfo()I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 421
    const/4 v1, 0x0

    .line 422
    .local v1, curOffset:I
    iget-object v4, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    array-length v0, v4

    .line 424
    .local v0, bufTotLen:I
    iget-object v4, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    const/16 v5, 0x62

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x2

    if-eq v4, v0, :cond_2

    :cond_0
    move v0, v3

    .line 452
    .end local v0           #bufTotLen:I
    :cond_1
    :goto_0
    return v0

    .line 428
    .restart local v0       #bufTotLen:I
    :cond_2
    add-int/lit8 v1, v1, 0x2

    .line 430
    :goto_1
    sub-int v4, v0, v1

    const/4 v5, 0x2

    if-lt v4, v5, :cond_4

    .line 431
    iget-object v4, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    aget-byte v4, v4, v1

    packed-switch v4, :pswitch_data_0

    .line 439
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->parseUsimRecrodFileUnknownField(I)I

    move-result v2

    .line 443
    .local v2, eatBufLen:I
    :goto_2
    if-gez v2, :cond_3

    move v0, v3

    .line 444
    goto :goto_0

    .line 433
    .end local v2           #eatBufLen:I
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->parseUsimRecordFileDescriptionInfo(I)I

    move-result v2

    .line 434
    .restart local v2       #eatBufLen:I
    goto :goto_2

    .line 436
    .end local v2           #eatBufLen:I
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->parseUsimRecordFileSizeInfo(I)I

    move-result v2

    .line 437
    .restart local v2       #eatBufLen:I
    goto :goto_2

    .line 446
    :cond_3
    add-int/2addr v1, v2

    goto :goto_1

    .line 449
    .end local v2           #eatBufLen:I
    :cond_4
    if-eq v0, v1, :cond_1

    move v0, v3

    .line 452
    goto :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch -0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseUsimRecordFileSizeInfo(I)I
    .locals 7
    .parameter "curOffset"

    .prologue
    .line 394
    iget-object v4, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    array-length v1, v4

    .line 395
    .local v1, bufTotLen:I
    iget-object v4, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    add-int/lit8 v5, p1, 0x1

    aget-byte v2, v4, v5

    .line 396
    .local v2, len:I
    const/4 v3, 0x0

    .local v3, pos:I
    const/4 v0, 0x0

    .line 397
    .local v0, allocSize:I
    add-int v4, p1, v2

    if-le v4, v1, :cond_0

    .line 398
    const/4 v4, -0x1

    .line 408
    :goto_0
    return v4

    .line 401
    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 402
    shl-int/lit8 v4, v0, 0x8

    iget-object v5, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    add-int/lit8 v6, p1, 0x2

    add-int/2addr v6, v3

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    add-int v0, v4, v5

    .line 401
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 404
    :cond_1
    iget v4, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordType:I

    if-nez v4, :cond_2

    .line 405
    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordSize:I

    .line 408
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    add-int/lit8 v5, p1, 0x1

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x2

    goto :goto_0
.end method

.method private parseUsimRecrodFileUnknownField(I)I
    .locals 4
    .parameter "curOffset"

    .prologue
    .line 412
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    array-length v0, v2

    .line 413
    .local v0, bufTotLen:I
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte v1, v2, v3

    .line 414
    .local v1, len:I
    add-int v2, p1, v1

    if-le v2, v0, :cond_0

    .line 415
    const/4 v2, -0x1

    .line 417
    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method


# virtual methods
.method public getRecrodCount()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordCount:I

    return v0
.end method

.method public getRecrodSize()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordSize:I

    return v0
.end method

.method public getValidInfoBmp()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mValidInfoBmp:I

    return v0
.end method

.method public parseEFFileByCardType(I)V
    .locals 5
    .parameter "efType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/IccException;,
            Lcom/android/internal/telephony/IccFileTypeMismatch;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 321
    iput v1, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mValidInfoBmp:I

    .line 322
    iput v1, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordSize:I

    .line 323
    iput v1, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordCount:I

    .line 325
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->this$0:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->this$0:Lcom/android/internal/telephony/IccFileHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parse USIM record info, mData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 327
    invoke-direct {p0}, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->parseUsimRecordFileInfo()I

    move-result v1

    if-gez v1, :cond_0

    .line 328
    new-instance v1, Lcom/android/internal/telephony/IccException;

    const-string v2, "Parse USIM record Info exception"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IccException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mValidInfoBmp:I

    and-int/lit8 v1, v1, 0x3

    if-eq v1, v4, :cond_1

    .line 334
    new-instance v1, Lcom/android/internal/telephony/IccException;

    const-string v2, "No valid size and count found in record"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IccException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->this$0:Lcom/android/internal/telephony/IccFileHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parse USIM record info, size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 361
    :goto_0
    return-void

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->this$0:Lcom/android/internal/telephony/IccFileHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parse SIM record info, mData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 339
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    if-eq v1, v2, :cond_3

    .line 340
    new-instance v1, Lcom/android/internal/telephony/IccFileTypeMismatch;

    const-string/jumbo v2, "parseEFFileByCardType 1"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    const/16 v2, 0xd

    aget-byte v1, v1, v2

    if-eq p1, v1, :cond_4

    .line 344
    new-instance v1, Lcom/android/internal/telephony/IccFileTypeMismatch;

    const-string/jumbo v2, "parseEFFileByCardType 2"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mValidInfoBmp:I

    or-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mValidInfoBmp:I

    .line 349
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    add-int v0, v1, v2

    .line 353
    .local v0, size:I
    if-eq p1, v4, :cond_5

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    .line 354
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mData:[B

    const/16 v2, 0xe

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordSize:I

    .line 355
    iget v1, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordSize:I

    div-int v1, v0, v1

    iput v1, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordCount:I

    .line 359
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->this$0:Lcom/android/internal/telephony/IccFileHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parse SIM record info, size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 357
    :cond_6
    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler$IccRecordFileInfo;->mRecordSize:I

    goto :goto_1
.end method

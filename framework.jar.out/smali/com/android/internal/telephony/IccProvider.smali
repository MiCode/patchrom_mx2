.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccProvider$AdnRecordComparator;,
        Lcom/android/internal/telephony/IccProvider$ReadOnlyCursorWrapper;
    }
.end annotation


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADDRESS_BOOK_COLUMN_NAMES_EX:[Ljava/lang/String; = null

.field private static final ADN:I = 0x1

.field private static final DBG:Z = false

.field private static final FDN:I = 0x2

.field public static final IS_USIM_KEY:Ljava/lang/String; = "is_usim_key"

.field public static final REQUEST_BY_ID:Ljava/lang/String; = "request_by_id"

.field private static final SDN:I = 0x3

.field private static final STR_EMAILS:Ljava/lang/String; = "emails"

.field private static final STR_NUMBER:Ljava/lang/String; = "number"

.field private static final STR_PIN2:Ljava/lang/String; = "pin2"

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 57
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "name"

    aput-object v1, v0, v2

    const-string/jumbo v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 64
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "name"

    aput-object v1, v0, v2

    const-string/jumbo v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "second_number"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "sort_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES_EX:[Ljava/lang/String;

    .line 83
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 87
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "sdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 751
    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    .line 399
    const/4 v7, 0x0

    .line 407
    .local v7, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 409
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 410
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 419
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v7

    .line 415
    :catch_0
    move-exception v1

    goto :goto_0

    .line 413
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private addIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "additionalNumber"
    .parameter "emailString"
    .parameter "pin2"

    .prologue
    .line 610
    const/4 v9, 0x0

    .line 612
    .local v9, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 614
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_3

    .line 615
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v9

    .line 616
    if-eqz v9, :cond_3

    .line 618
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 621
    .local v8, N:I
    const/4 v11, -0x2

    .line 622
    .local v11, index:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v8, :cond_0

    .line 623
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 624
    add-int/lit8 v6, v10, 0x1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 625
    add-int/lit8 v11, v10, 0x1

    .line 641
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v8           #N:I
    .end local v10           #i:I
    .end local v11           #index:I
    :cond_0
    :goto_1
    return v11

    .line 627
    .restart local v0       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v8       #N:I
    .restart local v10       #i:I
    .restart local v11       #index:I
    :cond_1
    const/4 v11, -0x1

    .line 629
    goto :goto_1

    .line 622
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 637
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v8           #N:I
    .end local v10           #i:I
    .end local v11           #index:I
    :catch_0
    move-exception v1

    .line 641
    :cond_3
    :goto_2
    const/4 v11, -0x1

    goto :goto_1

    .line 635
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    .line 452
    const/4 v7, 0x0

    .line 455
    .local v7, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 457
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 458
    const-string v4, ""

    const-string v5, ""

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 467
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v7

    .line 463
    :catch_0
    move-exception v1

    goto :goto_0

    .line 461
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEfByIndex(IILjava/lang/String;)Z
    .locals 9
    .parameter "efType"
    .parameter "index"
    .parameter "pin2"

    .prologue
    .line 672
    const/4 v8, 0x0

    .line 675
    .local v8, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 677
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 678
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 686
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v8

    .line 682
    :catch_0
    move-exception v1

    goto :goto_0

    .line 680
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static getURL_MATCHER()Landroid/content/UriMatcher;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    return-object v0
.end method

.method private loadFromEf(I)Landroid/database/MatrixCursor;
    .locals 7
    .parameter "efType"

    .prologue
    .line 365
    const/4 v1, 0x0

    .line 367
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :try_start_0
    const-string/jumbo v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v4

    .line 369
    .local v4, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v4, :cond_0

    .line 370
    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 378
    .end local v4           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 380
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 381
    .local v0, N:I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v5, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 383
    .local v2, cursor:Landroid/database/MatrixCursor;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 384
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    add-int/lit8 v6, v3, 0x1

    invoke-direct {p0, v5, v2, v6}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 383
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 389
    .end local v0           #N:I
    .end local v2           #cursor:Landroid/database/MatrixCursor;
    .end local v3           #i:I
    :cond_1
    const-string v5, "IccProvider"

    const-string v6, "Cannot load ADN records"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_2
    return-object v2

    .line 374
    :catch_0
    move-exception v5

    goto :goto_0

    .line 372
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private loadFromEfEx(I[I)Landroid/database/Cursor;
    .locals 15
    .parameter "efType"
    .parameter "ids"

    .prologue
    .line 511
    const/4 v10, 0x0

    .line 513
    .local v10, isUsim:Z
    const/4 v3, 0x0

    .line 515
    .local v3, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :try_start_0
    const-string/jumbo v13, "simphonebook"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v9

    .line 517
    .local v9, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v9, :cond_0

    .line 518
    move/from16 v0, p1

    invoke-interface {v9, v0}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v3

    .line 519
    invoke-interface {v9}, Lcom/android/internal/telephony/IIccPhoneBook;->isUsim()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 527
    .end local v9           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES_EX:[Ljava/lang/String;

    .line 529
    .local v5, columnNames:[Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 531
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_1

    .line 532
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/AdnRecord;

    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/AdnRecord;->setTempInt(I)V

    .line 531
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 535
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 537
    .local v12, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    move-object v3, v12

    .line 540
    new-instance v13, Lcom/android/internal/telephony/IccProvider$AdnRecordComparator;

    invoke-direct {v13, p0}, Lcom/android/internal/telephony/IccProvider$AdnRecordComparator;-><init>(Lcom/android/internal/telephony/IccProvider;)V

    invoke-static {v3, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 543
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 544
    .local v1, N:I
    new-instance v11, Landroid/database/MatrixCursor;

    invoke-direct {v11, v5, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 546
    .local v11, matrixCursor:Landroid/database/MatrixCursor;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AdnRecord;

    .line 547
    .local v2, adnRecord:Lcom/android/internal/telephony/AdnRecord;
    if-eqz p2, :cond_3

    .line 548
    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecord;->getTempInt()I

    move-result v13

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 549
    invoke-direct {p0, v2, v11, v10}, Lcom/android/internal/telephony/IccProvider;->loadRecordEx(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;Z)V

    goto :goto_2

    .line 552
    :cond_3
    invoke-direct {p0, v2, v11, v10}, Lcom/android/internal/telephony/IccProvider;->loadRecordEx(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;Z)V

    goto :goto_2

    .line 555
    .end local v2           #adnRecord:Lcom/android/internal/telephony/AdnRecord;
    :cond_4
    move-object v6, v11

    .line 563
    .end local v1           #N:I
    .end local v7           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #matrixCursor:Landroid/database/MatrixCursor;
    .end local v12           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    .local v6, cursor:Landroid/database/Cursor;
    :goto_3
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 564
    .local v4, bundle:Landroid/os/Bundle;
    const-string v13, "is_usim_key"

    invoke-virtual {v4, v13, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 565
    new-instance v13, Lcom/android/internal/telephony/IccProvider$ReadOnlyCursorWrapper;

    invoke-direct {v13, p0, v6, v4}, Lcom/android/internal/telephony/IccProvider$ReadOnlyCursorWrapper;-><init>(Lcom/android/internal/telephony/IccProvider;Landroid/database/Cursor;Landroid/os/Bundle;)V

    return-object v13

    .line 558
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_5
    const-string v13, "IccProvider"

    const-string v14, "Cannot load ADN records"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-instance v6, Landroid/database/MatrixCursor;

    invoke-direct {v6, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_3

    .line 523
    .end local v5           #columnNames:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v13

    goto :goto_0

    .line 521
    :catch_1
    move-exception v13

    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 11
    .parameter "record"
    .parameter "cursor"
    .parameter "id"

    .prologue
    .line 477
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 478
    const/4 v9, 0x4

    new-array v2, v9, [Ljava/lang/Object;

    .line 479
    .local v2, contact:[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, alphaTag:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 483
    .local v8, number:Ljava/lang/String;
    const/4 v9, 0x0

    aput-object v0, v2, v9

    .line 484
    const/4 v9, 0x1

    aput-object v8, v2, v9

    .line 486
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    .line 487
    .local v5, emails:[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 488
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .local v4, emailString:Ljava/lang/StringBuilder;
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v3, v1, v6

    .line 491
    .local v3, email:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 494
    .end local v3           #email:Ljava/lang/String;
    :cond_0
    const/4 v9, 0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    .line 496
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #emailString:Ljava/lang/StringBuilder;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_1
    const/4 v9, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v9

    .line 497
    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 499
    .end local v0           #alphaTag:Ljava/lang/String;
    .end local v2           #contact:[Ljava/lang/Object;
    .end local v5           #emails:[Ljava/lang/String;
    .end local v8           #number:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private loadRecordEx(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;Z)V
    .locals 12
    .parameter "record"
    .parameter "cursor"
    .parameter "isUSim"

    .prologue
    .line 569
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 570
    sget-object v10, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES_EX:[Ljava/lang/String;

    array-length v10, v10

    new-array v2, v10, [Ljava/lang/Object;

    .line 572
    .local v2, contact:[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, alphaTag:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v9

    .line 576
    .local v9, number:Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v0, v2, v10

    .line 577
    const/4 v10, 0x1

    aput-object v9, v2, v10

    .line 579
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    .line 580
    .local v5, emails:[Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 581
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    .local v4, emailString:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 583
    .local v7, index:I
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v3, v1, v6

    .line 586
    .local v3, email:Ljava/lang/String;
    if-lez v7, :cond_0

    .line 587
    const-string v10, ","

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    add-int/lit8 v7, v7, 0x1

    .line 583
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 592
    .end local v3           #email:Ljava/lang/String;
    :cond_1
    const/4 v10, 0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 594
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #emailString:Ljava/lang/StringBuilder;
    .end local v6           #i$:I
    .end local v7           #index:I
    .end local v8           #len$:I
    :cond_2
    const/4 v10, 0x3

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getTempInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v10

    .line 597
    const/4 v10, 0x4

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 599
    const/4 v10, 0x5

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getSortKey()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 601
    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 603
    .end local v0           #alphaTag:Ljava/lang/String;
    .end local v2           #contact:[Ljava/lang/Object;
    .end local v5           #emails:[Ljava/lang/String;
    .end local v9           #number:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 502
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void
.end method

.method private static matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 6
    .parameter "query"
    .parameter "index"
    .parameter "value"
    .parameter "ignoreCase"

    .prologue
    const/4 v4, 0x0

    .line 746
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, length:I
    move-object v0, p0

    move v1, p3

    move v2, p1

    move-object v3, p2

    .line 747
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, v5

    if-eq v0, v1, :cond_0

    add-int v0, p1, v5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "inVal"

    .prologue
    const/16 v3, 0x27

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 214
    .local v0, len:I
    move-object v1, p1

    .line 216
    .local v1, retVal:Ljava/lang/String;
	const/4 v2, 0x1

	if-gt v0, v2, :cond_ff

	return-object v1

	:cond_ff
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 217
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 220
    :cond_0
    return-object v1
.end method

.method private static readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 5
    .parameter "uri"
    .parameter "parameter"
    .parameter "defaultValue"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 728
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, query:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 740
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 733
    .restart local p2
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 734
    .local v0, index:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 738
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    .line 740
    const-string v4, "=0"

    invoke-static {v1, v0, v4, v3}, Lcom/android/internal/telephony/IccProvider;->matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "=false"

    invoke-static {v1, v0, v4, v2}, Lcom/android/internal/telephony/IccProvider;->matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    move p2, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"

    .prologue
    .line 428
    const/4 v7, 0x0

    .line 431
    .local v7, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 433
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 434
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 443
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v7

    .line 439
    :catch_0
    move-exception v1

    goto :goto_0

    .line 437
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private updateIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 9
    .parameter "efType"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "newAdditionalNumber"
    .parameter "newEmailString"
    .parameter "index"
    .parameter "pin2"

    .prologue
    .line 650
    const/4 v8, 0x0

    .line 653
    .local v8, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 655
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 656
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexEx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 664
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v8

    .line 660
    :catch_0
    move-exception v1

    goto :goto_0

    .line 658
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 24
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 229
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 230
    .local v15, match:I
    packed-switch v15, :pswitch_data_0

    .line 240
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cannot insert into URL: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 232
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 243
    .local v3, efType:I
    :goto_0
    const/16 v2, 0x6f3a

    if-ne v3, v2, :cond_1

    const-string/jumbo v2, "request_by_id"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v2, v1}, Lcom/android/internal/telephony/IccProvider;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    .line 245
    const/4 v9, 0x0

    .line 246
    .local v9, count:I
    move-object/from16 v8, p3

    .local v8, arr$:[Ljava/lang/String;
    array-length v14, v8

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v14, :cond_8

    aget-object v11, v8, v10

    .line 247
    .local v11, id:Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 248
    .local v12, index:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12, v2}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEfByIndex(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    add-int/lit8 v9, v9, 0x1

    .line 246
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 236
    .end local v3           #efType:I
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v9           #count:I
    .end local v10           #i$:I
    .end local v11           #id:Ljava/lang/String;
    .end local v12           #index:I
    .end local v14           #len$:I
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 237
    .restart local v3       #efType:I
    goto :goto_0

    .line 255
    :cond_1
    const/4 v4, 0x0

    .line 256
    .local v4, tag:Ljava/lang/String;
    const/4 v5, 0x0

    .line 257
    .local v5, number:Ljava/lang/String;
    const/4 v6, 0x0

    .line 258
    .local v6, emails:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 260
    .local v7, pin2:Ljava/lang/String;
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 261
    .local v20, tokens:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v16, v0

    .line 263
    .local v16, n:I
    :cond_2
    :goto_2
    add-int/lit8 v16, v16, -0x1

    if-ltz v16, :cond_7

    .line 264
    aget-object v18, v20, v16

    .line 267
    .local v18, param:Ljava/lang/String;
    const-string v2, "="

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 269
    .local v17, pair:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v2, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v2, v0, :cond_3

    .line 270
    const-string v2, "IccProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "resolve: bad whereClause parameter: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 274
    :cond_3
    const/4 v2, 0x0

    aget-object v2, v17, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 275
    .local v13, key:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v17, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 277
    .local v21, val:Ljava/lang/String;
    const-string/jumbo v2, "tag"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 278
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 279
    :cond_4
    const-string/jumbo v2, "number"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 280
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 281
    :cond_5
    const-string v2, "emails"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 283
    const/4 v6, 0x0

    goto :goto_2

    .line 284
    :cond_6
    const-string/jumbo v2, "pin2"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 289
    .end local v13           #key:Ljava/lang/String;
    .end local v17           #pair:[Ljava/lang/String;
    .end local v18           #param:Ljava/lang/String;
    .end local v21           #val:Ljava/lang/String;
    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 290
    const/4 v9, 0x0

    .line 301
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #emails:[Ljava/lang/String;
    .end local v7           #pin2:Ljava/lang/String;
    .end local v16           #n:I
    .end local v20           #tokens:[Ljava/lang/String;
    :cond_8
    :goto_3
    return v9

    .line 293
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #emails:[Ljava/lang/String;
    .restart local v7       #pin2:Ljava/lang/String;
    .restart local v16       #n:I
    .restart local v20       #tokens:[Ljava/lang/String;
    :cond_9
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_a

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 294
    const/4 v9, 0x0

    goto :goto_3

    :cond_a
    move-object/from16 v2, p0

    .line 297
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    .line 298
    .local v19, success:Z
    if-nez v19, :cond_b

    .line 299
    const/4 v9, 0x0

    goto :goto_3

    .line 301
    :cond_b
    const/4 v9, 0x1

    goto :goto_3

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getInternalReadPermission()Ljava/lang/String;
    .locals 2

    .prologue
    .line 767
    const-string/jumbo v0, "ro.meizu.contactmsg.auth"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    const-string v0, "android.permission.READ_CONTACTS_SUPER"

    .line 770
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInternalWritePermission()Ljava/lang/String;
    .locals 2

    .prologue
    .line 776
    const-string/jumbo v0, "ro.meizu.contactmsg.auth"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    const-string v0, "android.permission.WRITE_CONTACTS_SUPER"

    .line 779
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 131
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 20
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 146
    const/4 v7, 0x0

    .line 150
    .local v7, pin2:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 151
    .local v15, match:I
    packed-switch v15, :pswitch_data_0

    .line 162
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot insert into URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :pswitch_0
    const/16 v2, 0x6f3a

    .line 166
    .local v2, efType:I
    :goto_0
    const-string/jumbo v1, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 167
    .local v10, tag:Ljava/lang/String;
    const-string/jumbo v1, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, number:Ljava/lang/String;
    const-string v1, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, emailStr:Ljava/lang/String;
    const/16 v16, 0x0

    .line 170
    .local v16, result:I
    const/16 v1, 0x6f3a

    if-ne v2, v1, :cond_0

    const-string/jumbo v1, "request_by_id"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v8}, Lcom/android/internal/telephony/IccProvider;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const-string/jumbo v1, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, name:Ljava/lang/String;
    const-string/jumbo v1, "second_number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, additionalNumber:Ljava/lang/String;
    move-object/from16 v1, p0

    .line 174
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://icc/adn/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 209
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #additionalNumber:Ljava/lang/String;
    :goto_1
    return-object v19

    .line 157
    .end local v2           #efType:I
    .end local v4           #number:Ljava/lang/String;
    .end local v6           #emailStr:Ljava/lang/String;
    .end local v10           #tag:Ljava/lang/String;
    .end local v16           #result:I
    :pswitch_1
    const/16 v2, 0x6f3b

    .line 158
    .restart local v2       #efType:I
    const-string/jumbo v1, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 159
    goto :goto_0

    .line 180
    .restart local v4       #number:Ljava/lang/String;
    .restart local v6       #emailStr:Ljava/lang/String;
    .restart local v10       #tag:Ljava/lang/String;
    .restart local v16       #result:I
    :cond_0
    const/4 v12, 0x0

    move-object/from16 v8, p0

    move v9, v2

    move-object v11, v4

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    .line 182
    .local v18, success:Z
    if-nez v18, :cond_1

    .line 183
    const/16 v19, 0x0

    goto :goto_1

    .line 187
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v1, "content://icc/"

    invoke-direct {v14, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .local v14, buf:Ljava/lang/StringBuilder;
    packed-switch v15, :pswitch_data_1

    .line 199
    :goto_2
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .local v17, resultUri:Landroid/net/Uri;
    move-object/from16 v19, v17

    .line 209
    goto :goto_1

    .line 190
    .end local v17           #resultUri:Landroid/net/Uri;
    :pswitch_2
    const-string v1, "adn/"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 194
    :pswitch_3
    const-string v1, "fdn/"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 188
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    const/16 v9, 0x6f3a

    .line 101
    sget-object v7, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 125
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown URL "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 103
    :pswitch_0
    const-string/jumbo v7, "request_by_id"

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Lcom/android/internal/telephony/IccProvider;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, ids:[I
    if-eqz p4, :cond_0

    .line 106
    array-length v7, p4

    new-array v3, v7, [I

    .line 107
    const/4 v4, 0x0

    .line 108
    .local v4, index:I
    move-object v1, p4

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v5, v4

    .end local v4           #index:I
    .local v5, index:I
    :goto_0
    if-ge v2, v6, :cond_0

    aget-object v0, v1, v2

    .line 109
    .local v0, arg:Ljava/lang/String;
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v3, v5

    .line 108
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_0

    .line 113
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #index:I
    .end local v6           #len$:I
    :cond_0
    invoke-direct {p0, v9, v3}, Lcom/android/internal/telephony/IccProvider;->loadFromEfEx(I[I)Landroid/database/Cursor;

    move-result-object v7

    .line 122
    .end local v3           #ids:[I
    :goto_1
    return-object v7

    .line 115
    :cond_1
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v7

    goto :goto_1

    .line 119
    :pswitch_1
    const/16 v7, 0x6f3b

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v7

    goto :goto_1

    .line 122
    :pswitch_2
    const/16 v7, 0x6f49

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v7

    goto :goto_1

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 25
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 308
    const/4 v15, 0x0

    .line 312
    .local v15, pin2:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v22

    .line 313
    .local v22, match:I
    packed-switch v22, :pswitch_data_0

    .line 324
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot insert into URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 315
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 328
    .local v3, efType:I
    :goto_0
    const/16 v2, 0x6f3a

    if-ne v3, v2, :cond_1

    const-string/jumbo v2, "request_by_id"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v9}, Lcom/android/internal/telephony/IccProvider;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p4, :cond_1

    .line 330
    const-string/jumbo v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, name:Ljava/lang/String;
    const-string/jumbo v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 332
    .local v5, number:Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 333
    .local v7, emailStr:Ljava/lang/String;
    const/16 v17, 0x0

    .line 334
    .local v17, count:I
    move-object/from16 v16, p4

    .local v16, arr$:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    aget-object v20, v16, v19

    .line 335
    .local v20, id:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 336
    .local v8, index:I
    const-string/jumbo v2, "second_number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 337
    .local v6, additionalNumber:Ljava/lang/String;
    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    add-int/lit8 v17, v17, 0x1

    .line 334
    :cond_0
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 319
    .end local v3           #efType:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #additionalNumber:Ljava/lang/String;
    .end local v7           #emailStr:Ljava/lang/String;
    .end local v8           #index:I
    .end local v16           #arr$:[Ljava/lang/String;
    .end local v17           #count:I
    .end local v19           #i$:I
    .end local v20           #id:Ljava/lang/String;
    .end local v21           #len$:I
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 320
    .restart local v3       #efType:I
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 321
    goto :goto_0

    .line 344
    :cond_1
    const-string/jumbo v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 345
    .local v11, tag:Ljava/lang/String;
    const-string/jumbo v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 346
    .restart local v5       #number:Ljava/lang/String;
    const/16 v18, 0x0

    .line 347
    .local v18, emails:[Ljava/lang/String;
    const-string/jumbo v2, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 348
    .local v13, newTag:Ljava/lang/String;
    const-string/jumbo v2, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 349
    .local v14, newNumber:Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, newEmails:[Ljava/lang/String;
    move-object/from16 v9, p0

    move v10, v3

    move-object v12, v5

    .line 351
    invoke-direct/range {v9 .. v15}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v24

    .line 354
    .local v24, success:Z
    if-nez v24, :cond_3

    .line 355
    const/16 v17, 0x0

    .line 358
    .end local v11           #tag:Ljava/lang/String;
    .end local v13           #newTag:Ljava/lang/String;
    .end local v14           #newNumber:Ljava/lang/String;
    .end local v18           #emails:[Ljava/lang/String;
    .end local v23           #newEmails:[Ljava/lang/String;
    .end local v24           #success:Z
    :cond_2
    :goto_2
    return v17

    .restart local v11       #tag:Ljava/lang/String;
    .restart local v13       #newTag:Ljava/lang/String;
    .restart local v14       #newNumber:Ljava/lang/String;
    .restart local v18       #emails:[Ljava/lang/String;
    .restart local v23       #newEmails:[Ljava/lang/String;
    .restart local v24       #success:Z
    :cond_3
    const/16 v17, 0x1

    goto :goto_2

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

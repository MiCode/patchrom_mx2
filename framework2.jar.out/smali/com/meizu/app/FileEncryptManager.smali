.class public Lcom/meizu/app/FileEncryptManager;
.super Ljava/lang/Object;
.source "FileEncryptManager.java"


# static fields
.field public static final ENCRYPT_INFO_ONLY_SELF:I = 0x0

.field public static final ENCRYPT_INFO_ONLY_SUB:I = 0x2

.field public static final ENCRYPT_INFO_SELF_AND_PARENT:I = 0x3

.field public static final ENCRYPT_INFO_WITH_SUB:I = 0x1

.field private static EXTERNAL_DIR:Ljava/lang/String;

.field private static EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;


# instance fields
.field private final EXTERNAL_LEN:I

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    .line 58
    iput-object p1, p0, Lcom/meizu/app/FileEncryptManager;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private deleteEncryptedInfoInternal(Ljava/util/ArrayList;)Z
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, enList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 672
    if-nez p1, :cond_1

    .line 697
    :cond_0
    :goto_0
    return v8

    .line 675
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 676
    .local v4, size:I
    if-eqz v4, :cond_0

    .line 679
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 681
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 682
    .local v5, src:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "path = \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 683
    .local v3, selection:Ljava/lang/String;
    sget-object v6, Lcom/meizu/provider/FileEncrypt$Encrypt;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 687
    .end local v3           #selection:Ljava/lang/String;
    .end local v5           #src:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 689
    :try_start_0
    iget-object v6, p0, Lcom/meizu/app/FileEncryptManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.meizu.provider.FileEncrypt"

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 694
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Failed to delete encrypt data"

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private insertEncryptedInfoInternal(Ljava/util/ArrayList;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, enList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 616
    if-nez p1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return v7

    .line 620
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 621
    .local v3, size:I
    if-eqz v3, :cond_0

    .line 624
    new-array v5, v3, [Landroid/content/ContentValues;

    .line 625
    .local v5, values:[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 626
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 627
    .local v0, enStr:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 628
    .local v4, value:Landroid/content/ContentValues;
    const-string v6, "path"

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    aput-object v4, v5, v1

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 631
    .end local v0           #enStr:Ljava/lang/String;
    .end local v4           #value:Landroid/content/ContentValues;
    :cond_2
    iget-object v6, p0, Lcom/meizu/app/FileEncryptManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 632
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v6, Lcom/meizu/provider/FileEncrypt$Encrypt;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto :goto_0
.end method


# virtual methods
.method public copyEncryptedFile(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 28
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, srcList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, destList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 380
    :cond_0
    const/4 v3, 0x1

    .line 472
    :goto_0
    return v3

    .line 383
    :cond_1
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v3

    const/4 v3, 0x1

    const-string v6, "path"

    aput-object v6, v4, v3

    .line 385
    .local v4, PROJECTON:[Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v14, enDests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 387
    .local v25, srcLen:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 388
    .local v11, destLen:I
    move/from16 v0, v25

    if-ne v0, v11, :cond_2

    if-nez v25, :cond_3

    .line 389
    :cond_2
    const-string v3, "FilelEncryptManager"

    const-string v6, "copyEncryptedFile number src != dest"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v3, 0x0

    goto :goto_0

    .line 392
    :cond_3
    const/16 v19, 0x0

    .local v19, index:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_e

    .line 393
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 394
    .local v23, src:Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 395
    .local v10, dest:Ljava/lang/String;
    sget-object v3, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 392
    :cond_4
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 399
    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v22

    .line 400
    .local v22, sLen:I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    .line 401
    .local v9, dLen:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    move/from16 v0, v22

    if-le v0, v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    if-le v9, v3, :cond_4

    .line 406
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    .local v24, srcFile:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->isDirectory()Z

    move-result v20

    .line 408
    .local v20, isDir:Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 409
    .local v17, enSrc:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 410
    .local v13, enDest:Ljava/lang/String;
    const/4 v5, 0x0

    .line 411
    .local v5, selection:Ljava/lang/String;
    if-eqz v20, :cond_a

    .line 412
    const-string v3, "/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 415
    :cond_6
    const-string v3, "/"

    invoke-virtual {v13, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 418
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path like \""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "%\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 423
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/app/FileEncryptManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 424
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/meizu/provider/FileEncrypt$Encrypt;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 426
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 428
    :goto_4
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_d

    .line 429
    const-string v3, "path"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 431
    .local v16, enPath:Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    .local v15, enFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 434
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .line 435
    .local v26, tail:Ljava/lang/String;
    move-object/from16 v21, v13

    .line 436
    .local v21, newDest:Ljava/lang/String;
    if-eqz v26, :cond_8

    .line 437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 439
    :cond_8
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    .end local v21           #newDest:Ljava/lang/String;
    .end local v26           #tail:Ljava/lang/String;
    :goto_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 453
    .end local v15           #enFile:Ljava/io/File;
    .end local v16           #enPath:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 454
    .local v12, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    if-eqz v8, :cond_9

    .line 457
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 458
    const/4 v8, 0x0

    .line 462
    .end local v12           #e:Ljava/lang/Exception;
    :cond_9
    :goto_6
    if-eqz v8, :cond_4

    .line 463
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 420
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path = \""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 442
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v15       #enFile:Ljava/io/File;
    .restart local v16       #enPath:Ljava/lang/String;
    :cond_b
    :try_start_2
    const-string v3, "FileEncryptManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "need remove info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v3, "_id"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 446
    .local v18, id:I
    sget-object v3, Lcom/meizu/provider/FileEncrypt$Encrypt;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v18

    int-to-long v6, v0

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v27

    .line 448
    .local v27, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 456
    .end local v15           #enFile:Ljava/io/File;
    .end local v16           #enPath:Ljava/lang/String;
    .end local v18           #id:I
    .end local v27           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_c

    .line 457
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 458
    const/4 v8, 0x0

    :cond_c
    throw v3

    .line 456
    :cond_d
    if-eqz v8, :cond_9

    .line 457
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 458
    const/4 v8, 0x0

    goto :goto_6

    .line 468
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v5           #selection:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #dLen:I
    .end local v10           #dest:Ljava/lang/String;
    .end local v13           #enDest:Ljava/lang/String;
    .end local v17           #enSrc:Ljava/lang/String;
    .end local v20           #isDir:Z
    .end local v22           #sLen:I
    .end local v23           #src:Ljava/lang/String;
    .end local v24           #srcFile:Ljava/io/File;
    :cond_e
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 470
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/meizu/app/FileEncryptManager;->insertEncryptedInfoInternal(Ljava/util/ArrayList;)Z

    .line 472
    :cond_f
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public copyEncryptedFileOnlySelf(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 28
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, srcList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, destList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 280
    :cond_0
    const/4 v3, 0x1

    .line 370
    :goto_0
    return v3

    .line 283
    :cond_1
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v3

    const/4 v3, 0x1

    const-string v6, "path"

    aput-object v6, v4, v3

    .line 285
    .local v4, PROJECTON:[Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v14, enDests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 287
    .local v25, srcLen:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 288
    .local v11, destLen:I
    move/from16 v0, v25

    if-ne v0, v11, :cond_2

    if-nez v25, :cond_3

    .line 289
    :cond_2
    const-string v3, "FilelEncryptManager"

    const-string v6, "copyEncryptedFile number src != dest"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v3, 0x0

    goto :goto_0

    .line 292
    :cond_3
    const/16 v19, 0x0

    .local v19, index:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    .line 293
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 294
    .local v23, src:Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 295
    .local v10, dest:Ljava/lang/String;
    sget-object v3, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 292
    :cond_4
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 299
    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v22

    .line 300
    .local v22, sLen:I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    .line 301
    .local v9, dLen:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    move/from16 v0, v22

    if-le v0, v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    if-le v9, v3, :cond_4

    .line 305
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .local v24, srcFile:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->isDirectory()Z

    move-result v20

    .line 307
    .local v20, isDir:Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 308
    .local v17, enSrc:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 309
    .local v13, enDest:Ljava/lang/String;
    const/4 v5, 0x0

    .line 310
    .local v5, selection:Ljava/lang/String;
    if-eqz v20, :cond_7

    .line 311
    const-string v3, "/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 314
    :cond_6
    const-string v3, "/"

    invoke-virtual {v13, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 318
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path = \""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/app/FileEncryptManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 321
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/meizu/provider/FileEncrypt$Encrypt;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 323
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 325
    :goto_3
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_c

    .line 326
    const-string v3, "path"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 328
    .local v16, enPath:Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    .local v15, enFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 331
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .line 332
    .local v26, tail:Ljava/lang/String;
    move-object/from16 v21, v13

    .line 333
    .local v21, newDest:Ljava/lang/String;
    if-eqz v26, :cond_8

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 336
    :cond_8
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .end local v21           #newDest:Ljava/lang/String;
    .end local v26           #tail:Ljava/lang/String;
    :goto_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 350
    .end local v15           #enFile:Ljava/io/File;
    .end local v16           #enPath:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 351
    .local v12, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    if-eqz v8, :cond_9

    .line 354
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 355
    const/4 v8, 0x0

    .line 360
    .end local v12           #e:Ljava/lang/Exception;
    :cond_9
    :goto_5
    if-eqz v8, :cond_4

    .line 361
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 339
    .restart local v15       #enFile:Ljava/io/File;
    .restart local v16       #enPath:Ljava/lang/String;
    :cond_a
    :try_start_2
    const-string v3, "FileEncryptManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "need remove info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v3, "_id"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 343
    .local v18, id:I
    sget-object v3, Lcom/meizu/provider/FileEncrypt$Encrypt;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v18

    int-to-long v6, v0

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v27

    .line 345
    .local v27, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 353
    .end local v15           #enFile:Ljava/io/File;
    .end local v16           #enPath:Ljava/lang/String;
    .end local v18           #id:I
    .end local v27           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_b

    .line 354
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 355
    const/4 v8, 0x0

    :cond_b
    throw v3

    .line 353
    :cond_c
    if-eqz v8, :cond_9

    .line 354
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 355
    const/4 v8, 0x0

    goto :goto_5

    .line 366
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v5           #selection:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #dLen:I
    .end local v10           #dest:Ljava/lang/String;
    .end local v13           #enDest:Ljava/lang/String;
    .end local v17           #enSrc:Ljava/lang/String;
    .end local v20           #isDir:Z
    .end local v22           #sLen:I
    .end local v23           #src:Ljava/lang/String;
    .end local v24           #srcFile:Ljava/io/File;
    :cond_d
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 368
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/meizu/app/FileEncryptManager;->insertEncryptedInfoInternal(Ljava/util/ArrayList;)Z

    .line 370
    :cond_e
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public decryptedFileList(Ljava/util/ArrayList;)Z
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 705
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 706
    const/4 v7, 0x1

    .line 732
    :goto_0
    return v7

    .line 708
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v0, enList:Ljava/util/ArrayList;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 710
    .local v5, path:Ljava/lang/String;
    sget-object v7, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 713
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 714
    .local v4, len:I
    iget v7, p0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    if-le v4, v7, :cond_1

    .line 718
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 719
    .local v6, srcFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 722
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, enPath:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v3

    .line 724
    .local v3, isDir:Z
    if-eqz v3, :cond_2

    .line 725
    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 726
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 729
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 732
    .end local v1           #enPath:Ljava/lang/String;
    .end local v3           #isDir:Z
    .end local v4           #len:I
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #srcFile:Ljava/io/File;
    :cond_3
    invoke-direct {p0, v0}, Lcom/meizu/app/FileEncryptManager;->deleteEncryptedInfoInternal(Ljava/util/ArrayList;)Z

    move-result v7

    goto :goto_0
.end method

.method public deleteEncryptedFile(Ljava/util/ArrayList;I)Z
    .locals 13
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 198
    if-nez p1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v10

    .line 201
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v6, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 203
    .local v7, path:Ljava/lang/String;
    sget-object v11, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 206
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 207
    .local v4, len:I
    iget v11, p0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    if-le v4, v11, :cond_2

    .line 211
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v9, srcFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, enPath:Ljava/lang/String;
    const/4 v8, 0x0

    .line 215
    .local v8, selection:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 242
    const/4 v10, 0x0

    goto :goto_0

    .line 217
    :pswitch_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "path = \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 218
    move-object v2, v1

    .line 219
    .local v2, folder:Ljava/lang/String;
    const-string v11, "/"

    invoke-virtual {v1, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 220
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " or path = \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 247
    .end local v2           #folder:Ljava/lang/String;
    :cond_3
    :goto_2
    const-string v11, "/"

    invoke-virtual {v1, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 248
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " or path like \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 256
    sget-object v11, Lcom/meizu/provider/FileEncrypt$Encrypt;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 226
    :pswitch_1
    move-object v5, v1

    .line 227
    .local v5, newPath:Ljava/lang/String;
    const-string v11, "/"

    invoke-virtual {v1, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 228
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 230
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "path like \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 231
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " or path = \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 234
    goto/16 :goto_2

    .line 236
    .end local v5           #newPath:Ljava/lang/String;
    :pswitch_2
    const-string v11, "/"

    invoke-virtual {v1, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 237
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "path like \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_%\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 240
    goto/16 :goto_2

    .line 260
    .end local v1           #enPath:Ljava/lang/String;
    .end local v4           #len:I
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #srcFile:Ljava/io/File;
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 262
    :try_start_0
    iget-object v11, p0, Lcom/meizu/app/FileEncryptManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "com.meizu.provider.FileEncrypt"

    invoke-virtual {v11, v12, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Failed to delete encrypt data"

    invoke-direct {v10, v11, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getEncryptSubFiles(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21
    .parameter "directory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 740
    if-nez p1, :cond_1

    .line 741
    const/4 v10, 0x0

    .line 822
    :cond_0
    :goto_0
    return-object v10

    .line 743
    :cond_1
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    .local v18, srcFile:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 746
    const/4 v10, 0x0

    goto :goto_0

    .line 749
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 751
    .local v10, enChilds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 753
    :cond_3
    const/4 v5, 0x0

    .line 754
    .local v5, selection:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v3

    const/4 v3, 0x1

    const-string v6, "path"

    aput-object v6, v4, v3

    .line 756
    .local v4, PROJECTON:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/app/FileEncryptManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 757
    .local v2, resolver:Landroid/content/ContentResolver;
    const/16 v16, 0x0

    .line 758
    .local v16, path:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    .line 759
    .local v17, size:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    move/from16 v0, v17

    if-gt v0, v3, :cond_7

    .line 760
    const-string v5, "path not like \"_%/_%\""

    .line 774
    :goto_1
    sget-object v3, Lcom/meizu/provider/FileEncrypt$Encrypt;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 776
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_6

    .line 778
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 779
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_c

    .line 780
    const-string v3, "path"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 782
    .local v12, enPath:Ljava/lang/String;
    const/16 v19, 0x0

    .line 783
    .local v19, start:I
    if-eqz v16, :cond_4

    .line 784
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    .line 786
    :cond_4
    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 787
    .local v15, name:Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v15, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 788
    const/4 v3, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v15, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 790
    :cond_5
    new-instance v11, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 792
    .local v11, enFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 793
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 809
    .end local v11           #enFile:Ljava/io/File;
    .end local v12           #enPath:Ljava/lang/String;
    .end local v15           #name:Ljava/lang/String;
    .end local v19           #start:I
    :catch_0
    move-exception v9

    .line 810
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 812
    if-eqz v8, :cond_6

    .line 813
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 814
    const/4 v8, 0x0

    .line 819
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v4           #PROJECTON:[Ljava/lang/String;
    .end local v5           #selection:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v16           #path:Ljava/lang/String;
    .end local v17           #size:I
    :cond_6
    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 820
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 762
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v4       #PROJECTON:[Ljava/lang/String;
    .restart local v5       #selection:Ljava/lang/String;
    .restart local v16       #path:Ljava/lang/String;
    .restart local v17       #size:I
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 763
    const-string v3, "/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 764
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 766
    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isDirectory()Z

    move-result v14

    .line 767
    .local v14, isDir:Z
    if-nez v14, :cond_9

    .line 768
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 770
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path like \""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_%\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " and "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "path"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " not like \""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_%/_%\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 796
    .end local v14           #isDir:Z
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v11       #enFile:Ljava/io/File;
    .restart local v12       #enPath:Ljava/lang/String;
    .restart local v15       #name:Ljava/lang/String;
    .restart local v19       #start:I
    :cond_a
    :try_start_2
    const-string v3, "FileEncryptManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getEncryptSubFiles need remove info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v3, "_id"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 801
    .local v13, id:I
    sget-object v3, Lcom/meizu/provider/FileEncrypt$Encrypt;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v13

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 803
    .local v20, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 812
    .end local v11           #enFile:Ljava/io/File;
    .end local v12           #enPath:Ljava/lang/String;
    .end local v13           #id:I
    .end local v15           #name:Ljava/lang/String;
    .end local v19           #start:I
    .end local v20           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_b

    .line 813
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 814
    const/4 v8, 0x0

    :cond_b
    throw v3

    .line 812
    :cond_c
    if-eqz v8, :cond_6

    .line 813
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 814
    const/4 v8, 0x0

    goto/16 :goto_4
.end method

.method public getFileEncrypted(Ljava/lang/String;I)Z
    .locals 17
    .parameter "file"
    .parameter "type"

    .prologue
    .line 72
    if-nez p1, :cond_1

    .line 73
    const/4 v11, 0x0

    .line 169
    :cond_0
    :goto_0
    return v11

    .line 75
    :cond_1
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v15, srcFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 78
    const/4 v11, 0x0

    goto :goto_0

    .line 81
    :cond_2
    const/4 v11, 0x0

    .line 83
    .local v11, find:Z
    sget-object v2, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    if-le v2, v5, :cond_0

    .line 85
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 86
    .local v14, path:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v13

    .line 87
    .local v13, isDir:Z
    if-eqz v13, :cond_3

    const-string v2, "/"

    invoke-virtual {v14, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 91
    :cond_3
    const/4 v4, 0x0

    .line 92
    .local v4, selection:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v2

    const/4 v2, 0x1

    const-string v5, "path"

    aput-object v5, v3, v2

    .line 94
    .local v3, PROJECTON:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/app/FileEncryptManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 95
    .local v1, resolver:Landroid/content/ContentResolver;
    packed-switch p2, :pswitch_data_0

    .line 126
    const/4 v11, 0x0

    goto :goto_0

    .line 97
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path=\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    :goto_1
    sget-object v2, Lcom/meizu/provider/FileEncrypt$Encrypt;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 131
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 133
    :goto_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    .line 134
    const-string v2, "path"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 136
    .local v10, enPath:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v9, enFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_9

    .line 139
    const/4 v11, 0x1

    .line 156
    .end local v9           #enFile:Ljava/io/File;
    .end local v10           #enPath:Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_5

    .line 157
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 158
    const/4 v7, 0x0

    .line 163
    :cond_5
    :goto_3
    if-eqz v7, :cond_0

    .line 165
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 100
    .end local v7           #cursor:Landroid/database/Cursor;
    :pswitch_1
    if-eqz v13, :cond_6

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path like \""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 103
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path=\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 105
    goto/16 :goto_1

    .line 107
    :pswitch_2
    if-eqz v13, :cond_7

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path like \""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_%\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 110
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 114
    :pswitch_3
    if-eqz v13, :cond_8

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path like \"%/\" AND \""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\" like ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "path"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "||\"%\")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 118
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(path like \"%/\" AND \""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\" like ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "path"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "||\"%\")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " OR "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "path"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "=\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    goto/16 :goto_1

    .line 143
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #enFile:Ljava/io/File;
    .restart local v10       #enPath:Ljava/lang/String;
    :cond_9
    :try_start_1
    const-string v2, "FileEncryptManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "need remove info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 147
    .local v12, id:I
    sget-object v2, Lcom/meizu/provider/FileEncrypt$Encrypt;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v12

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 149
    .local v16, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 151
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 153
    .end local v9           #enFile:Ljava/io/File;
    .end local v10           #enPath:Ljava/lang/String;
    .end local v12           #id:I
    .end local v16           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 154
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    if-eqz v7, :cond_5

    .line 157
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 158
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 156
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_a

    .line 157
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 158
    const/4 v7, 0x0

    :cond_a
    throw v2

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getFileEncrypted(Ljava/util/ArrayList;I)Z
    .locals 4
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 177
    if-nez p1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v2

    .line 181
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    .local v1, path:Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lcom/meizu/app/FileEncryptManager;->getFileEncrypted(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public insertEncryptedInfo(Ljava/util/ArrayList;)Z
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 641
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 642
    const/4 v7, 0x1

    .line 668
    :goto_0
    return v7

    .line 644
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v0, enList:Ljava/util/ArrayList;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 646
    .local v5, path:Ljava/lang/String;
    sget-object v7, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 649
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 650
    .local v4, len:I
    iget v7, p0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    if-le v4, v7, :cond_1

    .line 654
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 655
    .local v6, srcFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 658
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, enPath:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v3

    .line 660
    .local v3, isDir:Z
    if-eqz v3, :cond_2

    .line 661
    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 662
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 665
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 668
    .end local v1           #enPath:Ljava/lang/String;
    .end local v3           #isDir:Z
    .end local v4           #len:I
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #srcFile:Ljava/io/File;
    :cond_3
    invoke-direct {p0, v0}, Lcom/meizu/app/FileEncryptManager;->insertEncryptedInfoInternal(Ljava/util/ArrayList;)Z

    move-result v7

    goto :goto_0
.end method

.method public updateEncryptedFile(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 30
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 481
    .local p1, srcList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, destList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 482
    :cond_0
    const/4 v3, 0x1

    .line 612
    :goto_0
    return v3

    .line 484
    :cond_1
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v3

    const/4 v3, 0x1

    const-string v6, "path"

    aput-object v6, v4, v3

    .line 486
    .local v4, PROJECTON:[Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v15, enDests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 488
    .local v26, srcLen:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 489
    .local v12, destLen:I
    move/from16 v0, v26

    if-ne v0, v12, :cond_2

    if-nez v26, :cond_3

    .line 490
    :cond_2
    const-string v3, "FilelEncryptManager"

    const-string v6, "updateEncryptedFile number src != dest"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v3, 0x0

    goto :goto_0

    .line 495
    :cond_3
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v23, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v20, 0x0

    .local v20, index:I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_10

    .line 497
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 498
    .local v25, src:Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 499
    .local v10, dest:Ljava/lang/String;
    sget-object v3, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 496
    :cond_4
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 502
    :cond_5
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v24

    .line 503
    .local v24, sLen:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    move/from16 v0, v24

    if-le v0, v3, :cond_4

    .line 508
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    .local v11, destFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 512
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v21

    .line 513
    .local v21, isDir:Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 514
    .local v18, enSrc:Ljava/lang/String;
    const/4 v5, 0x0

    .line 515
    .local v5, selection:Ljava/lang/String;
    sget-object v3, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 516
    if-eqz v21, :cond_7

    .line 517
    const-string v3, "/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 518
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 520
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path like \""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "%\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 524
    :goto_3
    sget-object v3, Lcom/meizu/provider/FileEncrypt$Encrypt;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 522
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path = \""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 530
    :cond_8
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    .line 531
    .local v9, dLen:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    if-le v9, v3, :cond_4

    .line 535
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_LEN:I

    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 536
    .local v14, enDest:Ljava/lang/String;
    if-eqz v21, :cond_d

    .line 537
    const-string v3, "/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 540
    :cond_9
    const-string v3, "/"

    invoke-virtual {v14, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 543
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path like \""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "%\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 548
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/app/FileEncryptManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 549
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/meizu/provider/FileEncrypt$Encrypt;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 551
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_c

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 553
    :goto_5
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_e

    .line 554
    const-string v3, "path"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 556
    .local v17, enPath:Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/meizu/app/FileEncryptManager;->EXTERNAL_DIR_END_WITH_DIV:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 560
    .local v16, enFile:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 561
    .local v27, tail:Ljava/lang/String;
    move-object/from16 v22, v14

    .line 562
    .local v22, newDest:Ljava/lang/String;
    if-eqz v27, :cond_b

    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 565
    :cond_b
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 566
    .local v29, value:Landroid/content/ContentValues;
    const-string v3, "path"

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v3, "_id"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 569
    .local v19, id:I
    sget-object v3, Lcom/meizu/provider/FileEncrypt$Encrypt;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v28

    .line 571
    .local v28, uri:Landroid/net/Uri;
    invoke-static/range {v28 .. v28}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 586
    .end local v16           #enFile:Ljava/io/File;
    .end local v17           #enPath:Ljava/lang/String;
    .end local v19           #id:I
    .end local v22           #newDest:Ljava/lang/String;
    .end local v27           #tail:Ljava/lang/String;
    .end local v28           #uri:Landroid/net/Uri;
    .end local v29           #value:Landroid/content/ContentValues;
    :catch_0
    move-exception v13

    .line 587
    .local v13, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    if-eqz v8, :cond_c

    .line 590
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 591
    const/4 v8, 0x0

    .line 595
    .end local v13           #e:Ljava/lang/Exception;
    :cond_c
    :goto_6
    if-eqz v8, :cond_4

    .line 596
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 545
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path = \""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 589
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_e
    if-eqz v8, :cond_c

    .line 590
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 591
    const/4 v8, 0x0

    goto :goto_6

    .line 589
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_f

    .line 590
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 591
    const/4 v8, 0x0

    :cond_f
    throw v3

    .line 601
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v5           #selection:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #dLen:I
    .end local v10           #dest:Ljava/lang/String;
    .end local v11           #destFile:Ljava/io/File;
    .end local v14           #enDest:Ljava/lang/String;
    .end local v18           #enSrc:Ljava/lang/String;
    .end local v21           #isDir:Z
    .end local v24           #sLen:I
    .end local v25           #src:Ljava/lang/String;
    :cond_10
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_11

    .line 603
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/app/FileEncryptManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "com.meizu.provider.FileEncrypt"

    move-object/from16 v0, v23

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 612
    :cond_11
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 606
    :catch_1
    move-exception v13

    .line 607
    .restart local v13       #e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 608
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v6, "Failed to delete encrypt data"

    invoke-direct {v3, v6, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

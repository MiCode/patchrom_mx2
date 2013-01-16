.class public Landroid/content/pm/ResolveInfo$DisplayNameComparator;
.super Ljava/lang/Object;
.source "ResolveInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ResolveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private mIsChineseLang:Z

.field private mPM:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 2
    .parameter "pm"

    .prologue
    .line 314
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    .line 316
    const-string/jumbo v0, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mIsChineseLang:Z

    .line 317
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mCollator:Ljava/text/Collator;

    .line 318
    iget-object v0, p0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 319
    return-void
.end method


# virtual methods
.method public final compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 24
    .parameter "a"
    .parameter "b"

    .prologue
    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 323
    .local v17, sa:Ljava/lang/CharSequence;
    if-nez v17, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 324
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 325
    .local v18, sb:Ljava/lang/CharSequence;
    if-nez v18, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 326
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 327
    .local v19, str1:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 328
    .local v20, str2:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v9

    .line 329
    .local v9, len1:I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v10

    .line 331
    .local v10, len2:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mIsChineseLang:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 333
    if-lez v9, :cond_7

    if-lez v10, :cond_7

    .line 335
    const/4 v6, 0x0

    .local v6, index:I
    :goto_0
    if-ge v6, v9, :cond_7

    .line 337
    if-lt v6, v10, :cond_2

    .line 339
    const/16 v21, 0x1

    .line 467
    .end local v6           #index:I
    :goto_1
    return v21

    .line 341
    .restart local v6       #index:I
    :cond_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 342
    .local v2, ch1:C
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 343
    .local v3, ch2:C
    if-eq v2, v3, :cond_6

    .line 345
    const/16 v21, 0x80

    move/from16 v0, v21

    if-lt v2, v0, :cond_3

    const/16 v21, 0x80

    move/from16 v0, v21

    if-lt v3, v0, :cond_4

    :cond_3
    const/16 v21, 0x80

    move/from16 v0, v21

    if-lt v3, v0, :cond_7

    const/16 v21, 0x80

    move/from16 v0, v21

    if-ge v2, v0, :cond_7

    .line 347
    :cond_4
    const/16 v21, 0x80

    move/from16 v0, v21

    if-ge v2, v0, :cond_5

    const/16 v21, -0x1

    goto :goto_1

    :cond_5
    const/16 v21, 0x1

    goto :goto_1

    .line 335
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 355
    .end local v2           #ch1:C
    .end local v3           #ch2:C
    .end local v6           #index:I
    :cond_7
    const/4 v7, 0x0

    .local v7, index1:I
    const/4 v8, 0x0

    .local v8, index2:I
    const/4 v4, 0x0

    .local v4, count1:I
    const/4 v5, 0x0

    .line 356
    .local v5, count2:I
    :goto_2
    if-ge v7, v9, :cond_1c

    if-ge v8, v10, :cond_1c

    .line 357
    move v11, v7

    .line 358
    .local v11, num1:I
    move v13, v8

    .line 359
    .local v13, num2:I
    :goto_3
    if-ge v7, v9, :cond_8

    .line 360
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 361
    .restart local v2       #ch1:C
    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v2, v0, :cond_8

    const/16 v21, 0x39

    move/from16 v0, v21

    if-le v2, v0, :cond_a

    .line 367
    .end local v2           #ch1:C
    :cond_8
    :goto_4
    if-ge v8, v10, :cond_9

    .line 368
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 369
    .restart local v3       #ch2:C
    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v3, v0, :cond_9

    const/16 v21, 0x39

    move/from16 v0, v21

    if-le v3, v0, :cond_b

    .line 375
    .end local v3           #ch2:C
    :cond_9
    sub-int v15, v7, v11

    .line 376
    .local v15, numlen1:I
    sub-int v16, v8, v13

    .line 378
    .local v16, numlen2:I
    move/from16 v0, v16

    if-eq v15, v0, :cond_12

    .line 379
    if-lez v15, :cond_11

    if-lez v16, :cond_11

    .line 380
    move v12, v11

    .local v12, num11:I
    move v14, v13

    .line 381
    .local v14, num22:I
    :goto_5
    if-ge v12, v7, :cond_c

    .line 382
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x30

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 383
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 364
    .end local v12           #num11:I
    .end local v14           #num22:I
    .end local v15           #numlen1:I
    .end local v16           #numlen2:I
    .restart local v2       #ch1:C
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 365
    goto :goto_3

    .line 372
    .end local v2           #ch1:C
    .restart local v3       #ch2:C
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 373
    goto :goto_4

    .line 388
    .end local v3           #ch2:C
    .restart local v12       #num11:I
    .restart local v14       #num22:I
    .restart local v15       #numlen1:I
    .restart local v16       #numlen2:I
    :cond_c
    :goto_6
    if-ge v14, v8, :cond_d

    .line 389
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x30

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 390
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 395
    :cond_d
    sub-int v21, v7, v12

    sub-int v22, v8, v14

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    .line 396
    sub-int v21, v7, v12

    sub-int v22, v8, v14

    sub-int v21, v21, v22

    goto/16 :goto_1

    .line 399
    :cond_e
    :goto_7
    if-ge v12, v7, :cond_10

    if-ge v14, v8, :cond_10

    .line 400
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 401
    .restart local v2       #ch1:C
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 402
    .restart local v3       #ch2:C
    if-ne v2, v3, :cond_f

    .line 403
    add-int/lit8 v12, v12, 0x1

    .line 404
    add-int/lit8 v14, v14, 0x1

    .line 405
    goto :goto_7

    .line 407
    :cond_f
    sub-int v21, v2, v3

    goto/16 :goto_1

    .line 411
    .end local v2           #ch1:C
    .end local v3           #ch2:C
    :cond_10
    sub-int v21, v16, v15

    goto/16 :goto_1

    .line 414
    .end local v12           #num11:I
    .end local v14           #num22:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mCollator:Ljava/text/Collator;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    goto/16 :goto_1

    .line 419
    :cond_12
    if-lez v15, :cond_14

    .line 421
    :goto_8
    if-ge v11, v7, :cond_14

    .line 422
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 423
    .restart local v2       #ch1:C
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 424
    .restart local v3       #ch2:C
    if-ne v2, v3, :cond_13

    .line 425
    add-int/lit8 v11, v11, 0x1

    .line 426
    goto :goto_8

    .line 428
    :cond_13
    sub-int v21, v2, v3

    goto/16 :goto_1

    .line 432
    .end local v2           #ch1:C
    .end local v3           #ch2:C
    :cond_14
    if-ge v7, v9, :cond_15

    if-lt v8, v10, :cond_16

    .line 433
    :cond_15
    sub-int v21, v9, v10

    goto/16 :goto_1

    .line 436
    :cond_16
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 437
    .restart local v2       #ch1:C
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 438
    .restart local v3       #ch2:C
    const/16 v21, 0x61

    move/from16 v0, v21

    if-gt v2, v0, :cond_18

    const/16 v21, 0x7a

    move/from16 v0, v21

    if-lt v2, v0, :cond_18

    .line 439
    const/16 v21, 0x41

    move/from16 v0, v21

    if-gt v3, v0, :cond_17

    const/16 v21, 0x5a

    move/from16 v0, v21

    if-lt v3, v0, :cond_17

    .line 440
    add-int/lit8 v21, v3, 0x20

    move/from16 v0, v21

    int-to-char v3, v0

    .line 443
    :cond_17
    if-eq v2, v3, :cond_1b

    .line 444
    sub-int v21, v2, v3

    goto/16 :goto_1

    .line 447
    :cond_18
    const/16 v21, 0x41

    move/from16 v0, v21

    if-gt v2, v0, :cond_1a

    const/16 v21, 0x5a

    move/from16 v0, v21

    if-lt v2, v0, :cond_1a

    .line 448
    const/16 v21, 0x61

    move/from16 v0, v21

    if-gt v3, v0, :cond_19

    const/16 v21, 0x7a

    move/from16 v0, v21

    if-lt v3, v0, :cond_19

    .line 449
    add-int/lit8 v21, v3, -0x20

    move/from16 v0, v21

    int-to-char v3, v0

    .line 452
    :cond_19
    if-eq v2, v3, :cond_1b

    .line 453
    sub-int v21, v2, v3

    goto/16 :goto_1

    .line 456
    :cond_1a
    if-eq v2, v3, :cond_1b

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->mCollator:Ljava/text/Collator;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    goto/16 :goto_1

    .line 463
    :cond_1b
    add-int/lit8 v7, v7, 0x1

    .line 464
    add-int/lit8 v8, v8, 0x1

    .line 465
    goto/16 :goto_2

    .line 467
    .end local v2           #ch1:C
    .end local v3           #ch2:C
    .end local v11           #num1:I
    .end local v13           #num2:I
    .end local v15           #numlen1:I
    .end local v16           #numlen2:I
    :cond_1c
    sub-int v21, v9, v10

    goto/16 :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method

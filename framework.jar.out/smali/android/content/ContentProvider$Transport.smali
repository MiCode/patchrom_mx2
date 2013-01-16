.class Landroid/content/ContentProvider$Transport;
.super Landroid/content/ContentProviderNative;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/ContentProvider;


# direct methods
.method constructor <init>(Landroid/content/ContentProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    return-void
.end method

.method private checkInternalReadPermission()Landroid/content/ContentProvider$Perm_Check_Ret;
    .locals 3

    .prologue
    .line 526
    invoke-direct {p0}, Landroid/content/ContentProvider$Transport;->isNeedToCheckSuperReadPermission()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 527
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2}, Landroid/content/ContentProvider;->getInternalReadPermission()Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, readPermSuper:Ljava/lang/String;
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, readPermRegular:Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Landroid/content/ContentProvider$Transport;->checkSpecifiedPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    sget-object v2, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 538
    .end local v0           #readPermRegular:Ljava/lang/String;
    .end local v1           #readPermSuper:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 535
    .restart local v0       #readPermRegular:Ljava/lang/String;
    .restart local v1       #readPermSuper:Ljava/lang/String;
    :cond_0
    sget-object v2, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto :goto_0

    .line 538
    .end local v0           #readPermRegular:Ljava/lang/String;
    .end local v1           #readPermSuper:Ljava/lang/String;
    :cond_1
    sget-object v2, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto :goto_0
.end method

.method private checkInternalWritePermission()Landroid/content/ContentProvider$Perm_Check_Ret;
    .locals 3

    .prologue
    .line 545
    invoke-direct {p0}, Landroid/content/ContentProvider$Transport;->isNeedToCheckSuperWritePermission()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 546
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2}, Landroid/content/ContentProvider;->getInternalWritePermission()Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, writePermSuper:Ljava/lang/String;
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, writePermRegular:Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Landroid/content/ContentProvider$Transport;->checkSpecifiedPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    sget-object v2, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 556
    .end local v0           #writePermRegular:Ljava/lang/String;
    .end local v1           #writePermSuper:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 553
    .restart local v0       #writePermRegular:Ljava/lang/String;
    .restart local v1       #writePermSuper:Ljava/lang/String;
    :cond_0
    sget-object v2, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto :goto_0

    .line 556
    .end local v0           #writePermRegular:Ljava/lang/String;
    .end local v1           #writePermSuper:Ljava/lang/String;
    :cond_1
    sget-object v2, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto :goto_0
.end method

.method private checkSpecifiedPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "superPerm"
    .parameter "regualPerm"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 503
    if-nez p1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v4

    .line 505
    :cond_1
    iget-object v6, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v6}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 506
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 507
    .local v1, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 510
    .local v3, uid:I
    invoke-virtual {v0, p1, v1, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_2

    move v2, v4

    .line 513
    .local v2, result:Z
    :goto_1
    if-nez v2, :cond_0

    .line 517
    invoke-virtual {v0, p2, v1, v3}, Landroid/content/Context;->checkInternalReadAndWriteContentPermission(Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_3

    move v2, v4

    :goto_2
    move v4, v2

    .line 520
    goto :goto_0

    .end local v2           #result:Z
    :cond_2
    move v2, v5

    .line 510
    goto :goto_1

    .restart local v2       #result:Z
    :cond_3
    move v2, v5

    .line 517
    goto :goto_2
.end method

.method private enforceReadPermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;
    .locals 21
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 365
    .local v7, context:Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 366
    .local v14, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 367
    .local v17, uid:I
    const/4 v11, 0x0

    .line 370
    .local v11, missingPerm:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    #getter for: Landroid/content/ContentProvider;->mMyUid:I
    invoke-static/range {v18 .. v18}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 371
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 421
    :goto_0
    return-object v18

    .line 374
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    #getter for: Landroid/content/ContentProvider;->mExported:Z
    invoke-static/range {v18 .. v18}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v6

    .line 376
    .local v6, componentPerm:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 377
    move/from16 v0, v17

    invoke-virtual {v7, v6, v14, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    .line 378
    .local v5, check_ret:I
    if-nez v5, :cond_1

    .line 379
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto :goto_0

    .line 380
    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_2

    .line 381
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto :goto_0

    .line 383
    :cond_2
    move-object v11, v6

    .line 389
    .end local v5           #check_ret:I
    :cond_3
    if-nez v6, :cond_4

    const/4 v3, 0x1

    .line 391
    .local v3, allowDefaultRead:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v16

    .line 392
    .local v16, pps:[Landroid/content/pm/PathPermission;
    if-eqz v16, :cond_8

    .line 393
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 394
    .local v12, path:Ljava/lang/String;
    move-object/from16 v4, v16

    .local v4, arr$:[Landroid/content/pm/PathPermission;
    array-length v10, v4

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_2
    if-ge v9, v10, :cond_8

    aget-object v15, v4, v9

    .line 395
    .local v15, pp:Landroid/content/pm/PathPermission;
    invoke-virtual {v15}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v13

    .line 396
    .local v13, pathPerm:Ljava/lang/String;
    if-eqz v13, :cond_7

    invoke-virtual {v15, v12}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 397
    move/from16 v0, v17

    invoke-virtual {v7, v13, v14, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    .line 398
    .restart local v5       #check_ret:I
    if-nez v5, :cond_5

    .line 399
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto :goto_0

    .line 389
    .end local v3           #allowDefaultRead:Z
    .end local v4           #arr$:[Landroid/content/pm/PathPermission;
    .end local v5           #check_ret:I
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #pathPerm:Ljava/lang/String;
    .end local v15           #pp:Landroid/content/pm/PathPermission;
    .end local v16           #pps:[Landroid/content/pm/PathPermission;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 400
    .restart local v3       #allowDefaultRead:Z
    .restart local v4       #arr$:[Landroid/content/pm/PathPermission;
    .restart local v5       #check_ret:I
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    .restart local v12       #path:Ljava/lang/String;
    .restart local v13       #pathPerm:Ljava/lang/String;
    .restart local v15       #pp:Landroid/content/pm/PathPermission;
    .restart local v16       #pps:[Landroid/content/pm/PathPermission;
    :cond_5
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_6

    .line 401
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto :goto_0

    .line 406
    :cond_6
    const/4 v3, 0x0

    .line 407
    move-object v11, v13

    .line 394
    .end local v5           #check_ret:I
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 415
    .end local v4           #arr$:[Landroid/content/pm/PathPermission;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #pathPerm:Ljava/lang/String;
    .end local v15           #pp:Landroid/content/pm/PathPermission;
    :cond_8
    if-eqz v3, :cond_9

    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto :goto_0

    .line 419
    .end local v3           #allowDefaultRead:Z
    .end local v6           #componentPerm:Ljava/lang/String;
    .end local v16           #pps:[Landroid/content/pm/PathPermission;
    :cond_9
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v7, v0, v14, v1, v2}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v18

    if-nez v18, :cond_a

    .line 421
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto/16 :goto_0

    .line 424
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    #getter for: Landroid/content/ContentProvider;->mExported:Z
    invoke-static/range {v18 .. v18}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;)Z

    move-result v18

    if-eqz v18, :cond_b

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " requires "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", or grantUriPermission()"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 427
    .local v8, failReason:Ljava/lang/String;
    :goto_3
    new-instance v18, Ljava/lang/SecurityException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Permission Denial: reading "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " uri "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " from pid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", uid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 424
    .end local v8           #failReason:Ljava/lang/String;
    :cond_b
    const-string v8, " requires the provider be exported, or grantUriPermission()"

    goto :goto_3
.end method

.method private enforceWritePermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;
    .locals 21
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 434
    .local v7, context:Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 435
    .local v14, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 436
    .local v17, uid:I
    const/4 v11, 0x0

    .line 439
    .local v11, missingPerm:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    #getter for: Landroid/content/ContentProvider;->mMyUid:I
    invoke-static/range {v18 .. v18}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 440
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 490
    :goto_0
    return-object v18

    .line 443
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    #getter for: Landroid/content/ContentProvider;->mExported:Z
    invoke-static/range {v18 .. v18}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v6

    .line 446
    .local v6, componentPerm:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 447
    move/from16 v0, v17

    invoke-virtual {v7, v6, v14, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    .line 448
    .local v5, check_ret:I
    if-nez v5, :cond_1

    .line 449
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto :goto_0

    .line 450
    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_2

    .line 451
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto :goto_0

    .line 453
    :cond_2
    move-object v11, v6

    .line 459
    .end local v5           #check_ret:I
    :cond_3
    if-nez v6, :cond_4

    const/4 v3, 0x1

    .line 461
    .local v3, allowDefaultWrite:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v16

    .line 462
    .local v16, pps:[Landroid/content/pm/PathPermission;
    if-eqz v16, :cond_8

    .line 463
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 464
    .local v12, path:Ljava/lang/String;
    move-object/from16 v4, v16

    .local v4, arr$:[Landroid/content/pm/PathPermission;
    array-length v10, v4

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_2
    if-ge v9, v10, :cond_8

    aget-object v15, v4, v9

    .line 465
    .local v15, pp:Landroid/content/pm/PathPermission;
    invoke-virtual {v15}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v13

    .line 466
    .local v13, pathPerm:Ljava/lang/String;
    if-eqz v13, :cond_7

    invoke-virtual {v15, v12}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 467
    move/from16 v0, v17

    invoke-virtual {v7, v13, v14, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    .line 468
    .restart local v5       #check_ret:I
    if-nez v5, :cond_5

    .line 469
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto :goto_0

    .line 459
    .end local v3           #allowDefaultWrite:Z
    .end local v4           #arr$:[Landroid/content/pm/PathPermission;
    .end local v5           #check_ret:I
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #pathPerm:Ljava/lang/String;
    .end local v15           #pp:Landroid/content/pm/PathPermission;
    .end local v16           #pps:[Landroid/content/pm/PathPermission;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 470
    .restart local v3       #allowDefaultWrite:Z
    .restart local v4       #arr$:[Landroid/content/pm/PathPermission;
    .restart local v5       #check_ret:I
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    .restart local v12       #path:Ljava/lang/String;
    .restart local v13       #pathPerm:Ljava/lang/String;
    .restart local v15       #pp:Landroid/content/pm/PathPermission;
    .restart local v16       #pps:[Landroid/content/pm/PathPermission;
    :cond_5
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_6

    .line 471
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto :goto_0

    .line 475
    :cond_6
    const/4 v3, 0x0

    .line 476
    move-object v11, v13

    .line 464
    .end local v5           #check_ret:I
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 484
    .end local v4           #arr$:[Landroid/content/pm/PathPermission;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #pathPerm:Ljava/lang/String;
    .end local v15           #pp:Landroid/content/pm/PathPermission;
    :cond_8
    if-eqz v3, :cond_9

    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto :goto_0

    .line 488
    .end local v3           #allowDefaultWrite:Z
    .end local v6           #componentPerm:Ljava/lang/String;
    .end local v16           #pps:[Landroid/content/pm/PathPermission;
    :cond_9
    const/16 v18, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v7, v0, v14, v1, v2}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v18

    if-nez v18, :cond_a

    .line 490
    sget-object v18, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    goto/16 :goto_0

    .line 493
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    #getter for: Landroid/content/ContentProvider;->mExported:Z
    invoke-static/range {v18 .. v18}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;)Z

    move-result v18

    if-eqz v18, :cond_b

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " requires "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", or grantUriPermission()"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 496
    .local v8, failReason:Ljava/lang/String;
    :goto_3
    new-instance v18, Ljava/lang/SecurityException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Permission Denial: writing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " uri "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " from pid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", uid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 493
    .end local v8           #failReason:Ljava/lang/String;
    :cond_b
    const-string v8, " requires the provider be exported, or grantUriPermission()"

    goto :goto_3
.end method

.method private isCallingFromTrustingApp()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 570
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 571
    .local v2, callingUid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 572
    .local v1, callingPid:I
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    #getter for: Landroid/content/ContentProvider;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v1, v5}, Landroid/content/pm/PackageManager;->getInstalledPackagesExtralPm(III)Ljava/util/List;

    move-result-object v3

    .line 576
    .local v3, packageinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 577
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 584
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 585
    const-string v4, "PermChecker_ContentProvider"

    const-string v5, "isCallingFromSystemApp is  true"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v4, 0x1

    .line 589
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v4

    .line 580
    :cond_0
    const-string v4, "PermChecker_ContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "packageinfolist size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 581
    goto :goto_0

    .line 588
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_1
    const-string v4, "PermChecker_ContentProvider"

    const-string v6, "isCallingFromSystemApp is  false"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 589
    goto :goto_0
.end method

.method private isNeedToCheckSuperReadPermission()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 561
    sget v1, Landroid/content/ContentProvider;->RequestPermissionLevel:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getInternalReadPermission()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedToCheckSuperWritePermission()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 566
    sget v1, Landroid/content/ContentProvider;->RequestPermissionLevel:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getInternalWritePermission()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 246
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 247
    .local v2, ret:Landroid/content/ContentProvider$Perm_Check_Ret;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProviderOperation;

    .line 248
    .local v1, operation:Landroid/content/ContentProviderOperation;
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v2

    .line 258
    :cond_1
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v2

    goto :goto_0

    .line 270
    .end local v1           #operation:Landroid/content/ContentProviderOperation;
    :cond_2
    sget-object v3, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    if-ne v2, v3, :cond_3

    .line 271
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v3, p1}, Landroid/content/ContentProvider;->applyBatchWithoutInternalPerm(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    .line 273
    :goto_1
    return-object v3

    :cond_3
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v3, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    goto :goto_1
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 2
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 232
    sget-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 235
    .local v0, ret:Landroid/content/ContentProvider$Perm_Check_Ret;
    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 236
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->bulkInsertWithoutInternalPerm(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    .line 240
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "method"
    .parameter "arg"
    .parameter "extras"

    .prologue
    .line 340
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 278
    sget-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 281
    .local v0, ret:Landroid/content/ContentProvider$Perm_Check_Ret;
    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 282
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/ContentProvider;->deleteWithoutInternalPerm(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 286
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method getContentProvider()Landroid/content/ContentProvider;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "uri"
    .parameter "mimeTypeFilter"

    .prologue
    .line 345
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 214
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 219
    sget-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 222
    .local v0, ret:Landroid/content/ContentProvider$Perm_Check_Ret;
    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 223
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->insertWithoutInternalPerm(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 227
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 323
    sget-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 324
    .local v0, ret:Landroid/content/ContentProvider$Perm_Check_Ret;
    if-eqz p2, :cond_0

    const-string/jumbo v1, "rw"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v0

    if-ne v1, v0, :cond_1

    .line 327
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->openAssetFileWithoutInternalPerm(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 335
    :goto_0
    return-object v1

    .line 331
    :cond_0
    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v0

    if-ne v1, v0, :cond_1

    .line 332
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->openAssetFileWithoutInternalPerm(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    goto :goto_0

    .line 335
    :cond_1
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 306
    sget-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 307
    .local v0, ret:Landroid/content/ContentProvider$Perm_Check_Ret;
    if-eqz p2, :cond_0

    const-string/jumbo v1, "rw"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v0

    if-ne v1, v0, :cond_1

    .line 309
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->openFileWithoutInternalPerm(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 317
    :goto_0
    return-object v1

    .line 313
    :cond_0
    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v0

    if-ne v1, v0, :cond_1

    .line 314
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->openFileWithoutInternalPerm(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0

    .line 317
    :cond_1
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .parameter "uri"
    .parameter "mimeType"
    .parameter "opts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 351
    sget-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 352
    .local v0, ret:Landroid/content/ContentProvider$Perm_Check_Ret;
    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 353
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFileWithoutInternalPerm(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 355
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 8
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "cancellationSignal"

    .prologue
    .line 199
    sget-object v7, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 201
    .local v7, ret:Landroid/content/ContentProvider$Perm_Check_Ret;
    sget-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v7

    if-ne v0, v7, :cond_0

    .line 202
    const-string v0, "PermChecker_ContentProvider"

    const-string v1, "Perm_Check_Ret.Limited"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->queryWithoutInternalPerm(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p6}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 292
    sget-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    .line 295
    .local v0, ret:Landroid/content/ContentProvider$Perm_Check_Ret;
    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)Landroid/content/ContentProvider$Perm_Check_Ret;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 296
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/ContentProvider;->updateWithoutInternalPerm(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 300
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

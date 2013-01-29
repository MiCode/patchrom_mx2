.class public Lcom/meizu/video/client/util/TestData;
.super Ljava/lang/Object;
.source "TestData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static composeChannelDetailJsonString(IIII)Ljava/lang/String;
    .locals 20
    .parameter "itemNum"
    .parameter "lableNum"
    .parameter "codeType"
    .parameter "searchType"

    .prologue
    .line 485
    const-string v6, ""

    .line 486
    .local v6, channelDetailJsonString:Ljava/lang/String;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 488
    .local v10, channelDetailToalJson:Lorg/json/JSONObject;
    const/16 v17, -0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 489
    :try_start_0
    const-string v17, "code"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    const-string v17, "msg"

    const-string v18, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u6ca1\u6709\u83b7\u53d6\u5230\u8be5\u9891\u9053\u7684\u5217\u8868\u8be6\u60c5\u4fe1\u606f"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 491
    const-string v17, "data"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    .line 592
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 594
    :cond_1
    return-object v6

    .line 492
    :cond_2
    if-nez p2, :cond_0

    .line 493
    :try_start_1
    const-string v17, "code"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 497
    .local v7, channelDetailMsgJson:Lorg/json/JSONObject;
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 498
    const-string v17, "total"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 499
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 500
    .local v8, channelDetailMsgTypeJson:Lorg/json/JSONArray;
    const/4 v15, 0x1

    .line 501
    .local v15, levelNum:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    if-ge v13, v15, :cond_5

    .line 502
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 503
    .local v11, channelMsgTypeItemJson:Lorg/json/JSONObject;
    const-string v17, "level"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    const-string v17, "key"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    const-string v17, "select"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 506
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 507
    .local v9, channelDetailMsgTypeValueJson:Lorg/json/JSONArray;
    const/16 v16, 0x2

    .line 508
    .local v16, valueNum:I
    const/4 v14, 0x0

    .local v14, j:I
    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_4

    .line 509
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 510
    .local v12, channelMsgTypeValueItemJson:Lorg/json/JSONObject;
    if-nez v14, :cond_3

    .line 511
    const-string v17, "subvalue"

    const-string v18, "\u6700\u65b0"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    :goto_3
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 508
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 513
    :cond_3
    const-string v17, "subvalue"

    const-string v18, "\u6700\u70ed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 589
    .end local v7           #channelDetailMsgJson:Lorg/json/JSONObject;
    .end local v8           #channelDetailMsgTypeJson:Lorg/json/JSONArray;
    .end local v9           #channelDetailMsgTypeValueJson:Lorg/json/JSONArray;
    .end local v11           #channelMsgTypeItemJson:Lorg/json/JSONObject;
    .end local v12           #channelMsgTypeValueItemJson:Lorg/json/JSONObject;
    .end local v13           #i:I
    .end local v14           #j:I
    .end local v15           #levelNum:I
    .end local v16           #valueNum:I
    :catch_0
    move-exception v17

    goto/16 :goto_0

    .line 517
    .restart local v7       #channelDetailMsgJson:Lorg/json/JSONObject;
    .restart local v8       #channelDetailMsgTypeJson:Lorg/json/JSONArray;
    .restart local v9       #channelDetailMsgTypeValueJson:Lorg/json/JSONArray;
    .restart local v11       #channelMsgTypeItemJson:Lorg/json/JSONObject;
    .restart local v13       #i:I
    .restart local v14       #j:I
    .restart local v15       #levelNum:I
    .restart local v16       #valueNum:I
    :cond_4
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 501
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 521
    .end local v9           #channelDetailMsgTypeValueJson:Lorg/json/JSONArray;
    .end local v11           #channelMsgTypeItemJson:Lorg/json/JSONObject;
    .end local v14           #j:I
    .end local v16           #valueNum:I
    :cond_5
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    .end local v8           #channelDetailMsgTypeJson:Lorg/json/JSONArray;
    .end local v13           #i:I
    .end local v15           #levelNum:I
    :goto_4
    const-string v17, "msg"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 530
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 531
    .local v5, channelDetailDataJson:Lorg/json/JSONArray;
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_5
    move/from16 v0, p0

    if-ge v13, v0, :cond_f

    .line 532
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 533
    .local v2, channelDetailDataItemJson:Lorg/json/JSONObject;
    const-string v17, "vid"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "vid"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 534
    const-string v17, "cid"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v13, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 535
    const-string v17, "mmsid"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mmsid"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    const-string v17, "play_address"

    const-string v18, "http://www.letv.com/ptv/pplay/75979/1.html"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 537
    const-string v17, "duration"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "180"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    const-string v17, "head_duration"

    const-string v18, "3:01"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 539
    const-string v17, "tail_duration"

    const-string v18, "10:12"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 541
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 543
    .local v4, channelDetailDataItemLabelListJson:Lorg/json/JSONArray;
    const/4 v14, 0x0

    .restart local v14       #j:I
    :goto_6
    move/from16 v0, p1

    if-ge v14, v0, :cond_e

    .line 544
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 545
    .local v3, channelDetailDataItemLabelItemJson:Lorg/json/JSONObject;
    if-nez v14, :cond_9

    .line 546
    const-string v17, "size"

    const-string v18, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 548
    const-string v17, "type"

    const-string v18, "image"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 549
    rem-int/lit8 v17, v13, 0x3

    if-nez v17, :cond_8

    .line 550
    const-string v17, "value"

    const-string v18, "http://i1.sinaimg.cn/home/2012/0912/U5276P30DT20120912130449.jpg"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 578
    :cond_6
    :goto_7
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 543
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 523
    .end local v2           #channelDetailDataItemJson:Lorg/json/JSONObject;
    .end local v3           #channelDetailDataItemLabelItemJson:Lorg/json/JSONObject;
    .end local v4           #channelDetailDataItemLabelListJson:Lorg/json/JSONArray;
    .end local v5           #channelDetailDataJson:Lorg/json/JSONArray;
    .end local v13           #i:I
    .end local v14           #j:I
    :cond_7
    const-string v17, "total"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    const-string v17, "type"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 552
    .restart local v2       #channelDetailDataItemJson:Lorg/json/JSONObject;
    .restart local v3       #channelDetailDataItemLabelItemJson:Lorg/json/JSONObject;
    .restart local v4       #channelDetailDataItemLabelListJson:Lorg/json/JSONArray;
    .restart local v5       #channelDetailDataJson:Lorg/json/JSONArray;
    .restart local v13       #i:I
    .restart local v14       #j:I
    :cond_8
    const-string v17, "value"

    const-string v18, "http://www.baidu.com/img/baidu_sylogo1.gif"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    .line 555
    :cond_9
    const-string v17, "size"

    const-string v18, "-1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    const-string v17, "type"

    const-string v18, "text"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_a

    .line 558
    const-string v17, "key"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    const-string v17, "value"

    const-string v18, "\u738b\u7684\u76db\u5bb4"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 561
    :cond_a
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v14, v0, :cond_b

    .line 562
    const-string v17, "key"

    const-string v18, "\u8bc4\u5206"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 563
    const-string v17, "value"

    const-string v18, "6.3"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    :cond_b
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v14, v0, :cond_c

    .line 566
    const-string v17, "key"

    const-string v18, "\u5bfc\u6f14"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 567
    const-string v17, "value"

    const-string v18, "\u9646\u5ddd"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    :cond_c
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v14, v0, :cond_d

    .line 570
    const-string v17, "key"

    const-string v18, "\u4e3b\u6f14"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    const-string v17, "value"

    const-string v18, "\u5218\u6866 \u5434\u5f66\u7956 \u5f20\u9707 \u79e6\u5c9a \u8c22\u9706\u950b \u6210\u9f99 \u5218\u5609\u73b2 \u6797\u5fd7\u73b2"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 573
    :cond_d
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v14, v0, :cond_6

    .line 574
    const-string v17, "key"

    const-string v18, "\u7c7b\u578b"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 575
    const-string v17, "value"

    const-string v18, "\u5267\u60c5 \u5386\u53f2"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_7

    .line 581
    .end local v3           #channelDetailDataItemLabelItemJson:Lorg/json/JSONObject;
    :cond_e
    const-string v17, "label"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 531
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 585
    .end local v2           #channelDetailDataItemJson:Lorg/json/JSONObject;
    .end local v4           #channelDetailDataItemLabelListJson:Lorg/json/JSONArray;
    .end local v14           #j:I
    :cond_f
    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static composeChannelJsonString(III)Ljava/lang/String;
    .locals 12
    .parameter "itemNum"
    .parameter "lableNum"
    .parameter "codeType"

    .prologue
    .line 605
    const-string v4, ""

    .line 606
    .local v4, channelJsonString:Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 608
    .local v6, channelToalJson:Lorg/json/JSONObject;
    const/4 v9, -0x1

    if-ne p2, v9, :cond_2

    .line 609
    :try_start_0
    const-string v9, "code"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 610
    const-string v9, "msg"

    const-string v10, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u6ca1\u6709\u83b7\u53d6\u5230\u670d\u52a1\u5668\u7684\u76f8\u5173\u9891\u9053\u4fe1\u606f"

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 611
    const-string v9, "data"

    const-string v10, ""

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 656
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 658
    :cond_1
    return-object v4

    .line 612
    :cond_2
    if-nez p2, :cond_0

    .line 613
    :try_start_1
    const-string v9, "code"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 616
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 617
    .local v5, channelMsgJson:Lorg/json/JSONObject;
    const-string v9, "total"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 619
    const-string v9, "msg"

    invoke-virtual {v6, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 622
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 623
    .local v3, channelDataJson:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, p0, :cond_6

    .line 624
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 625
    .local v0, channelDataItemJson:Lorg/json/JSONObject;
    const-string v9, "title"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u7535\u5f71"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 626
    const-string v9, "type"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "type"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 627
    const-string v9, "ID"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ID"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 628
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 630
    .local v2, channelDataItemLabelListJson:Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, j:I
    :goto_2
    if-ge v8, p1, :cond_5

    .line 631
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 632
    .local v1, channelDataItemLabelItemJson:Lorg/json/JSONObject;
    if-nez v8, :cond_3

    .line 633
    const-string v9, "size"

    const-string v10, "0"

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 635
    const-string v9, "type"

    const-string v10, "image"

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 636
    rem-int/lit8 v9, v7, 0x3

    if-nez v9, :cond_4

    .line 637
    const-string v9, "value"

    const-string v10, "http://www.baidu.com/img/baidu_sylogo1.gif"

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 642
    :cond_3
    :goto_3
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 630
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 639
    :cond_4
    const-string v9, "value"

    const-string v10, "http://www.baidu.com/img/baidu_sylogo1.gif"

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 653
    .end local v0           #channelDataItemJson:Lorg/json/JSONObject;
    .end local v1           #channelDataItemLabelItemJson:Lorg/json/JSONObject;
    .end local v2           #channelDataItemLabelListJson:Lorg/json/JSONArray;
    .end local v3           #channelDataJson:Lorg/json/JSONArray;
    .end local v5           #channelMsgJson:Lorg/json/JSONObject;
    .end local v7           #i:I
    .end local v8           #j:I
    :catch_0
    move-exception v9

    goto/16 :goto_0

    .line 645
    .restart local v0       #channelDataItemJson:Lorg/json/JSONObject;
    .restart local v2       #channelDataItemLabelListJson:Lorg/json/JSONArray;
    .restart local v3       #channelDataJson:Lorg/json/JSONArray;
    .restart local v5       #channelMsgJson:Lorg/json/JSONObject;
    .restart local v7       #i:I
    .restart local v8       #j:I
    :cond_5
    const-string v9, "label"

    invoke-virtual {v0, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 646
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 623
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 649
    .end local v0           #channelDataItemJson:Lorg/json/JSONObject;
    .end local v2           #channelDataItemLabelListJson:Lorg/json/JSONArray;
    .end local v8           #j:I
    :cond_6
    const-string v9, "data"

    invoke-virtual {v6, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static composeChannelProgramDetailEpisodesJson(II)Lorg/json/JSONObject;
    .locals 9
    .parameter "itemNum"
    .parameter "code"

    .prologue
    .line 435
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 437
    .local v2, channelProgramDetailDataItemEpisodesJson:Lorg/json/JSONObject;
    const/4 v6, -0x1

    if-ne p1, v6, :cond_1

    .line 438
    :try_start_0
    const-string v6, "code"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    const-string v6, "msg"

    const-string v7, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u6ca1\u6709\u83b7\u53d6\u5230\u5168\u90e8\u96c6\u6216\u8005\u671f\u7684\u4fe1\u606f"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    const-string v6, "data"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    :cond_0
    :goto_0
    return-object v2

    .line 441
    :cond_1
    if-nez p1, :cond_0

    .line 442
    const-string v6, "code"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 446
    .local v4, channelProgramDetailDataItemEpisodesToalMsgJson:Lorg/json/JSONObject;
    const-string v6, "key"

    const-string v7, "\u89c6\u9891\u5217\u8868"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    const-string v6, "value"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 449
    .local v3, channelProgramDetailDataItemEpisodesMsgJson:Lorg/json/JSONObject;
    const-string v6, "total"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    const-string v6, "msg"

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 454
    .local v1, channelProgramDetailDataItemEpisodesDataJson:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, p0, :cond_2

    .line 455
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 456
    .local v0, channelProgramDetailDataItemEpisodesDataItemJson:Lorg/json/JSONObject;
    const-string v6, "vid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "vid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    const-string v6, "cid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    const-string v6, "mmsid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mmsid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    const-string v6, "title"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u96c6"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    const-string v6, "description"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u96c6"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u7684\u63cf\u8ff0\u4fe1\u606f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    const-string v6, "duration"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "180"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 462
    const-string v6, "head_duration"

    const-string v7, "3:01"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    const-string v6, "tail_duration"

    const-string v7, "10:12"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    const-string v6, "play_address"

    const-string v7, "http://www.letv.com/ptv/pplay/75979/1.html"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    const-string v6, "download_address"

    const-string v7, "http://www.letv.com/ptv/pplay/75979/1.html"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 454
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 470
    .end local v0           #channelProgramDetailDataItemEpisodesDataItemJson:Lorg/json/JSONObject;
    :cond_2
    const-string v6, "data"

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 474
    .end local v1           #channelProgramDetailDataItemEpisodesDataJson:Lorg/json/JSONArray;
    .end local v3           #channelProgramDetailDataItemEpisodesMsgJson:Lorg/json/JSONObject;
    .end local v4           #channelProgramDetailDataItemEpisodesToalMsgJson:Lorg/json/JSONObject;
    .end local v5           #i:I
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method public static composeChannelProgramDetailJsonString(IIIIIII)Ljava/lang/String;
    .locals 17
    .parameter "itemNum"
    .parameter "lableNum"
    .parameter "detailCodeType"
    .parameter "similarVideoCodeType"
    .parameter "episodesCodeType"
    .parameter "similarVideoNum"
    .parameter "episodesNum"

    .prologue
    .line 275
    const-string v10, ""

    .line 276
    .local v10, channelProgramDetailJsonString:Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 278
    .local v2, channelDetailProgramToalJson:Lorg/json/JSONObject;
    const/4 v14, -0x1

    move/from16 v0, p3

    if-ne v0, v14, :cond_2

    .line 279
    :try_start_0
    const-string v14, "code"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string v14, "msg"

    const-string v15, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u6ca1\u6709\u83b7\u53d6\u5230\u8be5\u8282\u76ee\u7684\u8be6\u60c5\u4fe1\u606f"

    invoke-virtual {v2, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    const-string v14, "data"

    const-string v15, ""

    invoke-virtual {v2, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 371
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    .line 373
    :cond_1
    return-object v10

    .line 282
    :cond_2
    if-nez p3, :cond_0

    .line 283
    :try_start_1
    const-string v14, "code"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 287
    .local v11, channelProgramDetailMsgJson:Lorg/json/JSONObject;
    const-string v14, "total"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v14, "msg"

    invoke-virtual {v2, v14, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 293
    .local v9, channelProgramDetailDataJson:Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move/from16 v0, p0

    if-ge v12, v0, :cond_b

    .line 294
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 295
    .local v5, channelProgramDetailDataItemJson:Lorg/json/JSONObject;
    const-string v14, "vid"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "vid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    const-string v14, "cid"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "cid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    const-string v14, "mmsid"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mmsid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v14, "imdb"

    const-string v15, "\u5929\u4e0b\u65e0\u53cc\u5bf9\u5e94\u5728\u8c46\u74e3\u7684imdb"

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    const-string v14, "duration"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "180"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    const-string v14, "head_duration"

    const-string v15, "3:01"

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    const-string v14, "tail_duration"

    const-string v15, "10:12"

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    const-string v14, "play_address"

    const-string v15, "http://www.letv.com/ptv/pplay/75979/1.html"

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string v14, "download_address"

    const-string v15, "http://www.letv.com/ptv/pplay/75979/1.html"

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 307
    .local v3, channelProgramDetailDataItemDescriptionJson:Lorg/json/JSONObject;
    const-string v14, "key"

    const-string v15, "\u5267\u60c5\u7b80\u4ecb1"

    invoke-virtual {v3, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v14, "value"

    const-string v15, "\u5e73\u51e1\u7684\u9ad8\u4e2d\u97f3\u4e50\u6559\u5e08\u6d2a\u6b66\u548c\uff0c\u548c\u853c\u53ef\u4eb2\u7684\u5927\u5b66\u6559\u6388\uff0c\u5230\u4e50\u591c\u665a\uff0c\u4ed6\u5c31\u5316\u8eab\u6b63\u4e49\u7684\u6e38\u4fa0\u6253\u5305\u4e0d\u5e73\u3002"

    invoke-virtual {v3, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    const-string v14, "description"

    invoke-virtual {v5, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 313
    .local v7, channelProgramDetailDataItemLabelListJson:Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, j:I
    :goto_2
    move/from16 v0, p1

    if-ge v13, v0, :cond_a

    .line 314
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 315
    .local v6, channelProgramDetailDataItemLabelItemJson:Lorg/json/JSONObject;
    if-nez v13, :cond_5

    .line 316
    const-string v14, "size"

    const-string v15, "0"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v14, "type"

    const-string v15, "image"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string v14, "key"

    const-string v15, ""

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    rem-int/lit8 v14, v12, 0x3

    if-nez v14, :cond_4

    .line 321
    const-string v14, "value"

    const-string v15, "http://i1.sinaimg.cn/home/2012/0912/U5276P30DT20120912130449.jpg"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    :cond_3
    :goto_3
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 313
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 323
    :cond_4
    const-string v14, "value"

    const-string v15, "http://www.baidu.com/img/baidu_sylogo1.gif"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 368
    .end local v3           #channelProgramDetailDataItemDescriptionJson:Lorg/json/JSONObject;
    .end local v5           #channelProgramDetailDataItemJson:Lorg/json/JSONObject;
    .end local v6           #channelProgramDetailDataItemLabelItemJson:Lorg/json/JSONObject;
    .end local v7           #channelProgramDetailDataItemLabelListJson:Lorg/json/JSONArray;
    .end local v9           #channelProgramDetailDataJson:Lorg/json/JSONArray;
    .end local v11           #channelProgramDetailMsgJson:Lorg/json/JSONObject;
    .end local v12           #i:I
    .end local v13           #j:I
    :catch_0
    move-exception v14

    goto/16 :goto_0

    .line 326
    .restart local v3       #channelProgramDetailDataItemDescriptionJson:Lorg/json/JSONObject;
    .restart local v5       #channelProgramDetailDataItemJson:Lorg/json/JSONObject;
    .restart local v6       #channelProgramDetailDataItemLabelItemJson:Lorg/json/JSONObject;
    .restart local v7       #channelProgramDetailDataItemLabelListJson:Lorg/json/JSONArray;
    .restart local v9       #channelProgramDetailDataJson:Lorg/json/JSONArray;
    .restart local v11       #channelProgramDetailMsgJson:Lorg/json/JSONObject;
    .restart local v12       #i:I
    .restart local v13       #j:I
    :cond_5
    const-string v14, "size"

    const-string v15, "-1"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    const-string v14, "type"

    const-string v15, "text"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 329
    const-string v14, "key"

    const-string v15, ""

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string v14, "value"

    const-string v15, "\u738b\u7684\u76db\u5bb4"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    :cond_6
    const/4 v14, 0x2

    if-ne v13, v14, :cond_7

    .line 333
    const-string v14, "key"

    const-string v15, "\u8bc4\u5206"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string v14, "value"

    const-string v15, "6.3"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    :cond_7
    const/4 v14, 0x3

    if-ne v13, v14, :cond_8

    .line 337
    const-string v14, "key"

    const-string v15, "\u5bfc\u6f14"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    const-string v14, "value"

    const-string v15, "\u9646\u5ddd"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    :cond_8
    const/4 v14, 0x4

    if-ne v13, v14, :cond_9

    .line 341
    const-string v14, "key"

    const-string v15, "\u4e3b\u6f14"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    const-string v14, "value"

    const-string v15, "\u5218\u6866 \u5434\u5f66\u7956 \u5f20\u9707 \u79e6\u5c9a \u8c22\u9706\u950b \u6210\u9f99 \u5218\u5609\u73b2 \u6797\u5fd7\u73b2"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    :cond_9
    const/4 v14, 0x5

    if-ne v13, v14, :cond_3

    .line 345
    const-string v14, "key"

    const-string v15, "\u7c7b\u578b"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    const-string v14, "value"

    const-string v15, "\u5267\u60c5 \u5386\u53f2"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 351
    .end local v6           #channelProgramDetailDataItemLabelItemJson:Lorg/json/JSONObject;
    :cond_a
    const-string v14, "label"

    invoke-virtual {v5, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    move/from16 v0, p5

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/meizu/video/client/util/TestData;->composeChannelProgramDetailSimilarVideoJson(II)Lorg/json/JSONObject;

    move-result-object v8

    .line 355
    .local v8, channelProgramDetailDataItemSimilarVideoJson:Lorg/json/JSONObject;
    const-string v14, "similar_video"

    invoke-virtual {v5, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    move/from16 v0, p6

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/meizu/video/client/util/TestData;->composeChannelProgramDetailEpisodesJson(II)Lorg/json/JSONObject;

    move-result-object v4

    .line 359
    .local v4, channelProgramDetailDataItemEpisodesJson:Lorg/json/JSONObject;
    const-string v14, "episodes"

    invoke-virtual {v5, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 293
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 364
    .end local v3           #channelProgramDetailDataItemDescriptionJson:Lorg/json/JSONObject;
    .end local v4           #channelProgramDetailDataItemEpisodesJson:Lorg/json/JSONObject;
    .end local v5           #channelProgramDetailDataItemJson:Lorg/json/JSONObject;
    .end local v7           #channelProgramDetailDataItemLabelListJson:Lorg/json/JSONArray;
    .end local v8           #channelProgramDetailDataItemSimilarVideoJson:Lorg/json/JSONObject;
    .end local v13           #j:I
    :cond_b
    const-string v14, "data"

    invoke-virtual {v2, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static composeChannelProgramDetailSimilarVideoJson(II)Lorg/json/JSONObject;
    .locals 9
    .parameter "itemNum"
    .parameter "code"

    .prologue
    .line 382
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 384
    .local v2, channelProgramDetailDataItemSimilarVideoJson:Lorg/json/JSONObject;
    const/4 v6, -0x1

    if-ne p1, v6, :cond_1

    .line 385
    :try_start_0
    const-string v6, "code"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    const-string v6, "msg"

    const-string v7, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u6ca1\u6709\u83b7\u53d6\u5230\u76f8\u5173\u89c6\u9891\u4fe1\u606f"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    const-string v6, "data"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    :cond_0
    :goto_0
    return-object v2

    .line 388
    :cond_1
    if-nez p1, :cond_0

    .line 389
    const-string v6, "code"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 393
    .local v4, channelProgramDetailDataItemSimilarVideolToalMsgJson:Lorg/json/JSONObject;
    const-string v6, "key"

    const-string v7, "\u76f8\u5173\u89c6\u9891Test"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    const-string v6, "value"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 396
    .local v3, channelProgramDetailDataItemSimilarVideoMsgJson:Lorg/json/JSONObject;
    const-string v6, "total"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    const-string v6, "msg"

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 401
    .local v1, channelProgramDetailDataItemSimilarVideoDataJson:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, p0, :cond_3

    .line 402
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 403
    .local v0, channelProgramDetailDataItemSimilarVideoDataItemJson:Lorg/json/JSONObject;
    const-string v6, "vid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "vid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    const-string v6, "cid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    const-string v6, "mmsid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mmsid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    const-string v6, "title"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u76f8\u5173\u89c6\u9891"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    rem-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_2

    .line 408
    const-string v6, "image"

    const-string v7, "http://i1.sinaimg.cn/home/2012/0912/U5276P30DT20120912130449.jpg"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    :goto_2
    const-string v6, "duration"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "180"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
    const-string v6, "head_duration"

    const-string v7, "3:01"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    const-string v6, "tail_duration"

    const-string v7, "10:12"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    const-string v6, "play_address"

    const-string v7, "http://www.letv.com/ptv/pplay/75979/1.html"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 401
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 410
    :cond_2
    const-string v6, "image"

    const-string v7, "http://www.baidu.com/img/baidu_sylogo1.gif"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 424
    .end local v0           #channelProgramDetailDataItemSimilarVideoDataItemJson:Lorg/json/JSONObject;
    .end local v1           #channelProgramDetailDataItemSimilarVideoDataJson:Lorg/json/JSONArray;
    .end local v3           #channelProgramDetailDataItemSimilarVideoMsgJson:Lorg/json/JSONObject;
    .end local v4           #channelProgramDetailDataItemSimilarVideolToalMsgJson:Lorg/json/JSONObject;
    .end local v5           #i:I
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 420
    .restart local v1       #channelProgramDetailDataItemSimilarVideoDataJson:Lorg/json/JSONArray;
    .restart local v3       #channelProgramDetailDataItemSimilarVideoMsgJson:Lorg/json/JSONObject;
    .restart local v4       #channelProgramDetailDataItemSimilarVideolToalMsgJson:Lorg/json/JSONObject;
    .restart local v5       #i:I
    :cond_3
    const-string v6, "data"

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public static composeCommentJsonString(III)Ljava/lang/String;
    .locals 9
    .parameter "itemNum"
    .parameter "currentCommentPage"
    .parameter "code"

    .prologue
    .line 227
    const-string v2, ""

    .line 228
    .local v2, commentJsonString:Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 230
    .local v4, commentToalJson:Lorg/json/JSONObject;
    const/4 v6, -0x1

    if-ne p2, v6, :cond_2

    .line 231
    :try_start_0
    const-string v6, "code"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string v6, "msg"

    const-string v7, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u6ca1\u6709\u83b7\u53d6\u5230\u670d\u52a1\u5668\u7684\u8bc4\u8bba\u4fe1\u606f"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v6, "data"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 262
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    :cond_1
    return-object v2

    .line 234
    :cond_2
    if-nez p2, :cond_0

    .line 235
    :try_start_1
    const-string v6, "code"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 239
    .local v3, commentMsgJson:Lorg/json/JSONObject;
    const-string v6, "total"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string v6, "msg"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 245
    .local v1, commentDataJson:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, p0, :cond_3

    .line 246
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 247
    .local v0, channelDataItemJson:Lorg/json/JSONObject;
    const-string v6, "id"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, p1, -0x1

    mul-int/2addr v8, p0

    add-int/2addr v8, v5

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v6, "title"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u8001\u5267\u672c\u4e86"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, p1, -0x1

    mul-int/2addr v8, p0

    add-int/2addr v8, v5

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string v6, "author"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "soso\u6167"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, p1, -0x1

    mul-int/2addr v8, p0

    add-int/2addr v8, v5

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string v6, "score"

    const-string v7, "7.6"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v6, "content"

    const-string v7, "hjahjashhsahjhjhjasj\u96c6\u54c8\u54c8\u6740\u5bb3\u4e09\u811a\u67b6\u548c\u6492\u8c0e\u96c6\u5408\u6492\u8c0e\u96c6\u554a\u6570\u636e\u554a\u6570\u8bf7\u52ffiqwuiqwjhashhashj\u6492\u8c0e\u96c6\u6492\u8c0e\u96c6\u554a\u6240\u554a\u6570\u636e\u554a\u6570"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 245
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 256
    .end local v0           #channelDataItemJson:Lorg/json/JSONObject;
    :cond_3
    const-string v6, "data"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 259
    .end local v1           #commentDataJson:Lorg/json/JSONArray;
    .end local v3           #commentMsgJson:Lorg/json/JSONObject;
    .end local v5           #i:I
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method public static composeRecommendJsonString(III)Ljava/lang/String;
    .locals 12
    .parameter "itemNum"
    .parameter "lableNum"
    .parameter "codeType"

    .prologue
    .line 667
    const-string v6, ""

    .line 668
    .local v6, recommendJsonString:Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 670
    .local v8, recommendToalJson:Lorg/json/JSONObject;
    const/4 v9, -0x1

    if-ne p2, v9, :cond_2

    .line 671
    :try_start_0
    const-string v9, "code"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 672
    const-string v9, "msg"

    const-string v10, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u6ca1\u6709\u63a8\u8350\u7684\u5185\u5bb9\u6570\u636ehttp://www.baidu.com/img/baidu_sylogo1.gif"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 673
    const-string v9, "data"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 729
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 731
    :cond_1
    return-object v6

    .line 674
    :cond_2
    if-nez p2, :cond_0

    .line 675
    :try_start_1
    const-string v9, "code"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 678
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 679
    .local v7, recommendMsgJson:Lorg/json/JSONObject;
    const-string v9, "total"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 681
    const-string v9, "msg"

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 684
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 685
    .local v5, recommendDataJson:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p0, :cond_9

    .line 686
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 687
    .local v2, recommendDataItemJson:Lorg/json/JSONObject;
    const-string v9, "vid"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "vid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 688
    const-string v9, "cid"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 689
    const-string v9, "mmsid"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mmsid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 690
    const-string v9, "duration"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit16 v11, v0, 0xb4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 691
    const-string v9, "play_address"

    const-string v10, "http://www.letv.com/ptv/pplay/75979/1.html"

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 692
    const-string v9, "head_duration"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "3:01"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 693
    const-string v9, "tail_duration"

    const-string v10, "10:12"

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 694
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 696
    .local v4, recommendDataItemLabelListJson:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, p1, :cond_8

    .line 697
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 698
    .local v3, recommendDataItemLabelItemJson:Lorg/json/JSONObject;
    if-nez v1, :cond_7

    .line 699
    if-eqz v0, :cond_3

    rem-int/lit8 v9, v0, 0xf

    if-nez v9, :cond_5

    .line 700
    :cond_3
    const-string v9, "size"

    const-string v10, "1"

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 704
    :goto_3
    const-string v9, "type"

    const-string v10, "image"

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 705
    if-eqz v0, :cond_4

    rem-int/lit8 v9, v0, 0xf

    if-nez v9, :cond_6

    .line 706
    :cond_4
    const-string v9, "value"

    const-string v10, "http://i1.sinaimg.cn/home/2012/0912/U5276P30DT20120912130449.jpg"

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 715
    :goto_4
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 696
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 702
    :cond_5
    const-string v9, "size"

    const-string v10, "0"

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 726
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #recommendDataItemJson:Lorg/json/JSONObject;
    .end local v3           #recommendDataItemLabelItemJson:Lorg/json/JSONObject;
    .end local v4           #recommendDataItemLabelListJson:Lorg/json/JSONArray;
    .end local v5           #recommendDataJson:Lorg/json/JSONArray;
    .end local v7           #recommendMsgJson:Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    goto/16 :goto_0

    .line 708
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v2       #recommendDataItemJson:Lorg/json/JSONObject;
    .restart local v3       #recommendDataItemLabelItemJson:Lorg/json/JSONObject;
    .restart local v4       #recommendDataItemLabelListJson:Lorg/json/JSONArray;
    .restart local v5       #recommendDataJson:Lorg/json/JSONArray;
    .restart local v7       #recommendMsgJson:Lorg/json/JSONObject;
    :cond_6
    const-string v9, "value"

    const-string v10, "http://www.baidu.com/img/baidu_sylogo1.gif"

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 711
    :cond_7
    const-string v9, "size"

    const-string v10, "-1"

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 712
    const-string v9, "type"

    const-string v10, "text"

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 713
    const-string v9, "value"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u767e\u5ea6\u5728\u7ebf"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 718
    .end local v3           #recommendDataItemLabelItemJson:Lorg/json/JSONObject;
    :cond_8
    const-string v9, "label"

    invoke-virtual {v2, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 719
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 722
    .end local v1           #j:I
    .end local v2           #recommendDataItemJson:Lorg/json/JSONObject;
    .end local v4           #recommendDataItemLabelListJson:Lorg/json/JSONArray;
    :cond_9
    const-string v9, "data"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static composeSearchJsonString(III)Ljava/lang/String;
    .locals 15
    .parameter "itemNum"
    .parameter "lableNum"
    .parameter "code"

    .prologue
    .line 110
    const-string v7, ""

    .line 111
    .local v7, searchJsonString:Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 113
    .local v11, searchToalJson:Lorg/json/JSONObject;
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_2

    .line 114
    :try_start_0
    const-string v12, "code"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v12, "msg"

    const-string v13, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u6ca1\u6709\u641c\u7d22\u5230\u8282\u76ee\u4fe1\u606f"

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v12, "data"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    if-eqz v11, :cond_1

    .line 214
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 216
    :cond_1
    return-object v7

    .line 117
    :cond_2
    if-nez p2, :cond_0

    .line 118
    :try_start_1
    const-string v12, "code"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 122
    .local v10, searchMsgTotalJson:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v12, 0x5

    if-ge v1, v12, :cond_8

    .line 123
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 124
    .local v9, searchMsgTotalItemJson:Lorg/json/JSONObject;
    if-nez v1, :cond_3

    .line 125
    const-string v12, "key"

    const-string v13, "\u5168\u90e8"

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v12, "value"

    const-string v13, "100"

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    :cond_3
    const/4 v12, 0x1

    if-ne v1, v12, :cond_4

    .line 129
    const-string v12, "key"

    const-string v13, "\u7535\u5f71"

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v12, "value"

    const-string v13, "10"

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    :cond_4
    const/4 v12, 0x2

    if-ne v1, v12, :cond_5

    .line 133
    const-string v12, "key"

    const-string v13, "\u7535\u89c6\u5267"

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v12, "value"

    const-string v13, "20"

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    :cond_5
    const/4 v12, 0x3

    if-ne v1, v12, :cond_6

    .line 137
    const-string v12, "key"

    const-string v13, "\u7efc\u827a"

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v12, "value"

    const-string v13, "30"

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    :cond_6
    const/4 v12, 0x4

    if-ne v1, v12, :cond_7

    .line 141
    const-string v12, "key"

    const-string v13, "\u52a8\u6f2b"

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v12, "value"

    const-string v13, "40"

    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    :cond_7
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    .end local v9           #searchMsgTotalItemJson:Lorg/json/JSONObject;
    :cond_8
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 147
    .local v8, searchMsgJson:Lorg/json/JSONObject;
    const-string v12, "total"

    invoke-virtual {v8, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v12, "msg"

    invoke-virtual {v11, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 153
    .local v6, searchDataJson:Lorg/json/JSONArray;
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p0, :cond_11

    .line 154
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 155
    .local v3, searchDataItemJson:Lorg/json/JSONObject;
    const-string v12, "vid"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "vid"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v12, "cid"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v12, "mmsid"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mmsid"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v12, "duration"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "180"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v12, "head_duration"

    const-string v13, "3:01"

    invoke-virtual {v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v12, "tail_duration"

    const-string v13, "10:12"

    invoke-virtual {v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v12, "play_address"

    const-string v13, "http://www.letv.com/ptv/pplay/75979/1.html"

    invoke-virtual {v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 165
    .local v5, searchDataItemLabelListJson:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    move/from16 v0, p1

    if-ge v2, v0, :cond_10

    .line 166
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 167
    .local v4, searchDataItemLabelItemJson:Lorg/json/JSONObject;
    if-nez v2, :cond_b

    .line 168
    const-string v12, "size"

    const-string v13, "0"

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v12, "type"

    const-string v13, "image"

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    rem-int/lit8 v12, v1, 0x3

    if-nez v12, :cond_a

    .line 172
    const-string v12, "value"

    const-string v13, "http://i1.sinaimg.cn/home/2012/0912/U5276P30DT20120912130449.jpg"

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    :cond_9
    :goto_4
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 174
    :cond_a
    const-string v12, "value"

    const-string v13, "http://www.baidu.com/img/baidu_sylogo1.gif"

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 211
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #searchDataItemJson:Lorg/json/JSONObject;
    .end local v4           #searchDataItemLabelItemJson:Lorg/json/JSONObject;
    .end local v5           #searchDataItemLabelListJson:Lorg/json/JSONArray;
    .end local v6           #searchDataJson:Lorg/json/JSONArray;
    .end local v8           #searchMsgJson:Lorg/json/JSONObject;
    .end local v10           #searchMsgTotalJson:Lorg/json/JSONArray;
    :catch_0
    move-exception v12

    goto/16 :goto_0

    .line 177
    .restart local v1       #i:I
    .restart local v2       #j:I
    .restart local v3       #searchDataItemJson:Lorg/json/JSONObject;
    .restart local v4       #searchDataItemLabelItemJson:Lorg/json/JSONObject;
    .restart local v5       #searchDataItemLabelListJson:Lorg/json/JSONArray;
    .restart local v6       #searchDataJson:Lorg/json/JSONArray;
    .restart local v8       #searchMsgJson:Lorg/json/JSONObject;
    .restart local v10       #searchMsgTotalJson:Lorg/json/JSONArray;
    :cond_b
    const-string v12, "size"

    const-string v13, "-1"

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v12, "type"

    const-string v13, "text"

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const/4 v12, 0x1

    if-ne v2, v12, :cond_c

    .line 180
    const-string v12, "key"

    const-string v13, ""

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v12, "value"

    const-string v13, "\u738b\u7684\u76db\u5bb4-\u641c\u7d22"

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    :cond_c
    const/4 v12, 0x2

    if-ne v2, v12, :cond_d

    .line 184
    const-string v12, "key"

    const-string v13, "\u8bc4\u5206"

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v12, "value"

    const-string v13, "6.3"

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    :cond_d
    const/4 v12, 0x3

    if-ne v2, v12, :cond_e

    .line 188
    const-string v12, "key"

    const-string v13, "\u5bfc\u6f14"

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v12, "value"

    const-string v13, "\u9646\u5ddd"

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    :cond_e
    const/4 v12, 0x4

    if-ne v2, v12, :cond_f

    .line 192
    const-string v12, "key"

    const-string v13, "\u4e3b\u6f14"

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v12, "value"

    const-string v13, "\u5218\u6866 \u5434\u5f66\u7956 \u5f20\u9707 \u79e6\u5c9a \u8c22\u9706\u950b \u6210\u9f99 \u5218\u5609\u73b2 \u6797\u5fd7\u73b2"

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    :cond_f
    const/4 v12, 0x5

    if-ne v2, v12, :cond_9

    .line 196
    const-string v12, "key"

    const-string v13, "\u7c7b\u578b"

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v12, "value"

    const-string v13, "\u5267\u60c5 \u5386\u53f2"

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 203
    .end local v4           #searchDataItemLabelItemJson:Lorg/json/JSONObject;
    :cond_10
    const-string v12, "label"

    invoke-virtual {v3, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 207
    .end local v2           #j:I
    .end local v3           #searchDataItemJson:Lorg/json/JSONObject;
    .end local v5           #searchDataItemLabelListJson:Lorg/json/JSONArray;
    :cond_11
    const-string v12, "data"

    invoke-virtual {v11, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static getChanelProgramDetailData(ILandroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .parameter "num"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 49
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v7, ChanelProgramDetailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;>;"
    const/16 v6, 0x64

    move v0, p0

    move v3, v2

    move v4, v2

    move v5, v1

    invoke-static/range {v0 .. v6}, Lcom/meizu/video/client/util/TestData;->composeChannelProgramDetailJsonString(IIIIIII)Ljava/lang/String;

    move-result-object v8

    .line 51
    .local v8, right:Ljava/lang/String;
    invoke-static {v8}, Lcom/meizu/video/client/util/JsonParse;->parseChannelProgramDetail(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 53
    return-object v7
.end method

.method public static getChannelData(ILandroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .parameter "num"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, channelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelEntity;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/meizu/video/client/util/TestData;->composeChannelJsonString(III)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, right:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/video/client/util/JsonParse;->parseChannel(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 76
    return-object v0
.end method

.method public static getChannelDetailData(ILandroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .parameter "num"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, channelDetailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;>;"
    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p0, v2, v3, v4}, Lcom/meizu/video/client/util/TestData;->composeChannelDetailJsonString(IIII)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, right:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/video/client/util/JsonParse;->parseChannelDetail(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method public static getCommentData(IILandroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .parameter "num"
    .parameter "currentCommentPage"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/CommentEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v0, commentListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/CommentEntity;>;"
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/meizu/video/client/util/TestData;->composeCommentJsonString(III)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, right:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/video/client/util/JsonParse;->parseComment(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 42
    return-object v0
.end method

.method public static getRecommendData(ILandroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .parameter "num"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x19

    const/4 v4, 0x2

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, recommendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    const/4 v3, 0x0

    invoke-static {p0, v4, v3}, Lcom/meizu/video/client/util/TestData;->composeRecommendJsonString(III)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, right:Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/video/client/util/JsonParse;->parseRecommend(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 91
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_0

    .line 92
    const/4 v3, 0x4

    invoke-static {v0, v5, v3}, Lcom/meizu/video/client/util/CommonUtil;->changeRecommendData(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v1

    .line 98
    .local v1, recommendListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;>;"
    :goto_0
    return-object v1

    .line 94
    .end local v1           #recommendListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;>;"
    :cond_0
    const/4 v3, 0x3

    invoke-static {v0, v5, v3}, Lcom/meizu/video/client/util/CommonUtil;->changeRecommendData(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v1

    .restart local v1       #recommendListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;>;"
    goto :goto_0
.end method

.method public static getSearchData(IILandroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter "num"
    .parameter "currentSearchPage"
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/MsgEntity;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/SearchEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    .local p3, msgListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/MsgEntity;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v1, searchListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/SearchEntity;>;"
    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/meizu/video/client/util/TestData;->composeSearchJsonString(III)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, right:Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/meizu/video/client/util/JsonParse;->parseSearchDetail(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 32
    return-object v1
.end method

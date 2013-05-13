.class public Lcom/meizu/video/client/util/JsonParse;
.super Ljava/lang/Object;
.source "JsonParse.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "JsonParse"

    sput-object v0, Lcom/meizu/video/client/util/JsonParse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannelImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2503
    const-string v9, ""

    .line 2505
    const-string v0, "86"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2506
    const/4 v8, 0x2

    .line 2508
    :goto_0
    const-string v1, "0"

    const-string v2, "0"

    const-string v3, "0"

    const-string v4, "date"

    const-string v5, "0"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/meizu/video/client/common/UrlSettings;->getLSChannelProgramUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 2510
    invoke-static {v0}, Lcom/meizu/video/client/util/HttpUtil;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2511
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2513
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2514
    const-string v0, "body"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2515
    const-string v0, "body"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2516
    if-eqz v0, :cond_2

    .line 2517
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2518
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2520
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 2521
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v6, v1, :cond_2

    .line 2522
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 2524
    if-eqz v1, :cond_1

    .line 2525
    const-string v2, "icon"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2526
    const-string v2, "icon"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, ""

    const-string v3, "icon"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2529
    const-string v0, "icon"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    move-object v9, v0

    .line 2543
    :cond_0
    :goto_3
    return-object v9

    .line 2521
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2539
    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v0, v9

    goto :goto_2

    :cond_3
    move v8, v7

    goto/16 :goto_0
.end method

.method public static parseChannel(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 20
    .parameter "channelJsonString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 666
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 668
    .local v6, channelListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelEntity;>;"
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 669
    .local v8, channelToalJson:Lorg/json/JSONObject;
    if-eqz v8, :cond_2

    .line 670
    const-string v9, ""

    .line 671
    .local v9, code:Ljava/lang/String;
    const-string v19, "code"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 672
    const-string v19, "code"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 674
    :cond_0
    const-string v16, ""

    .line 675
    .local v16, msg:Ljava/lang/String;
    const-string v10, ""

    .line 676
    .local v10, data:Ljava/lang/String;
    const-string v19, "-1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 677
    const-string v19, "msg"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 678
    const-string v19, "msg"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 680
    :cond_1
    const-string v19, "data"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 681
    const-string v19, "data"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 743
    .end local v8           #channelToalJson:Lorg/json/JSONObject;
    .end local v9           #code:Ljava/lang/String;
    .end local v10           #data:Ljava/lang/String;
    .end local v16           #msg:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v6

    .line 683
    .restart local v8       #channelToalJson:Lorg/json/JSONObject;
    .restart local v9       #code:Ljava/lang/String;
    .restart local v10       #data:Ljava/lang/String;
    .restart local v16       #msg:Ljava/lang/String;
    :cond_3
    const-string v19, "0"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 684
    const-string v19, "msg"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 685
    const-string v19, "msg"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 686
    .local v7, channelMsgJson:Lorg/json/JSONObject;
    const-string v18, ""

    .line 687
    .local v18, total:Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 688
    const-string v19, "total"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 689
    const-string v19, "total"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 693
    .end local v7           #channelMsgJson:Lorg/json/JSONObject;
    .end local v18           #total:Ljava/lang/String;
    :cond_4
    const-string v19, "data"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 694
    const-string v19, "data"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 695
    .local v4, channelDataJson:Lorg/json/JSONArray;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_2

    .line 696
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    .line 697
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 698
    .local v2, channelDataItemJson:Lorg/json/JSONObject;
    if-eqz v2, :cond_e

    .line 699
    new-instance v5, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/ChanelEntity;-><init>()V

    .line 700
    .local v5, channelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    const-string v19, "title"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 701
    const-string v19, "title"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->setTitle(Ljava/lang/String;)V

    .line 703
    :cond_5
    const-string v19, "type"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 704
    const-string v19, "type"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->setType(Ljava/lang/String;)V

    .line 706
    :cond_6
    const-string v19, "ID"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 707
    const-string v19, "ID"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->setId(Ljava/lang/String;)V

    .line 709
    :cond_7
    const-string v19, "label"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 710
    const-string v19, "label"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 711
    .local v3, channelDataItemLabelListJson:Lorg/json/JSONArray;
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_d

    .line 712
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v15, lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    const/4 v13, 0x0

    .local v13, j:I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v13, v0, :cond_c

    .line 714
    invoke-virtual {v3, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 715
    .local v17, recommendDataItemLabelItemJson:Lorg/json/JSONObject;
    if-eqz v17, :cond_b

    .line 716
    new-instance v14, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v14}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 717
    .local v14, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v19, "size"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 718
    const-string v19, "size"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 720
    :cond_8
    const-string v19, "type"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 721
    const-string v19, "type"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 723
    :cond_9
    const-string v19, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 724
    const-string v19, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 726
    :cond_a
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    .end local v14           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 729
    .end local v17           #recommendDataItemLabelItemJson:Lorg/json/JSONObject;
    :cond_c
    invoke-virtual {v5, v15}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 732
    .end local v3           #channelDataItemLabelListJson:Lorg/json/JSONArray;
    .end local v13           #j:I
    .end local v15           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_d
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    .end local v5           #channelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 739
    .end local v2           #channelDataItemJson:Lorg/json/JSONObject;
    .end local v4           #channelDataJson:Lorg/json/JSONArray;
    .end local v8           #channelToalJson:Lorg/json/JSONObject;
    .end local v9           #code:Ljava/lang/String;
    .end local v10           #data:Ljava/lang/String;
    .end local v12           #i:I
    .end local v16           #msg:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 740
    .local v11, e:Lorg/json/JSONException;
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static parseChannelDetail(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 28
    .parameter "channelDetailJsonString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v7, channelDetailListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;>;"
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 524
    .local v11, channelDetailToalJson:Lorg/json/JSONObject;
    if-eqz v11, :cond_2

    .line 525
    const-string v14, ""

    .line 526
    .local v14, code:Ljava/lang/String;
    const-string v27, "code"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 527
    const-string v27, "code"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 529
    :cond_0
    const-string v21, ""

    .line 530
    .local v21, msg:Ljava/lang/String;
    const-string v15, ""

    .line 531
    .local v15, data:Ljava/lang/String;
    const-string v27, "-1"

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 532
    const-string v27, "msg"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 533
    const-string v27, "msg"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 535
    :cond_1
    const-string v27, "data"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 536
    const-string v27, "data"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 656
    .end local v11           #channelDetailToalJson:Lorg/json/JSONObject;
    .end local v14           #code:Ljava/lang/String;
    .end local v15           #data:Ljava/lang/String;
    .end local v21           #msg:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v7

    .line 538
    .restart local v11       #channelDetailToalJson:Lorg/json/JSONObject;
    .restart local v14       #code:Ljava/lang/String;
    .restart local v15       #data:Ljava/lang/String;
    .restart local v21       #msg:Ljava/lang/String;
    :cond_3
    const-string v27, "0"

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 539
    const-string v27, "msg"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 540
    const-string v27, "msg"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 541
    .local v8, channelDetailMsgJson:Lorg/json/JSONObject;
    const-string v25, ""

    .line 542
    .local v25, total:Ljava/lang/String;
    const-string v26, ""

    .line 543
    .local v26, type:Ljava/lang/String;
    if-eqz v8, :cond_d

    .line 544
    const-string v27, "total"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 545
    const-string v27, "total"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 547
    :cond_4
    const-string v27, "type"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 548
    const-string v27, "type"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 550
    :cond_5
    const-string v27, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_d

    .line 551
    const-string v27, "type"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 552
    .local v9, channelDetailMsgTypeJson:Lorg/json/JSONArray;
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v27

    if-lez v27, :cond_d

    .line 553
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .local v23, msgExpandListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/MsgExpandEntity;>;"
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_d

    .line 555
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 556
    .local v12, channelMsgTypeItemJson:Lorg/json/JSONObject;
    if-eqz v12, :cond_c

    .line 557
    new-instance v22, Lcom/meizu/video/client/ui/entity/MsgExpandEntity;

    invoke-direct/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/MsgExpandEntity;-><init>()V

    .line 558
    .local v22, msgExpandEntity:Lcom/meizu/video/client/ui/entity/MsgExpandEntity;
    const-string v27, "level"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 559
    const-string v27, "level"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgExpandEntity;->setLevel(Ljava/lang/String;)V

    .line 561
    :cond_6
    const-string v27, "key"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 562
    const-string v27, "key"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgExpandEntity;->setKey(Ljava/lang/String;)V

    .line 564
    :cond_7
    const-string v27, "select"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 565
    const-string v27, "select"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgExpandEntity;->setSelect(Ljava/lang/String;)V

    .line 567
    :cond_8
    const-string v27, "value"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 568
    const-string v27, "value"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 569
    .local v10, channelDetailMsgTypeValueJson:Lorg/json/JSONArray;
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v27

    if-lez v27, :cond_b

    .line 570
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v24, subValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .local v18, j:I
    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    .line 572
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 573
    .local v13, channelMsgTypeValueItemJson:Lorg/json/JSONObject;
    if-eqz v13, :cond_9

    .line 574
    const-string v27, "subvalue"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 575
    const-string v27, "subvalue"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 579
    .end local v13           #channelMsgTypeValueItemJson:Lorg/json/JSONObject;
    :cond_a
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgExpandEntity;->setValueExpand(Ljava/util/ArrayList;)V

    .line 582
    .end local v10           #channelDetailMsgTypeValueJson:Lorg/json/JSONArray;
    .end local v18           #j:I
    .end local v24           #subValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    .end local v22           #msgExpandEntity:Lcom/meizu/video/client/ui/entity/MsgExpandEntity;
    :cond_c
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 589
    .end local v8           #channelDetailMsgJson:Lorg/json/JSONObject;
    .end local v9           #channelDetailMsgTypeJson:Lorg/json/JSONArray;
    .end local v12           #channelMsgTypeItemJson:Lorg/json/JSONObject;
    .end local v17           #i:I
    .end local v23           #msgExpandListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/MsgExpandEntity;>;"
    .end local v25           #total:Ljava/lang/String;
    .end local v26           #type:Ljava/lang/String;
    :cond_d
    const-string v27, "data"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 590
    const-string v27, "data"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 591
    .local v5, channelDetailDataJson:Lorg/json/JSONArray;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v27

    if-lez v27, :cond_2

    .line 592
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    .line 594
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 595
    .local v2, channelDetailDataItemJson:Lorg/json/JSONObject;
    if-eqz v2, :cond_1c

    .line 596
    new-instance v6, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;

    invoke-direct {v6}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;-><init>()V

    .line 597
    .local v6, channelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    const-string v27, "vid"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 598
    const-string v27, "vid"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setVid(Ljava/lang/String;)V

    .line 600
    :cond_e
    const-string v27, "cid"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 601
    const-string v27, "cid"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setCid(Ljava/lang/String;)V

    .line 603
    :cond_f
    const-string v27, "mmsid"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 604
    const-string v27, "mmsid"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setMmsid(Ljava/lang/String;)V

    .line 606
    :cond_10
    const-string v27, "play_address"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_11

    .line 607
    const-string v27, "play_address"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setPlay_address(Ljava/lang/String;)V

    .line 609
    :cond_11
    const-string v27, "duration"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_12

    .line 610
    const-string v27, "duration"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setDuration(Ljava/lang/String;)V

    .line 612
    :cond_12
    const-string v27, "head_duration"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_13

    .line 613
    const-string v27, "head_duration"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setHead_duration(Ljava/lang/String;)V

    .line 615
    :cond_13
    const-string v27, "tail_duration"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_14

    .line 616
    const-string v27, "tail_duration"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setTail_duration(Ljava/lang/String;)V

    .line 619
    :cond_14
    const-string v27, "label"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 620
    const-string v27, "label"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 621
    .local v4, channelDetailDataItemLabelListJson:Lorg/json/JSONArray;
    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v27

    if-lez v27, :cond_1b

    .line 622
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v20, lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    const/16 v18, 0x0

    .restart local v18       #j:I
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1a

    .line 624
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 625
    .local v3, channelDetailDataItemLabelItemJson:Lorg/json/JSONObject;
    if-eqz v3, :cond_19

    .line 626
    new-instance v19, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 627
    .local v19, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v27, "size"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_15

    .line 628
    const-string v27, "size"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 630
    :cond_15
    const-string v27, "type"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_16

    .line 631
    const-string v27, "type"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 633
    :cond_16
    const-string v27, "key"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_17

    .line 634
    const-string v27, "key"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 636
    :cond_17
    const-string v27, "value"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_18

    .line 637
    const-string v27, "value"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 639
    :cond_18
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    .end local v19           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_19
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .line 642
    .end local v3           #channelDetailDataItemLabelItemJson:Lorg/json/JSONObject;
    :cond_1a
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 645
    .end local v4           #channelDetailDataItemLabelListJson:Lorg/json/JSONArray;
    .end local v18           #j:I
    .end local v20           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_1b
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    .end local v6           #channelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    :cond_1c
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 652
    .end local v2           #channelDetailDataItemJson:Lorg/json/JSONObject;
    .end local v5           #channelDetailDataJson:Lorg/json/JSONArray;
    .end local v11           #channelDetailToalJson:Lorg/json/JSONObject;
    .end local v14           #code:Ljava/lang/String;
    .end local v15           #data:Ljava/lang/String;
    .end local v17           #i:I
    .end local v21           #msg:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 653
    .local v16, e:Lorg/json/JSONException;
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static parseChannelDetailFromLS(Ljava/lang/String;Ljava/util/ArrayList;Lcom/meizu/video/client/ui/entity/MsgEntity;)V
    .locals 13
    .parameter "channelDetailJsonString"
    .parameter
    .parameter "msgEntity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;",
            ">;",
            "Lcom/meizu/video/client/ui/entity/MsgEntity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 928
    .local p1, channelDetailListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1131
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 933
    .local v6, channelDetailToalJson:Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    .line 934
    const-string v11, "header"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 935
    const-string v11, "header"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 936
    .local v3, channelDetailHeaderJson:Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 937
    const-string v11, "status"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 938
    const-string v11, "status"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 942
    .end local v3           #channelDetailHeaderJson:Lorg/json/JSONObject;
    :cond_2
    const-string v11, "1"

    invoke-virtual {p2}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 943
    const-string v11, "body"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 944
    const-string v11, "body"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 945
    .local v1, channelDetailBodyJson:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 946
    const-string v11, "data"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 947
    const-string v11, "data"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 948
    .local v5, channelDetailListJson:Lorg/json/JSONArray;
    if-eqz v5, :cond_15

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_15

    .line 949
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v8, v11, :cond_15

    .line 950
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 951
    .local v4, channelDetailItemJson:Lorg/json/JSONObject;
    if-eqz v4, :cond_13

    .line 952
    new-instance v2, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;

    invoke-direct {v2}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;-><init>()V

    .line 953
    .local v2, channelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 954
    .local v10, lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    const-string v11, "cid"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 955
    const-string v11, "cid"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setCid(Ljava/lang/String;)V

    .line 957
    :cond_3
    const-string v11, "id"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 958
    const-string v11, "id"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setVid(Ljava/lang/String;)V

    .line 960
    :cond_4
    const-string v11, "title"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 961
    const-string v11, "title"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    const-string v11, ""

    const-string v12, "title"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 962
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 963
    .local v9, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v11, "0"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 964
    const-string v11, "text-title"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 965
    const-string v11, "title"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_5
    const-string v11, "icon"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 973
    const-string v11, "icon"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    const-string v11, ""

    const-string v12, "icon"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 974
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 975
    .restart local v9       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v11, "0"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 976
    const-string v11, "image"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 977
    const-string v11, "icon"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_6
    const-string v11, "score"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 982
    const-string v11, "score"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    const-string v11, ""

    const-string v12, "score"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 983
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 984
    .restart local v9       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v11, "-1"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 985
    const-string v11, "text-image"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 986
    const-string v11, "0"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 987
    const-string v11, "score"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 988
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_7
    const-string v11, "type"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 993
    const-string v11, "type"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setMediaDataType(Ljava/lang/String;)V

    .line 995
    :cond_8
    const-string v11, "at"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 996
    const-string v11, "at"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setMediaOperaton(Ljava/lang/String;)V

    .line 1007
    :cond_9
    const-string v11, "director"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1008
    const-string v11, "director"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    const-string v11, ""

    const-string v12, "director"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, "\u65e0"

    const-string v12, "director"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 1009
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1010
    .restart local v9       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v11, "-1"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1011
    const-string v11, "text"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1012
    const-string v11, "1"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1013
    const-string v11, "director"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_a
    const-string v11, "actor"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1018
    const-string v11, "actor"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_b

    const-string v11, ""

    const-string v12, "actor"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 1019
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1020
    .restart local v9       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v11, "-1"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1021
    const-string v11, "text"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1022
    const-string v11, "2"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1023
    const-string v11, "actor"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_b
    const-string v11, "intro"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1028
    const-string v11, "intro"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setIntro(Ljava/lang/String;)V

    .line 1030
    :cond_c
    const-string v11, "subcate"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1031
    const-string v11, "subcate"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d

    const-string v11, ""

    const-string v12, "subcate"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 1032
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1033
    .restart local v9       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v11, "-1"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1034
    const-string v11, "text"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1035
    const-string v11, "3"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1036
    const-string v11, "subcate"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_d
    const-string v11, "area"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1041
    const-string v11, "area"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_f

    const-string v11, ""

    const-string v12, "area"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 1042
    const-string v11, "area"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1043
    .local v0, areaName:Ljava/lang/String;
    const-string v11, "^[0-9]*$"

    invoke-static {v11, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1044
    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getAreaTypeAreaYearOrderListEntity()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->getCid()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Lcom/meizu/video/client/util/CommonUtil;->getAreaNameByCidAndAreaid(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1046
    :cond_e
    if-eqz v0, :cond_f

    const-string v11, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 1047
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1048
    .restart local v9       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v11, "-1"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1049
    const-string v11, "text"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1050
    const-string v11, "4"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {v9, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    .end local v0           #areaName:Ljava/lang/String;
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_f
    const-string v11, "time_length"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1057
    const-string v11, "time_length"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_10

    const-string v11, ""

    const-string v12, "time_length"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    const-string v11, "0"

    const-string v12, "time_length"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 1058
    const-string v11, "time_length"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setDuration(Ljava/lang/String;)V

    .line 1059
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1060
    .restart local v9       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v11, "-1"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1061
    const-string v11, "text"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1062
    const-string v11, "5"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1063
    const-string v11, "time_length"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/meizu/video/client/util/CommonUtil;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_10
    const-string v11, "rcompany"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 1074
    const-string v11, "rcompany"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_11

    const-string v11, ""

    const-string v12, "rcompany"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    .line 1075
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1076
    .restart local v9       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v11, "-1"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1077
    const-string v11, "text"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->getCid()Ljava/lang/String;

    move-result-object v11

    const-string v12, "111"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 1079
    const-string v11, "14"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1083
    :goto_2
    const-string v11, "rcompany"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_11
    const-string v11, "ctime"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 1088
    const-string v11, "ctime"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_12

    const-string v11, ""

    const-string v12, "ctime"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    .line 1089
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1090
    .restart local v9       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v11, "-1"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1091
    const-string v11, "text"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1092
    const-string v11, "6"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1093
    const-string v11, "ctime"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_12
    invoke-virtual {v2, v10}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 1116
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    .end local v2           #channelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    .end local v10           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1081
    .restart local v2       #channelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    .restart local v9       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    .restart local v10       #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_14
    const-string v11, "7"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1128
    .end local v1           #channelDetailBodyJson:Lorg/json/JSONObject;
    .end local v2           #channelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    .end local v4           #channelDetailItemJson:Lorg/json/JSONObject;
    .end local v5           #channelDetailListJson:Lorg/json/JSONArray;
    .end local v6           #channelDetailToalJson:Lorg/json/JSONObject;
    .end local v8           #i:I
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    .end local v10           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :catch_0
    move-exception v7

    .line 1129
    .local v7, e:Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 1121
    .end local v7           #e:Lorg/json/JSONException;
    .restart local v1       #channelDetailBodyJson:Lorg/json/JSONObject;
    .restart local v6       #channelDetailToalJson:Lorg/json/JSONObject;
    :cond_15
    :try_start_1
    const-string v11, "total"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1122
    const-string v11, "total"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setValue(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static parseChannelFromLS(Ljava/lang/String;Ljava/util/ArrayList;Lcom/meizu/video/client/ui/entity/MsgEntity;)V
    .locals 15
    .parameter "channelJsonString"
    .parameter
    .parameter "msgEntity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelEntity;",
            ">;",
            "Lcom/meizu/video/client/ui/entity/MsgEntity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 858
    .local p1, channelListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelEntity;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 863
    .local v8, channelToalJson:Lorg/json/JSONObject;
    if-eqz v8, :cond_0

    .line 864
    const-string v13, "header"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 865
    const-string v13, "header"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 866
    .local v5, channelHeaderJson:Lorg/json/JSONObject;
    if-eqz v5, :cond_2

    .line 867
    const-string v13, "status"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 868
    const-string v13, "status"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 872
    .end local v5           #channelHeaderJson:Lorg/json/JSONObject;
    :cond_2
    const-string v13, "1"

    invoke-virtual/range {p2 .. p2}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 873
    const-string v13, "body"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 874
    const-string v13, "body"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 875
    .local v1, channelBodyJson:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 876
    const-string v13, "channel"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 877
    const-string v13, "channel"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 878
    .local v7, channelListJson:Lorg/json/JSONArray;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lez v13, :cond_0

    .line 879
    const-string v3, ""

    .line 880
    .local v3, channelDetailUrl:Ljava/lang/String;
    const-string v2, ""

    .line 881
    .local v2, channelDetailJsonData:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v10, v13, :cond_0

    .line 882
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 883
    .local v6, channelItemJson:Lorg/json/JSONObject;
    if-eqz v6, :cond_6

    .line 884
    new-instance v4, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-direct {v4}, Lcom/meizu/video/client/ui/entity/ChanelEntity;-><init>()V

    .line 885
    .local v4, channelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    const-string v13, "id"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 886
    const-string v13, "id"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->setId(Ljava/lang/String;)V

    .line 888
    :cond_3
    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v13

    const-string v14, "202"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 889
    const-string v13, "\u5fae\u7535\u5f71"

    invoke-virtual {v4, v13}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->setTitle(Ljava/lang/String;)V

    .line 895
    :cond_4
    :goto_2
    const-string v13, "icon"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 896
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 897
    .local v12, lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    new-instance v11, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v11}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 898
    .local v11, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v13, "0"

    invoke-virtual {v11, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 899
    const-string v13, "image"

    invoke-virtual {v11, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 902
    const-string v13, ""

    invoke-virtual {v11, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 904
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    invoke-virtual {v4, v12}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 907
    .end local v11           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    .end local v12           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    .end local v4           #channelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 891
    .restart local v4       #channelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    :cond_7
    const-string v13, "name"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 892
    const-string v13, "name"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 916
    .end local v1           #channelBodyJson:Lorg/json/JSONObject;
    .end local v2           #channelDetailJsonData:Ljava/lang/String;
    .end local v3           #channelDetailUrl:Ljava/lang/String;
    .end local v4           #channelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    .end local v6           #channelItemJson:Lorg/json/JSONObject;
    .end local v7           #channelListJson:Lorg/json/JSONArray;
    .end local v8           #channelToalJson:Lorg/json/JSONObject;
    .end local v10           #i:I
    :catch_0
    move-exception v9

    .line 917
    .local v9, e:Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static parseChannelProgramDetail(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 40
    .parameter "channelProgramDetailJsonString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v19, channelProgramDetailListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 235
    .local v2, channelDetailProgramToalJson:Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    .line 236
    const-string v21, ""

    .line 237
    .local v21, code:Ljava/lang/String;
    const-string v38, "code"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 238
    const-string v38, "code"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 240
    :cond_0
    const-string v33, ""

    .line 241
    .local v33, msg:Ljava/lang/String;
    const-string v22, ""

    .line 242
    .local v22, data:Ljava/lang/String;
    const-string v38, "-1"

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_3

    .line 243
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1

    .line 244
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 246
    :cond_1
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2

    .line 247
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 512
    .end local v2           #channelDetailProgramToalJson:Lorg/json/JSONObject;
    .end local v21           #code:Ljava/lang/String;
    .end local v22           #data:Ljava/lang/String;
    .end local v33           #msg:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v19

    .line 249
    .restart local v2       #channelDetailProgramToalJson:Lorg/json/JSONObject;
    .restart local v21       #code:Ljava/lang/String;
    .restart local v22       #data:Ljava/lang/String;
    .restart local v33       #msg:Ljava/lang/String;
    :cond_3
    const-string v38, "0"

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2

    .line 250
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_4

    .line 251
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 252
    .local v20, channelProgramDetailMsgJson:Lorg/json/JSONObject;
    const-string v37, ""

    .line 253
    .local v37, total:Ljava/lang/String;
    if-eqz v20, :cond_4

    .line 254
    const-string v38, "total"

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_4

    .line 255
    const-string v38, "total"

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .end local v20           #channelProgramDetailMsgJson:Lorg/json/JSONObject;
    .end local v37           #total:Ljava/lang/String;
    :cond_4
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2

    .line 260
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 261
    .local v17, channelProgramDetailDataJson:Lorg/json/JSONArray;
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v38

    if-lez v38, :cond_2

    .line 262
    const/16 v28, 0x0

    .local v28, i:I
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v28

    move/from16 v1, v38

    if-ge v0, v1, :cond_2

    .line 264
    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 265
    .local v9, channelProgramDetailDataItemJson:Lorg/json/JSONObject;
    if-eqz v9, :cond_20

    .line 266
    new-instance v18, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-direct/range {v18 .. v18}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;-><init>()V

    .line 267
    .local v18, channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    const-string v38, "vid"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_5

    .line 268
    const-string v38, "vid"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setVid(Ljava/lang/String;)V

    .line 270
    :cond_5
    const-string v38, "cid"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_6

    .line 271
    const-string v38, "cid"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setCid(Ljava/lang/String;)V

    .line 273
    :cond_6
    const-string v38, "mmsid"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 274
    const-string v38, "mmsid"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setMmsid(Ljava/lang/String;)V

    .line 276
    :cond_7
    const-string v38, "imdb"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_8

    .line 277
    const-string v38, "imdb"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setImdb(Ljava/lang/String;)V

    .line 279
    :cond_8
    const-string v38, "duration"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_9

    .line 280
    const-string v38, "duration"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setDuration(Ljava/lang/String;)V

    .line 282
    :cond_9
    const-string v38, "head_duration"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_a

    .line 283
    const-string v38, "head_duration"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setHead_duration(Ljava/lang/String;)V

    .line 285
    :cond_a
    const-string v38, "tail_duration"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_b

    .line 286
    const-string v38, "tail_duration"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setTail_duration(Ljava/lang/String;)V

    .line 288
    :cond_b
    const-string v38, "play_address"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_c

    .line 289
    const-string v38, "play_address"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setPlay_address(Ljava/lang/String;)V

    .line 291
    :cond_c
    const-string v38, "download_address"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_d

    .line 292
    const-string v38, "download_address"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setDownload_address(Ljava/lang/String;)V

    .line 296
    :cond_d
    const-string v38, "description"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_10

    .line 297
    const-string v38, "description"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 298
    .local v3, channelProgramDetailDataItemDescriptionJson:Lorg/json/JSONObject;
    if-eqz v3, :cond_10

    .line 299
    new-instance v23, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct/range {v23 .. v23}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    .line 300
    .local v23, descriptionMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    const-string v38, "key"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_e

    .line 301
    const-string v38, "key"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 303
    :cond_e
    const-string v38, "value"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_f

    .line 304
    const-string v38, "value"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setValue(Ljava/lang/String;)V

    .line 306
    :cond_f
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setDescriptionMsgEntity(Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 311
    .end local v3           #channelProgramDetailDataItemDescriptionJson:Lorg/json/JSONObject;
    .end local v23           #descriptionMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    :cond_10
    const-string v38, "label"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_17

    .line 312
    const-string v38, "label"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 313
    .local v11, channelProgramDetailDataItemLabelListJson:Lorg/json/JSONArray;
    if-eqz v11, :cond_17

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v38

    if-lez v38, :cond_17

    .line 314
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v31, lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    const/16 v29, 0x0

    .local v29, j:I
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v29

    move/from16 v1, v38

    if-ge v0, v1, :cond_16

    .line 316
    move/from16 v0, v29

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 317
    .local v10, channelProgramDetailDataItemLabelItemJson:Lorg/json/JSONObject;
    if-eqz v10, :cond_15

    .line 318
    new-instance v30, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v30 .. v30}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 319
    .local v30, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v38, "size"

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_11

    .line 320
    const-string v38, "size"

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 322
    :cond_11
    const-string v38, "type"

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_12

    .line 323
    const-string v38, "type"

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 325
    :cond_12
    const-string v38, "key"

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_13

    .line 326
    const-string v38, "key"

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 328
    :cond_13
    const-string v38, "value"

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_14

    .line 329
    const-string v38, "value"

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 331
    :cond_14
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .end local v30           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_15
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_2

    .line 334
    .end local v10           #channelProgramDetailDataItemLabelItemJson:Lorg/json/JSONObject;
    :cond_16
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 339
    .end local v11           #channelProgramDetailDataItemLabelListJson:Lorg/json/JSONArray;
    .end local v29           #j:I
    .end local v31           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_17
    const-string v38, "similar_video"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1b

    .line 340
    const-string v38, "similar_video"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 341
    .local v14, channelProgramDetailDataItemSimilarVideoJson:Lorg/json/JSONObject;
    if-eqz v14, :cond_1b

    .line 342
    const-string v38, "code"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_18

    .line 343
    const-string v38, "code"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setSimilarVideoCode(Ljava/lang/String;)V

    .line 345
    :cond_18
    new-instance v36, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct/range {v36 .. v36}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    .line 346
    .local v36, similarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    const-string v38, "-1"

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getSimilarVideoCode()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_21

    .line 347
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_19

    .line 348
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 350
    :cond_19
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1a

    .line 351
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setValue(Ljava/lang/String;)V

    .line 353
    :cond_1a
    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setSimilarVideoMsgEntity(Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 419
    .end local v14           #channelProgramDetailDataItemSimilarVideoJson:Lorg/json/JSONObject;
    .end local v36           #similarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    :cond_1b
    :goto_3
    const-string v38, "episodes"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1f

    .line 420
    const-string v38, "episodes"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 421
    .local v6, channelProgramDetailDataItemEpisodesJson:Lorg/json/JSONObject;
    if-eqz v6, :cond_1f

    .line 422
    const-string v38, "code"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1c

    .line 423
    const-string v38, "code"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setEpisodesCode(Ljava/lang/String;)V

    .line 425
    :cond_1c
    new-instance v27, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    .line 426
    .local v27, episodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    const-string v38, "-1"

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getEpisodesCode()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2f

    .line 427
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1d

    .line 428
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 430
    :cond_1d
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1e

    .line 431
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setValue(Ljava/lang/String;)V

    .line 433
    :cond_1e
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setEpisodesMsgEntity(Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 501
    .end local v6           #channelProgramDetailDataItemEpisodesJson:Lorg/json/JSONObject;
    .end local v27           #episodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    :cond_1f
    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v18           #channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    :cond_20
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1

    .line 354
    .restart local v14       #channelProgramDetailDataItemSimilarVideoJson:Lorg/json/JSONObject;
    .restart local v18       #channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    .restart local v36       #similarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    :cond_21
    const-string v38, "0"

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getSimilarVideoCode()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1b

    .line 355
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_23

    .line 356
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 357
    .local v15, channelProgramDetailDataItemSimilarVideoMsgJson:Lorg/json/JSONObject;
    if-eqz v15, :cond_23

    .line 358
    const-string v38, "total"

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_23

    .line 359
    const-string v38, "total"

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 360
    .local v16, channelProgramDetailDataItemSimilarVideolToalMsgJson:Lorg/json/JSONObject;
    if-eqz v16, :cond_23

    .line 361
    const-string v38, "key"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_22

    .line 362
    const-string v38, "key"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 364
    :cond_22
    const-string v38, "value"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_23

    .line 365
    const-string v38, "value"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setValue(Ljava/lang/String;)V

    .line 371
    .end local v15           #channelProgramDetailDataItemSimilarVideoMsgJson:Lorg/json/JSONObject;
    .end local v16           #channelProgramDetailDataItemSimilarVideolToalMsgJson:Lorg/json/JSONObject;
    :cond_23
    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setSimilarVideoMsgEntity(Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 372
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1b

    .line 373
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 374
    .local v13, channelProgramDetailDataItemSimilarVideoDataJson:Lorg/json/JSONArray;
    if-eqz v13, :cond_1b

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v38

    if-lez v38, :cond_1b

    .line 375
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v35, similarVideoListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;>;"
    const/16 v32, 0x0

    .local v32, m:I
    :goto_5
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v32

    move/from16 v1, v38

    if-ge v0, v1, :cond_2e

    .line 377
    move/from16 v0, v32

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 378
    .local v12, channelProgramDetailDataItemSimilarVideoDataItemJson:Lorg/json/JSONObject;
    if-eqz v12, :cond_2d

    .line 379
    new-instance v34, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;

    invoke-direct/range {v34 .. v34}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;-><init>()V

    .line 380
    .local v34, similarVideoEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    const-string v38, "vid"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_24

    .line 381
    const-string v38, "vid"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setVid(Ljava/lang/String;)V

    .line 383
    :cond_24
    const-string v38, "cid"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_25

    .line 384
    const-string v38, "cid"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setCid(Ljava/lang/String;)V

    .line 386
    :cond_25
    const-string v38, "mmsid"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_26

    .line 387
    const-string v38, "mmsid"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setMmsid(Ljava/lang/String;)V

    .line 389
    :cond_26
    const-string v38, "title"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_27

    .line 390
    const-string v38, "title"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setTitle(Ljava/lang/String;)V

    .line 392
    :cond_27
    const-string v38, "image"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_28

    .line 393
    const-string v38, "image"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setImage(Ljava/lang/String;)V

    .line 395
    :cond_28
    const-string v38, "duration"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_29

    .line 396
    const-string v38, "duration"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setDuration(Ljava/lang/String;)V

    .line 398
    :cond_29
    const-string v38, "head_duration"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2a

    .line 399
    const-string v38, "head_duration"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setHead_duration(Ljava/lang/String;)V

    .line 401
    :cond_2a
    const-string v38, "tail_duration"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2b

    .line 402
    const-string v38, "tail_duration"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setTail_duration(Ljava/lang/String;)V

    .line 404
    :cond_2b
    const-string v38, "play_address"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2c

    .line 405
    const-string v38, "play_address"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setPlay_address(Ljava/lang/String;)V

    .line 407
    :cond_2c
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    .end local v34           #similarVideoEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_2d
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_5

    .line 410
    .end local v12           #channelProgramDetailDataItemSimilarVideoDataItemJson:Lorg/json/JSONObject;
    :cond_2e
    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setSimilarVideoListEntity(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 508
    .end local v2           #channelDetailProgramToalJson:Lorg/json/JSONObject;
    .end local v9           #channelProgramDetailDataItemJson:Lorg/json/JSONObject;
    .end local v13           #channelProgramDetailDataItemSimilarVideoDataJson:Lorg/json/JSONArray;
    .end local v14           #channelProgramDetailDataItemSimilarVideoJson:Lorg/json/JSONObject;
    .end local v17           #channelProgramDetailDataJson:Lorg/json/JSONArray;
    .end local v18           #channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    .end local v21           #code:Ljava/lang/String;
    .end local v22           #data:Ljava/lang/String;
    .end local v28           #i:I
    .end local v32           #m:I
    .end local v33           #msg:Ljava/lang/String;
    .end local v35           #similarVideoListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;>;"
    .end local v36           #similarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    :catch_0
    move-exception v24

    .line 509
    .local v24, e:Lorg/json/JSONException;
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 434
    .end local v24           #e:Lorg/json/JSONException;
    .restart local v2       #channelDetailProgramToalJson:Lorg/json/JSONObject;
    .restart local v6       #channelProgramDetailDataItemEpisodesJson:Lorg/json/JSONObject;
    .restart local v9       #channelProgramDetailDataItemJson:Lorg/json/JSONObject;
    .restart local v17       #channelProgramDetailDataJson:Lorg/json/JSONArray;
    .restart local v18       #channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    .restart local v21       #code:Ljava/lang/String;
    .restart local v22       #data:Ljava/lang/String;
    .restart local v27       #episodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    .restart local v28       #i:I
    .restart local v33       #msg:Ljava/lang/String;
    :cond_2f
    :try_start_1
    const-string v38, "0"

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getEpisodesCode()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1f

    .line 435
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_31

    .line 436
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 437
    .local v7, channelProgramDetailDataItemEpisodesMsgJson:Lorg/json/JSONObject;
    if-eqz v7, :cond_31

    .line 438
    const-string v38, "total"

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_31

    .line 439
    const-string v38, "total"

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 440
    .local v8, channelProgramDetailDataItemEpisodesToalMsgJson:Lorg/json/JSONObject;
    if-eqz v8, :cond_31

    .line 441
    const-string v38, "key"

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_30

    .line 442
    const-string v38, "key"

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 444
    :cond_30
    const-string v38, "value"

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_31

    .line 445
    const-string v38, "value"

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setValue(Ljava/lang/String;)V

    .line 451
    .end local v7           #channelProgramDetailDataItemEpisodesMsgJson:Lorg/json/JSONObject;
    .end local v8           #channelProgramDetailDataItemEpisodesToalMsgJson:Lorg/json/JSONObject;
    :cond_31
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setEpisodesMsgEntity(Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 452
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1f

    .line 453
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 454
    .local v5, channelProgramDetailDataItemEpisodesDataJson:Lorg/json/JSONArray;
    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v38

    if-lez v38, :cond_1f

    .line 455
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v26, episodesListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/EpisodesEntity;>;"
    const/16 v32, 0x0

    .restart local v32       #m:I
    :goto_6
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v32

    move/from16 v1, v38

    if-ge v0, v1, :cond_3d

    .line 457
    move/from16 v0, v32

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 458
    .local v4, channelProgramDetailDataItemEpisodesDataItemJson:Lorg/json/JSONObject;
    if-eqz v4, :cond_3c

    .line 459
    new-instance v25, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-direct/range {v25 .. v25}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;-><init>()V

    .line 460
    .local v25, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    const-string v38, "vid"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_32

    .line 461
    const-string v38, "vid"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setVid(Ljava/lang/String;)V

    .line 463
    :cond_32
    const-string v38, "cid"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_33

    .line 464
    const-string v38, "cid"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setCid(Ljava/lang/String;)V

    .line 466
    :cond_33
    const-string v38, "mmsid"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_34

    .line 467
    const-string v38, "mmsid"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setMmsid(Ljava/lang/String;)V

    .line 469
    :cond_34
    const-string v38, "title"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_35

    .line 470
    const-string v38, "title"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setTitle(Ljava/lang/String;)V

    .line 472
    :cond_35
    const-string v38, "description"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_36

    .line 473
    const-string v38, "description"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setDescription(Ljava/lang/String;)V

    .line 475
    :cond_36
    const-string v38, "duration"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_37

    .line 476
    const-string v38, "duration"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setDuration(Ljava/lang/String;)V

    .line 478
    :cond_37
    const-string v38, "head_duration"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_38

    .line 479
    const-string v38, "head_duration"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setHead_duration(Ljava/lang/String;)V

    .line 481
    :cond_38
    const-string v38, "tail_duration"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_39

    .line 482
    const-string v38, "tail_duration"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setTail_duration(Ljava/lang/String;)V

    .line 484
    :cond_39
    const-string v38, "play_address"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_3a

    .line 485
    const-string v38, "play_address"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setPlay_address(Ljava/lang/String;)V

    .line 487
    :cond_3a
    const-string v38, "download_address"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_3b

    .line 488
    const-string v38, "download_address"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setDownload_address(Ljava/lang/String;)V

    .line 490
    :cond_3b
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .end local v25           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :cond_3c
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_6

    .line 493
    .end local v4           #channelProgramDetailDataItemEpisodesDataItemJson:Lorg/json/JSONObject;
    :cond_3d
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setEpisodesListEntity(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public static parseChannelProgramDetailFromLS(Ljava/lang/String;Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;Lcom/meizu/video/client/ui/entity/MsgEntity;)V
    .locals 30
    .parameter "channelProgramDetailJsonString"
    .parameter "channelProgarmDetailEntity"
    .parameter "msgEntity"

    .prologue
    .line 1140
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1529
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1145
    .local v12, channelProgramDetailToalJson:Lorg/json/JSONObject;
    if-eqz v12, :cond_0

    .line 1146
    const-string v28, "header"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 1147
    const-string v28, "header"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1148
    .local v5, channelProgramDetailHeaderJson:Lorg/json/JSONObject;
    if-eqz v5, :cond_2

    .line 1149
    const-string v28, "status"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 1150
    const-string v28, "status"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 1154
    .end local v5           #channelProgramDetailHeaderJson:Lorg/json/JSONObject;
    :cond_2
    const-string v28, "1"

    invoke-virtual/range {p2 .. p2}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 1155
    const-string v28, "body"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 1156
    const-string v28, "body"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1157
    .local v2, channelProgramDetailBodyJson:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 1158
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    .local v22, lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    const-string v28, "id"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 1160
    const-string v28, "id"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setVid(Ljava/lang/String;)V

    .line 1162
    :cond_3
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 1163
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_4

    const-string v28, ""

    const-string v29, "title"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 1164
    new-instance v21, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1165
    .local v21, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v28, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1166
    const-string v28, "text-title"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1167
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1168
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1174
    .end local v21           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_4
    const-string v28, "icon"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 1175
    const-string v28, "icon"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_5

    const-string v28, ""

    const-string v29, "icon"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_5

    .line 1176
    new-instance v21, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1177
    .restart local v21       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v28, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1178
    const-string v28, "image"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1179
    const-string v28, "icon"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1180
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    .end local v21           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_5
    const-string v28, "score"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 1184
    const-string v28, "score"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_6

    const-string v28, ""

    const-string v29, "score"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_6

    .line 1185
    new-instance v21, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1186
    .restart local v21       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v28, "-1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1187
    const-string v28, "text-image"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1188
    const-string v28, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1189
    const-string v28, "score"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1190
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    .end local v21           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_6
    const-string v28, "cid"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 1194
    const-string v28, "cid"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setCid(Ljava/lang/String;)V

    .line 1211
    :cond_7
    const-string v28, "director"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 1212
    const-string v28, "director"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_8

    const-string v28, ""

    const-string v29, "director"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_8

    .line 1213
    new-instance v21, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1214
    .restart local v21       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v28, "-1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1215
    const-string v28, "text"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1216
    const-string v28, "1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1217
    const-string v28, "director"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1218
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    .end local v21           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_8
    const-string v28, "actor"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 1222
    const-string v28, "actor"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_9

    const-string v28, ""

    const-string v29, "actor"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_9

    .line 1223
    new-instance v21, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1224
    .restart local v21       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v28, "-1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1225
    const-string v28, "text"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1226
    const-string v28, "2"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1227
    const-string v28, "actor"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1228
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    .end local v21           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_9
    const-string v28, "intro"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 1232
    const-string v28, "intro"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_a

    const-string v28, ""

    const-string v29, "intro"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_a

    .line 1233
    new-instance v13, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct {v13}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    .line 1234
    .local v13, descriptionMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    const-string v28, "\u5267\u60c5\u7b80\u4ecb"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 1235
    const-string v28, "intro"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setValue(Ljava/lang/String;)V

    .line 1236
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setDescriptionMsgEntity(Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 1239
    .end local v13           #descriptionMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    :cond_a
    const-string v28, "subcate"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 1240
    const-string v28, "subcate"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_b

    const-string v28, ""

    const-string v29, "subcate"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_b

    .line 1241
    new-instance v21, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1242
    .restart local v21       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v28, "-1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1243
    const-string v28, "text"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1244
    const-string v28, "3"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1245
    const-string v28, "subcate"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1246
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    .end local v21           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_b
    const-string v28, "area"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 1250
    const-string v28, "area"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_c

    const-string v28, ""

    const-string v29, "area"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_c

    .line 1251
    new-instance v21, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1252
    .restart local v21       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v28, "-1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1253
    const-string v28, "text"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1254
    const-string v28, "4"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1255
    const-string v28, "area"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1256
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    .end local v21           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_c
    const-string v28, "time_length"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 1260
    const-string v28, "time_length"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_d

    const-string v28, ""

    const-string v29, "time_length"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_d

    const-string v28, "0"

    const-string v29, "time_length"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_d

    .line 1261
    const-string v28, "time_length"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setDuration(Ljava/lang/String;)V

    .line 1262
    new-instance v21, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1263
    .restart local v21       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v28, "-1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1264
    const-string v28, "text"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1265
    const-string v28, "5"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1266
    const-string v28, "time_length"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/video/client/util/CommonUtil;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1267
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1270
    .end local v21           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_d
    const-string v28, "style"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 1271
    const-string v28, "style"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setStype(Ljava/lang/String;)V

    .line 1276
    :cond_e
    const-string v28, "rcompany"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 1277
    const-string v28, "rcompany"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_f

    const-string v28, ""

    const-string v29, "rcompany"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_f

    .line 1278
    new-instance v21, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1279
    .restart local v21       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v28, "-1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1280
    const-string v28, "text"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1281
    const-string v28, "7"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1282
    const-string v28, "rcompany"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1283
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    .end local v21           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_f
    const-string v28, "ctime"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 1287
    const-string v28, "ctime"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_10

    const-string v28, ""

    const-string v29, "ctime"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_10

    .line 1288
    new-instance v21, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1289
    .restart local v21       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v28, "-1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1290
    const-string v28, "text"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1291
    const-string v28, "6"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1292
    const-string v28, "ctime"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1293
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    .end local v21           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_10
    const-string v28, "vl"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_21

    .line 1297
    const-string v28, "vl"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1298
    .local v4, channelProgramDetailEpisodesListJson:Lorg/json/JSONArray;
    if-eqz v4, :cond_21

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v28

    if-lez v28, :cond_21

    .line 1299
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1300
    .local v16, episodesListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/EpisodesEntity;>;"
    const/16 v20, 0x0

    .local v20, j:I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v28

    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_1f

    .line 1301
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1302
    .local v3, channelProgramDetailEpisodesItemJson:Lorg/json/JSONObject;
    if-eqz v3, :cond_1e

    .line 1303
    new-instance v15, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-direct {v15}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;-><init>()V

    .line 1305
    .local v15, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    add-int/lit8 v29, v20, 0x1

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1307
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 1308
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setTitle(Ljava/lang/String;)V

    .line 1313
    :cond_11
    const-string v28, "vid"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 1314
    const-string v28, "vid"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setVid(Ljava/lang/String;)V

    .line 1316
    :cond_12
    const-string v28, "lmid"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 1317
    const-string v28, "lmid"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setLmid(Ljava/lang/String;)V

    .line 1319
    :cond_13
    const-string v28, "hmid"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_14

    .line 1320
    const-string v28, "hmid"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setHmid(Ljava/lang/String;)V

    .line 1322
    :cond_14
    const-string v28, "lsize"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v28

    if-eqz v28, :cond_15

    .line 1324
    :try_start_1
    const-string v28, "lsize"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-virtual {v15, v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setLsize(D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1329
    :cond_15
    :goto_2
    :try_start_2
    const-string v28, "hsize"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v28

    if-eqz v28, :cond_16

    .line 1331
    :try_start_3
    const-string v28, "hsize"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-virtual {v15, v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setHsize(D)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1335
    :cond_16
    :goto_3
    :try_start_4
    const-string v28, "free"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_17

    .line 1336
    const-string v28, "free"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setPlay_address(Ljava/lang/String;)V

    .line 1338
    :cond_17
    const-string v28, "v800"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_18

    .line 1339
    const-string v28, "v800"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setPlay_address_other(Ljava/lang/String;)V

    .line 1341
    :cond_18
    const-string v28, "down"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_19

    .line 1342
    const-string v28, "down"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setDownload_address(Ljava/lang/String;)V

    .line 1344
    :cond_19
    const-string v28, "d800"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1a

    .line 1345
    const-string v28, "d800"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setDownload_address_other(Ljava/lang/String;)V

    .line 1347
    :cond_1a
    const-string v28, "btime"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 1348
    const-string v28, "btime"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setHead_duration(Ljava/lang/String;)V

    .line 1350
    :cond_1b
    const-string v28, "etime"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1c

    .line 1351
    const-string v28, "etime"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setTail_duration(Ljava/lang/String;)V

    .line 1353
    :cond_1c
    const-string v28, "duration"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 1354
    const-string v28, "duration"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setDuration(Ljava/lang/String;)V

    .line 1356
    :cond_1d
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1300
    .end local v15           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :cond_1e
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 1359
    .end local v3           #channelProgramDetailEpisodesItemJson:Lorg/json/JSONObject;
    :cond_1f
    const-string v28, "0"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setEpisodesCode(Ljava/lang/String;)V

    .line 1360
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setEpisodesListEntity(Ljava/util/ArrayList;)V

    .line 1362
    new-instance v17, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct/range {v17 .. v17}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    .line 1363
    .local v17, episodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_20

    .line 1364
    const-string v28, "\u89c6\u9891\u5217\u8868"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 1365
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setValue(Ljava/lang/String;)V

    .line 1367
    :cond_20
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setEpisodesMsgEntity(Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 1371
    .end local v4           #channelProgramDetailEpisodesListJson:Lorg/json/JSONArray;
    .end local v16           #episodesListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/EpisodesEntity;>;"
    .end local v17           #episodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    .end local v20           #j:I
    :cond_21
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1372
    .local v26, similarVideoListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;>;"
    const-string v28, "l_list"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2c

    .line 1373
    const-string v28, "l_list"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 1374
    .local v11, channelProgramDetailSimilarLListJson:Lorg/json/JSONArray;
    if-eqz v11, :cond_2c

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v28

    if-lez v28, :cond_2c

    .line 1375
    const/16 v24, 0x0

    .local v24, n:I
    :goto_4
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v28

    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_2c

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_2c

    .line 1376
    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 1377
    .local v10, channelProgramDetailSimilarLItemJson:Lorg/json/JSONObject;
    if-eqz v10, :cond_25

    .line 1378
    new-instance v25, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;

    invoke-direct/range {v25 .. v25}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;-><init>()V

    .line 1380
    .local v25, similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    const-string v28, "id"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_22

    .line 1381
    const-string v28, "id"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setVid(Ljava/lang/String;)V

    .line 1385
    :cond_22
    const/16 v18, 0x0

    .line 1386
    .local v18, hasSame:Z
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_23
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_24

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;

    .line 1387
    .local v14, entity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    invoke-virtual {v14}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getVid()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v25 .. v25}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getVid()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_23

    .line 1388
    const/16 v18, 0x1

    .line 1392
    .end local v14           #entity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_24
    if-eqz v18, :cond_26

    .line 1375
    .end local v18           #hasSame:Z
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v25           #similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_25
    :goto_5
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 1396
    .restart local v18       #hasSame:Z
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v25       #similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_26
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_27

    .line 1397
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setTitle(Ljava/lang/String;)V

    .line 1399
    :cond_27
    const-string v28, "icon"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_28

    .line 1400
    const-string v28, "icon"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setImage(Ljava/lang/String;)V

    .line 1402
    :cond_28
    const-string v28, "cid"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_29

    .line 1403
    const-string v28, "cid"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setCid(Ljava/lang/String;)V

    .line 1405
    :cond_29
    const-string v28, "type"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2a

    .line 1406
    const-string v28, "type"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setMediaDataType(Ljava/lang/String;)V

    .line 1408
    :cond_2a
    const-string v28, "at"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2b

    .line 1409
    const-string v28, "at"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setMediaOperaton(Ljava/lang/String;)V

    .line 1411
    :cond_2b
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1527
    .end local v2           #channelProgramDetailBodyJson:Lorg/json/JSONObject;
    .end local v10           #channelProgramDetailSimilarLItemJson:Lorg/json/JSONObject;
    .end local v11           #channelProgramDetailSimilarLListJson:Lorg/json/JSONArray;
    .end local v12           #channelProgramDetailToalJson:Lorg/json/JSONObject;
    .end local v18           #hasSame:Z
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v22           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .end local v24           #n:I
    .end local v25           #similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    .end local v26           #similarVideoListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;>;"
    :catch_0
    move-exception v28

    goto/16 :goto_0

    .line 1417
    .restart local v2       #channelProgramDetailBodyJson:Lorg/json/JSONObject;
    .restart local v12       #channelProgramDetailToalJson:Lorg/json/JSONObject;
    .restart local v22       #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .restart local v26       #similarVideoListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;>;"
    :cond_2c
    const-string v28, "a_list"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_37

    .line 1418
    const-string v28, "a_list"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1419
    .local v7, channelProgramDetailSimilarAListJson:Lorg/json/JSONArray;
    if-eqz v7, :cond_37

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v28

    if-lez v28, :cond_37

    .line 1420
    const/16 v24, 0x0

    .restart local v24       #n:I
    :goto_6
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v28

    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_37

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_37

    .line 1421
    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1422
    .local v6, channelProgramDetailSimilarAItemJson:Lorg/json/JSONObject;
    if-eqz v6, :cond_30

    .line 1423
    new-instance v25, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;

    invoke-direct/range {v25 .. v25}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;-><init>()V

    .line 1425
    .restart local v25       #similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    const-string v28, "id"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2d

    .line 1426
    const-string v28, "id"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setVid(Ljava/lang/String;)V

    .line 1430
    :cond_2d
    const/16 v18, 0x0

    .line 1431
    .restart local v18       #hasSame:Z
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19       #i$:Ljava/util/Iterator;
    :cond_2e
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_2f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;

    .line 1432
    .restart local v14       #entity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    invoke-virtual {v14}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getVid()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v25 .. v25}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getVid()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2e

    .line 1433
    const/16 v18, 0x1

    .line 1437
    .end local v14           #entity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_2f
    if-eqz v18, :cond_31

    .line 1420
    .end local v18           #hasSame:Z
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v25           #similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_30
    :goto_7
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 1441
    .restart local v18       #hasSame:Z
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v25       #similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_31
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_32

    .line 1442
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setTitle(Ljava/lang/String;)V

    .line 1444
    :cond_32
    const-string v28, "icon"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_33

    .line 1445
    const-string v28, "icon"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setImage(Ljava/lang/String;)V

    .line 1447
    :cond_33
    const-string v28, "cid"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_34

    .line 1448
    const-string v28, "cid"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setCid(Ljava/lang/String;)V

    .line 1450
    :cond_34
    const-string v28, "type"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_35

    .line 1451
    const-string v28, "type"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setMediaDataType(Ljava/lang/String;)V

    .line 1453
    :cond_35
    const-string v28, "at"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_36

    .line 1454
    const-string v28, "at"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setMediaOperaton(Ljava/lang/String;)V

    .line 1456
    :cond_36
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1462
    .end local v6           #channelProgramDetailSimilarAItemJson:Lorg/json/JSONObject;
    .end local v7           #channelProgramDetailSimilarAListJson:Lorg/json/JSONArray;
    .end local v18           #hasSame:Z
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v24           #n:I
    .end local v25           #similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_37
    const-string v28, "d_list"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_42

    .line 1463
    const-string v28, "d_list"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 1464
    .local v9, channelProgramDetailSimilarDListJson:Lorg/json/JSONArray;
    if-eqz v9, :cond_42

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v28

    if-lez v28, :cond_42

    .line 1465
    const/16 v23, 0x0

    .local v23, m:I
    :goto_8
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v28

    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_42

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_42

    .line 1466
    move/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 1467
    .local v8, channelProgramDetailSimilarDItemJson:Lorg/json/JSONObject;
    if-eqz v8, :cond_3b

    .line 1468
    new-instance v25, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;

    invoke-direct/range {v25 .. v25}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;-><init>()V

    .line 1470
    .restart local v25       #similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    const-string v28, "id"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_38

    .line 1471
    const-string v28, "id"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setVid(Ljava/lang/String;)V

    .line 1475
    :cond_38
    const/16 v18, 0x0

    .line 1476
    .restart local v18       #hasSame:Z
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19       #i$:Ljava/util/Iterator;
    :cond_39
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_3a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;

    .line 1477
    .restart local v14       #entity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    invoke-virtual {v14}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getVid()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v25 .. v25}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getVid()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_39

    .line 1478
    const/16 v18, 0x1

    .line 1482
    .end local v14           #entity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_3a
    if-eqz v18, :cond_3c

    .line 1465
    .end local v18           #hasSame:Z
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v25           #similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_3b
    :goto_9
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    .line 1486
    .restart local v18       #hasSame:Z
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v25       #similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_3c
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3d

    .line 1487
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setTitle(Ljava/lang/String;)V

    .line 1489
    :cond_3d
    const-string v28, "icon"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3e

    .line 1490
    const-string v28, "icon"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setImage(Ljava/lang/String;)V

    .line 1492
    :cond_3e
    const-string v28, "cid"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3f

    .line 1493
    const-string v28, "cid"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setCid(Ljava/lang/String;)V

    .line 1495
    :cond_3f
    const-string v28, "type"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_40

    .line 1496
    const-string v28, "type"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setMediaDataType(Ljava/lang/String;)V

    .line 1498
    :cond_40
    const-string v28, "at"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_41

    .line 1499
    const-string v28, "at"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setMediaOperaton(Ljava/lang/String;)V

    .line 1501
    :cond_41
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 1507
    .end local v8           #channelProgramDetailSimilarDItemJson:Lorg/json/JSONObject;
    .end local v9           #channelProgramDetailSimilarDListJson:Lorg/json/JSONArray;
    .end local v18           #hasSame:Z
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v23           #m:I
    .end local v25           #similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_42
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setSimilarVideoListEntity(Ljava/util/ArrayList;)V

    .line 1508
    new-instance v27, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    .line 1509
    .local v27, similarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_43

    .line 1510
    const-string v28, "\u76f8\u5173\u89c6\u9891"

    invoke-virtual/range {v27 .. v28}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 1511
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setValue(Ljava/lang/String;)V

    .line 1513
    :cond_43
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setSimilarVideoMsgEntity(Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 1521
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setLableListEntity(Ljava/util/ArrayList;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 1332
    .end local v26           #similarVideoListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;>;"
    .end local v27           #similarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    .restart local v3       #channelProgramDetailEpisodesItemJson:Lorg/json/JSONObject;
    .restart local v4       #channelProgramDetailEpisodesListJson:Lorg/json/JSONArray;
    .restart local v15       #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .restart local v16       #episodesListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/EpisodesEntity;>;"
    .restart local v20       #j:I
    :catch_1
    move-exception v28

    goto/16 :goto_3

    .line 1325
    :catch_2
    move-exception v28

    goto/16 :goto_2
.end method

.method public static parseComment(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .parameter "commentJsonString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/CommentEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v4, commentListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/CommentEntity;>;"
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 165
    .local v6, commentToalJson:Lorg/json/JSONObject;
    if-eqz v6, :cond_2

    .line 166
    const-string v1, ""

    .line 167
    .local v1, code:Ljava/lang/String;
    const-string v12, "code"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 168
    const-string v12, "code"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    :cond_0
    const-string v10, ""

    .line 171
    .local v10, msg:Ljava/lang/String;
    const-string v7, ""

    .line 172
    .local v7, data:Ljava/lang/String;
    const-string v12, "-1"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 173
    const-string v12, "msg"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 174
    const-string v12, "msg"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 176
    :cond_1
    const-string v12, "data"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 177
    const-string v12, "data"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 222
    .end local v1           #code:Ljava/lang/String;
    .end local v6           #commentToalJson:Lorg/json/JSONObject;
    .end local v7           #data:Ljava/lang/String;
    .end local v10           #msg:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v4

    .line 179
    .restart local v1       #code:Ljava/lang/String;
    .restart local v6       #commentToalJson:Lorg/json/JSONObject;
    .restart local v7       #data:Ljava/lang/String;
    .restart local v10       #msg:Ljava/lang/String;
    :cond_3
    const-string v12, "0"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 180
    const-string v12, "msg"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 181
    const-string v12, "msg"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 182
    .local v5, commentMsgJson:Lorg/json/JSONObject;
    const-string v11, ""

    .line 183
    .local v11, total:Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 184
    const-string v12, "total"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 185
    const-string v12, "total"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .end local v5           #commentMsgJson:Lorg/json/JSONObject;
    .end local v11           #total:Ljava/lang/String;
    :cond_4
    const-string v12, "data"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 190
    const-string v12, "data"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 191
    .local v2, commentDataJson:Lorg/json/JSONArray;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 192
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v9, v12, :cond_2

    .line 193
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 194
    .local v0, channelDataItemJson:Lorg/json/JSONObject;
    if-eqz v0, :cond_a

    .line 195
    new-instance v3, Lcom/meizu/video/client/ui/entity/CommentEntity;

    invoke-direct {v3}, Lcom/meizu/video/client/ui/entity/CommentEntity;-><init>()V

    .line 196
    .local v3, commentEntity:Lcom/meizu/video/client/ui/entity/CommentEntity;
    const-string v12, "id"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 197
    const-string v12, "id"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/meizu/video/client/ui/entity/CommentEntity;->setId(Ljava/lang/String;)V

    .line 199
    :cond_5
    const-string v12, "title"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 200
    const-string v12, "title"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/meizu/video/client/ui/entity/CommentEntity;->setTitle(Ljava/lang/String;)V

    .line 202
    :cond_6
    const-string v12, "author"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 203
    const-string v12, "author"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/meizu/video/client/ui/entity/CommentEntity;->setAuthor(Ljava/lang/String;)V

    .line 205
    :cond_7
    const-string v12, "score"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 206
    const-string v12, "score"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/meizu/video/client/ui/entity/CommentEntity;->setScore(Ljava/lang/String;)V

    .line 208
    :cond_8
    const-string v12, "content"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 209
    const-string v12, "content"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/meizu/video/client/ui/entity/CommentEntity;->setContent(Ljava/lang/String;)V

    .line 211
    :cond_9
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v3           #commentEntity:Lcom/meizu/video/client/ui/entity/CommentEntity;
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 218
    .end local v0           #channelDataItemJson:Lorg/json/JSONObject;
    .end local v1           #code:Ljava/lang/String;
    .end local v2           #commentDataJson:Lorg/json/JSONArray;
    .end local v6           #commentToalJson:Lorg/json/JSONObject;
    .end local v7           #data:Ljava/lang/String;
    .end local v9           #i:I
    .end local v10           #msg:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 219
    .local v8, e:Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static parseRecommend(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 20
    .parameter "recommendJsonString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 753
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .local v15, recommendListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    :try_start_0
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 756
    .local v17, recommendToalJson:Lorg/json/JSONObject;
    if-eqz v17, :cond_2

    .line 757
    const-string v2, ""

    .line 758
    .local v2, code:Ljava/lang/String;
    const-string v19, "code"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 759
    const-string v19, "code"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 761
    :cond_0
    const-string v9, ""

    .line 762
    .local v9, msg:Ljava/lang/String;
    const-string v3, ""

    .line 763
    .local v3, data:Ljava/lang/String;
    const-string v19, "-1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 764
    const-string v19, "msg"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 765
    const-string v19, "msg"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 767
    :cond_1
    const-string v19, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 768
    const-string v19, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 842
    .end local v2           #code:Ljava/lang/String;
    .end local v3           #data:Ljava/lang/String;
    .end local v9           #msg:Ljava/lang/String;
    .end local v17           #recommendToalJson:Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-object v15

    .line 770
    .restart local v2       #code:Ljava/lang/String;
    .restart local v3       #data:Ljava/lang/String;
    .restart local v9       #msg:Ljava/lang/String;
    .restart local v17       #recommendToalJson:Lorg/json/JSONObject;
    :cond_3
    const-string v19, "0"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 771
    const-string v19, "msg"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 772
    const-string v19, "msg"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 773
    .local v16, recommendMsgJson:Lorg/json/JSONObject;
    const-string v18, ""

    .line 774
    .local v18, total:Ljava/lang/String;
    if-eqz v16, :cond_4

    .line 775
    const-string v19, "total"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 776
    const-string v19, "total"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 780
    .end local v16           #recommendMsgJson:Lorg/json/JSONObject;
    .end local v18           #total:Ljava/lang/String;
    :cond_4
    const-string v19, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 781
    const-string v19, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 782
    .local v14, recommendDataJson:Lorg/json/JSONArray;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_2

    .line 783
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_2

    .line 784
    invoke-virtual {v14, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 785
    .local v11, recommendDataItemJson:Lorg/json/JSONObject;
    if-eqz v11, :cond_12

    .line 786
    new-instance v10, Lcom/meizu/video/client/ui/entity/RecommendEntity;

    invoke-direct {v10}, Lcom/meizu/video/client/ui/entity/RecommendEntity;-><init>()V

    .line 787
    .local v10, reEntity:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    const-string v19, "vid"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 788
    const-string v19, "vid"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setVid(Ljava/lang/String;)V

    .line 790
    :cond_5
    const-string v19, "cid"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 791
    const-string v19, "cid"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setCid(Ljava/lang/String;)V

    .line 793
    :cond_6
    const-string v19, "mmsid"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 794
    const-string v19, "mmsid"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setMmsid(Ljava/lang/String;)V

    .line 796
    :cond_7
    const-string v19, "duration"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 797
    const-string v19, "duration"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setDuration(Ljava/lang/String;)V

    .line 799
    :cond_8
    const-string v19, "play_address"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 800
    const-string v19, "play_address"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setPlay_address(Ljava/lang/String;)V

    .line 802
    :cond_9
    const-string v19, "head_duration"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 803
    const-string v19, "head_duration"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setHead_duration(Ljava/lang/String;)V

    .line 805
    :cond_a
    const-string v19, "tail_duration"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 806
    const-string v19, "tail_duration"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setTail_duration(Ljava/lang/String;)V

    .line 808
    :cond_b
    const-string v19, "label"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 809
    const-string v19, "label"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 810
    .local v13, recommendDataItemLabelListJson:Lorg/json/JSONArray;
    if-eqz v13, :cond_11

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_11

    .line 811
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .local v8, lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_10

    .line 813
    invoke-virtual {v13, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 814
    .local v12, recommendDataItemLabelItemJson:Lorg/json/JSONObject;
    if-eqz v12, :cond_f

    .line 815
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 816
    .local v7, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v19, "size"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 817
    const-string v19, "size"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 819
    :cond_c
    const-string v19, "type"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 820
    const-string v19, "type"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 822
    :cond_d
    const-string v19, "value"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 823
    const-string v19, "value"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 825
    :cond_e
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    .end local v7           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 828
    .end local v12           #recommendDataItemLabelItemJson:Lorg/json/JSONObject;
    :cond_10
    invoke-virtual {v10, v8}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 831
    .end local v6           #j:I
    .end local v8           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .end local v13           #recommendDataItemLabelListJson:Lorg/json/JSONArray;
    :cond_11
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    .end local v10           #reEntity:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 838
    .end local v2           #code:Ljava/lang/String;
    .end local v3           #data:Ljava/lang/String;
    .end local v5           #i:I
    .end local v9           #msg:Ljava/lang/String;
    .end local v11           #recommendDataItemJson:Lorg/json/JSONObject;
    .end local v14           #recommendDataJson:Lorg/json/JSONArray;
    .end local v17           #recommendToalJson:Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 839
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static parseRecommendFromLS(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/meizu/video/client/ui/entity/MsgEntity;)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;",
            "Lcom/meizu/video/client/ui/entity/MsgEntity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1791
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-nez p1, :cond_1

    .line 2273
    :cond_0
    :goto_0
    return-void

    .line 1795
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1796
    if-eqz v1, :cond_0

    .line 1797
    const-string v2, "header"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1798
    const-string v2, "header"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1799
    if-eqz v2, :cond_2

    .line 1800
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1801
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 1805
    :cond_2
    const-string v2, "1"

    invoke-virtual/range {p5 .. p5}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1806
    const-string v2, "body"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1807
    const-string v2, "body"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1808
    if-eqz v2, :cond_0

    .line 1809
    const-string v1, "focus_pic"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1810
    const-string v1, "focus_pic"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1811
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_14

    .line 1812
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_14

    const/16 v4, 0x19

    if-ge v1, v4, :cond_14

    .line 1813
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1814
    if-eqz v4, :cond_12

    .line 1815
    new-instance v5, Lcom/meizu/video/client/ui/entity/RecommendEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/RecommendEntity;-><init>()V

    .line 1816
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1817
    const-string v7, "id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1818
    const-string v7, "id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setVid(Ljava/lang/String;)V

    .line 1820
    :cond_3
    const-string v7, "title"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1821
    const-string v7, "title"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    const-string v7, ""

    const-string v8, "title"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1822
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1823
    const-string v8, "-1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1824
    const-string v8, "text-title"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1825
    const-string v8, "title"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1826
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1832
    :cond_4
    const-string v7, "icon_2"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1833
    const-string v7, "icon_2"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_13

    const-string v7, ""

    const-string v8, "icon_2"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 1834
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1835
    const-string v8, "1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1836
    const-string v8, "image"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1837
    const-string v8, "icon_2"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1838
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1852
    :cond_5
    :goto_2
    const-string v7, "score"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1853
    const-string v7, "score"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    const-string v7, ""

    const-string v8, "score"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1854
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1855
    const-string v8, "-1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1856
    const-string v8, "text-image"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1857
    const-string v8, "0"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1858
    const-string v8, "score"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1859
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1863
    :cond_6
    const-string v7, "cid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1864
    const-string v7, "cid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setCid(Ljava/lang/String;)V

    .line 1866
    :cond_7
    const-string v7, "type"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1867
    const-string v7, "type"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setMediaDataType(Ljava/lang/String;)V

    .line 1869
    :cond_8
    const-string v7, "at"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1870
    const-string v7, "at"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setMediaOperaton(Ljava/lang/String;)V

    .line 1881
    :cond_9
    const-string v7, "director"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1882
    const-string v7, "director"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    const-string v7, ""

    const-string v8, "director"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1883
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1884
    const-string v8, "-1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1885
    const-string v8, "text"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1886
    const-string v8, "1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1887
    const-string v8, "director"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1888
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1891
    :cond_a
    const-string v7, "actor"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1892
    const-string v7, "actor"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    const-string v7, ""

    const-string v8, "actor"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1893
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1894
    const-string v8, "-1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1895
    const-string v8, "text"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1896
    const-string v8, "2"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1897
    const-string v8, "actor"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1898
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1901
    :cond_b
    const-string v7, "intro"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1902
    const-string v7, "intro"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setIntro(Ljava/lang/String;)V

    .line 1904
    :cond_c
    const-string v7, "subcate"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1905
    const-string v7, "subcate"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    const-string v7, ""

    const-string v8, "subcate"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 1906
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1907
    const-string v8, "-1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1908
    const-string v8, "text"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1909
    const-string v8, "3"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1910
    const-string v8, "subcate"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1911
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1914
    :cond_d
    const-string v7, "area"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1915
    const-string v7, "area"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    const-string v7, ""

    const-string v8, "area"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 1916
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1917
    const-string v8, "-1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1918
    const-string v8, "text"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1919
    const-string v8, "4"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1920
    const-string v8, "area"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1921
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1924
    :cond_e
    const-string v7, "time_length"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1925
    const-string v7, "time_length"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    const-string v7, ""

    const-string v8, "time_length"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "0"

    const-string v8, "time_length"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 1926
    const-string v7, "time_length"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setDuration(Ljava/lang/String;)V

    .line 1927
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1928
    const-string v8, "-1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1929
    const-string v8, "text"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1930
    const-string v8, "5"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1931
    const-string v8, "time_length"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/meizu/video/client/util/CommonUtil;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1932
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1941
    :cond_f
    const-string v7, "rcompany"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1942
    const-string v7, "rcompany"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    const-string v7, ""

    const-string v8, "rcompany"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 1943
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1944
    const-string v8, "-1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1945
    const-string v8, "text"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1946
    const-string v8, "7"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1947
    const-string v8, "rcompany"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1948
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1951
    :cond_10
    const-string v7, "ctime"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1952
    const-string v7, "ctime"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_11

    const-string v7, ""

    const-string v8, "ctime"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 1953
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1954
    const-string v8, "-1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1955
    const-string v8, "text"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1956
    const-string v8, "6"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1957
    const-string v8, "ctime"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1958
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2000
    :cond_11
    invoke-virtual {v5, v6}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 2001
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1840
    :cond_13
    const-string v7, "icon"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1841
    const-string v7, "icon"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string v7, ""

    const-string v8, "icon"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1842
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1843
    const-string v8, "1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1844
    const-string v8, "image"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1845
    const-string v8, "icon"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1846
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 2270
    :catch_0
    move-exception v1

    .line 2271
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 2007
    :cond_14
    :try_start_1
    const-string v1, "block"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2008
    const-string v1, "block"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 2009
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2010
    const/4 v3, 0x0

    .line 2011
    const/4 v2, 0x0

    .line 2012
    const/4 v1, 0x0

    move v6, v1

    move v1, v2

    move v2, v3

    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v6, v3, :cond_0

    .line 2013
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 2014
    if-eqz v8, :cond_2b

    .line 2015
    const-string v3, ""

    .line 2016
    const-string v4, "cname"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 2017
    const-string v3, "cname"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .line 2022
    :goto_4
    const-string v3, ""

    .line 2023
    const-string v4, "cate"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2024
    const-string v3, "cate"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2025
    const-string v4, "\u8ddf\u64ad\u5267\u573a"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "\u70ed\u64ad\u5267\u573a"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "\u70ed\u95e8\u7535\u5f71"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2026
    :cond_15
    const-string v4, "\u8ddf\u64ad\u5267\u573a"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    const-string v4, "\u70ed\u64ad\u5267\u573a"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    const-string v4, "\u70ed\u95e8\u7535\u5f71"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move-object v4, v3

    .line 2047
    :goto_5
    const-string v3, "video"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 2048
    const-string v3, "video"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 2049
    if-eqz v8, :cond_2b

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2b

    .line 2050
    const-string v3, "\u8ddf\u64ad\u5267\u573a"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2051
    add-int/lit8 v2, v2, 0x1

    .line 2052
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 2064
    :cond_16
    :goto_6
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_2b

    const/16 v9, 0x8

    if-ge v3, v9, :cond_2b

    .line 2065
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 2066
    if-eqz v9, :cond_29

    .line 2067
    new-instance v10, Lcom/meizu/video/client/ui/entity/RecommendEntity;

    invoke-direct {v10}, Lcom/meizu/video/client/ui/entity/RecommendEntity;-><init>()V

    .line 2068
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2069
    const-string v12, "cid"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 2070
    const-string v12, "cid"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "5"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17

    const-string v12, "cid"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "4"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_29

    .line 2071
    :cond_17
    const-string v12, "cid"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setCid(Ljava/lang/String;)V

    .line 2076
    :cond_18
    const-string v12, "id"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 2077
    const-string v12, "id"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setVid(Ljava/lang/String;)V

    .line 2079
    :cond_19
    const-string v12, "title"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 2080
    const-string v12, "title"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1a

    const-string v12, ""

    const-string v13, "title"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1a

    .line 2081
    new-instance v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2082
    const-string v13, "-1"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 2083
    const-string v13, "text-title"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2084
    const-string v13, "title"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2085
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2091
    :cond_1a
    const-string v12, "icon"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 2092
    const-string v12, "icon"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1b

    const-string v12, ""

    const-string v13, "icon"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1b

    .line 2093
    new-instance v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2094
    const-string v13, "0"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 2095
    const-string v13, "image"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2096
    const-string v13, "icon"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2097
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2100
    :cond_1b
    const-string v12, "score"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 2101
    const-string v12, "score"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1c

    const-string v12, ""

    const-string v13, "score"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1c

    .line 2102
    new-instance v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2103
    const-string v13, "-1"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 2104
    const-string v13, "text-image"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2105
    const-string v13, "0"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2106
    const-string v13, "score"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2107
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2111
    :cond_1c
    const-string v12, "type"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 2112
    const-string v12, "type"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setMediaDataType(Ljava/lang/String;)V

    .line 2114
    :cond_1d
    const-string v12, "at"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 2115
    const-string v12, "at"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setMediaOperaton(Ljava/lang/String;)V

    .line 2126
    :cond_1e
    const-string v12, "director"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 2127
    const-string v12, "director"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1f

    const-string v12, ""

    const-string v13, "director"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1f

    .line 2128
    new-instance v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2129
    const-string v13, "-1"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 2130
    const-string v13, "text"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2131
    const-string v13, "1"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2132
    const-string v13, "director"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2133
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2136
    :cond_1f
    const-string v12, "actor"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 2137
    const-string v12, "actor"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_20

    const-string v12, ""

    const-string v13, "actor"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_20

    .line 2138
    new-instance v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2139
    const-string v13, "-1"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 2140
    const-string v13, "text"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2141
    const-string v13, "2"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2142
    const-string v13, "actor"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2143
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2146
    :cond_20
    const-string v12, "intro"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 2147
    const-string v12, "intro"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setIntro(Ljava/lang/String;)V

    .line 2149
    :cond_21
    const-string v12, "subcate"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 2150
    const-string v12, "subcate"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_22

    const-string v12, ""

    const-string v13, "subcate"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_22

    .line 2151
    new-instance v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2152
    const-string v13, "-1"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 2153
    const-string v13, "text"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2154
    const-string v13, "3"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2155
    const-string v13, "subcate"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2156
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2159
    :cond_22
    const-string v12, "area"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 2160
    const-string v12, "area"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_23

    const-string v12, ""

    const-string v13, "area"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_23

    .line 2161
    new-instance v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2162
    const-string v13, "-1"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 2163
    const-string v13, "text"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2164
    const-string v13, "4"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2165
    const-string v13, "area"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2166
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2169
    :cond_23
    const-string v12, "time_length"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_24

    .line 2170
    const-string v12, "time_length"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_24

    const-string v12, ""

    const-string v13, "time_length"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_24

    const-string v12, "0"

    const-string v13, "time_length"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_24

    .line 2171
    const-string v12, "time_length"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setDuration(Ljava/lang/String;)V

    .line 2172
    new-instance v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2173
    const-string v13, "-1"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 2174
    const-string v13, "text"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2175
    const-string v13, "5"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2176
    const-string v13, "time_length"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/meizu/video/client/util/CommonUtil;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2177
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2186
    :cond_24
    const-string v12, "rcompany"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_25

    .line 2187
    const-string v12, "rcompany"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_25

    const-string v12, ""

    const-string v13, "rcompany"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_25

    .line 2188
    new-instance v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2189
    const-string v13, "-1"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 2190
    const-string v13, "text"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2191
    const-string v13, "7"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2192
    const-string v13, "rcompany"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2196
    :cond_25
    const-string v12, "ctime"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_26

    .line 2197
    const-string v12, "ctime"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_26

    const-string v12, ""

    const-string v13, "ctime"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_26

    .line 2198
    new-instance v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2199
    const-string v13, "-1"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 2200
    const-string v13, "text"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2201
    const-string v13, "6"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2202
    const-string v13, "ctime"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2203
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2218
    :cond_26
    const-string v12, "stamp"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_27

    .line 2221
    :cond_27
    const-string v12, "tags"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 2233
    :cond_28
    invoke-virtual {v10, v11}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 2235
    const-string v9, "\u8ddf\u64ad\u5267\u573a"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 2236
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2064
    :cond_29
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 2028
    :cond_2a
    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2029
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2d

    .line 2012
    :cond_2b
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto/16 :goto_3

    .line 2032
    :cond_2c
    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2033
    const/4 v4, 0x1

    if-eq v1, v4, :cond_2b

    :cond_2d
    move-object v4, v3

    goto/16 :goto_5

    .line 2053
    :cond_2e
    const-string v3, "\u70ed\u64ad\u5267\u573a"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 2054
    add-int/lit8 v2, v2, 0x1

    .line 2055
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_6

    .line 2056
    :cond_2f
    const-string v3, "\u70ed\u95e8\u7535\u5f71"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2057
    add-int/lit8 v1, v1, 0x1

    .line 2058
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_6

    .line 2059
    :cond_30
    const-string v3, "5"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2060
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 2061
    :cond_31
    const-string v3, "4"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2062
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 2237
    :cond_32
    const-string v9, "\u70ed\u64ad\u5267\u573a"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 2238
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2239
    :cond_33
    const-string v9, "\u70ed\u95e8\u7535\u5f71"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 2240
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2241
    :cond_34
    const-string v9, "5"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 2242
    const/4 v9, 0x1

    if-ne v2, v9, :cond_35

    .line 2243
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 2244
    :cond_35
    const/4 v9, 0x2

    if-ne v2, v9, :cond_29

    .line 2245
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 2247
    :cond_36
    const-string v9, "4"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 2248
    const/4 v9, 0x1

    if-ne v1, v9, :cond_29

    .line 2249
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    :cond_37
    move-object v5, v3

    goto/16 :goto_4
.end method

.method public static parseSearchDetail(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 23
    .parameter "searchJsonString"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 43
    .local p1, msgListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/MsgEntity;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v17, searchListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/SearchEntity;>;"
    :try_start_0
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    .local v21, searchToalJson:Lorg/json/JSONObject;
    if-eqz v21, :cond_2

    .line 47
    const-string v2, ""

    .line 48
    .local v2, code:Ljava/lang/String;
    const-string v22, "code"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 49
    const-string v22, "code"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    :cond_0
    const-string v9, ""

    .line 52
    .local v9, msg:Ljava/lang/String;
    const-string v3, ""

    .line 53
    .local v3, data:Ljava/lang/String;
    const-string v22, "-1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 54
    const-string v22, "msg"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 55
    const-string v22, "msg"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 57
    :cond_1
    const-string v22, "data"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 58
    const-string v22, "data"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    .end local v2           #code:Ljava/lang/String;
    .end local v3           #data:Ljava/lang/String;
    .end local v9           #msg:Ljava/lang/String;
    .end local v21           #searchToalJson:Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-object v17

    .line 60
    .restart local v2       #code:Ljava/lang/String;
    .restart local v3       #data:Ljava/lang/String;
    .restart local v9       #msg:Ljava/lang/String;
    .restart local v21       #searchToalJson:Lorg/json/JSONObject;
    :cond_3
    const-string v22, "0"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 61
    const-string v22, "msg"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 62
    const-string v22, "msg"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 63
    .local v18, searchMsgJson:Lorg/json/JSONObject;
    if-eqz v18, :cond_8

    .line 64
    const-string v22, "total"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 65
    const-string v22, "total"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 66
    .local v20, searchMsgTotalJson:Lorg/json/JSONArray;
    if-eqz v20, :cond_8

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v22

    if-lez v22, :cond_8

    .line 67
    if-nez p1, :cond_4

    .line 68
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .end local p1           #msgListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/MsgEntity;>;"
    .local v11, msgListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/MsgEntity;>;"
    move-object/from16 p1, v11

    .line 70
    .end local v11           #msgListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/MsgEntity;>;"
    .restart local p1       #msgListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/MsgEntity;>;"
    :cond_4
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v5, v0, :cond_8

    .line 71
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 72
    .local v19, searchMsgTotalItemJson:Lorg/json/JSONObject;
    if-eqz v19, :cond_7

    .line 73
    new-instance v10, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct {v10}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    .line 74
    .local v10, msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    const-string v22, "key"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 75
    const-string v22, "key"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 77
    :cond_5
    const-string v22, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 78
    const-string v22, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setValue(Ljava/lang/String;)V

    .line 80
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v10           #msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 87
    .end local v5           #i:I
    .end local v18           #searchMsgJson:Lorg/json/JSONObject;
    .end local v19           #searchMsgTotalItemJson:Lorg/json/JSONObject;
    .end local v20           #searchMsgTotalJson:Lorg/json/JSONArray;
    :cond_8
    const-string v22, "data"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 88
    const-string v22, "data"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 89
    .local v15, searchDataJson:Lorg/json/JSONArray;
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v22

    if-lez v22, :cond_2

    .line 90
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v5, v0, :cond_2

    .line 91
    invoke-virtual {v15, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 92
    .local v12, searchDataItemJson:Lorg/json/JSONObject;
    if-eqz v12, :cond_17

    .line 93
    new-instance v16, Lcom/meizu/video/client/ui/entity/SearchEntity;

    invoke-direct/range {v16 .. v16}, Lcom/meizu/video/client/ui/entity/SearchEntity;-><init>()V

    .line 94
    .local v16, searchEntity:Lcom/meizu/video/client/ui/entity/SearchEntity;
    const-string v22, "vid"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 95
    const-string v22, "vid"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setVid(Ljava/lang/String;)V

    .line 97
    :cond_9
    const-string v22, "cid"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 98
    const-string v22, "cid"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setCid(Ljava/lang/String;)V

    .line 100
    :cond_a
    const-string v22, "mmsid"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 101
    const-string v22, "mmsid"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setMmsid(Ljava/lang/String;)V

    .line 103
    :cond_b
    const-string v22, "duration"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 104
    const-string v22, "duration"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setDuration(Ljava/lang/String;)V

    .line 106
    :cond_c
    const-string v22, "head_duration"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 107
    const-string v22, "head_duration"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setHead_duration(Ljava/lang/String;)V

    .line 109
    :cond_d
    const-string v22, "tail_duration"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 110
    const-string v22, "tail_duration"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setTail_duration(Ljava/lang/String;)V

    .line 112
    :cond_e
    const-string v22, "play_address"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 113
    const-string v22, "play_address"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setPlay_address(Ljava/lang/String;)V

    .line 116
    :cond_f
    const-string v22, "label"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 117
    const-string v22, "label"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 118
    .local v14, searchDataItemLabelListJson:Lorg/json/JSONArray;
    if-eqz v14, :cond_16

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v22

    if-lez v22, :cond_16

    .line 119
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v8, lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    const/4 v6, 0x0

    .local v6, j:I
    :goto_3
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v6, v0, :cond_15

    .line 121
    invoke-virtual {v14, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 122
    .local v13, searchDataItemLabelItemJson:Lorg/json/JSONObject;
    if-eqz v13, :cond_14

    .line 123
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 124
    .local v7, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v22, "size"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 125
    const-string v22, "size"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 127
    :cond_10
    const-string v22, "type"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 128
    const-string v22, "type"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 130
    :cond_11
    const-string v22, "key"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 131
    const-string v22, "key"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 133
    :cond_12
    const-string v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 134
    const-string v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 136
    :cond_13
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v7           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 139
    .end local v13           #searchDataItemLabelItemJson:Lorg/json/JSONObject;
    :cond_15
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 142
    .end local v6           #j:I
    .end local v8           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .end local v14           #searchDataItemLabelListJson:Lorg/json/JSONArray;
    :cond_16
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v16           #searchEntity:Lcom/meizu/video/client/ui/entity/SearchEntity;
    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 149
    .end local v2           #code:Ljava/lang/String;
    .end local v3           #data:Ljava/lang/String;
    .end local v5           #i:I
    .end local v9           #msg:Ljava/lang/String;
    .end local v12           #searchDataItemJson:Lorg/json/JSONObject;
    .end local v15           #searchDataJson:Lorg/json/JSONArray;
    .end local v21           #searchToalJson:Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 150
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static parseSearchFromLS(Ljava/lang/String;Ljava/util/ArrayList;Lcom/meizu/video/client/ui/entity/MsgEntity;Ljava/util/ArrayList;)V
    .locals 19
    .parameter "searchJsonString"
    .parameter
    .parameter "msgEntity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/SearchEntity;",
            ">;",
            "Lcom/meizu/video/client/ui/entity/MsgEntity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/MsgEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1539
    .local p1, searchListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/SearchEntity;>;"
    .local p3, typeNumListMsgEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/MsgEntity;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1779
    :cond_0
    :goto_0
    return-void

    .line 1543
    :cond_1
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1544
    .local v12, searchToalJson:Lorg/json/JSONObject;
    if-eqz v12, :cond_0

    .line 1545
    const-string v17, "header"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1546
    const-string v17, "header"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 1547
    .local v9, searchHeaderJson:Lorg/json/JSONObject;
    if-eqz v9, :cond_2

    .line 1548
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1549
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 1553
    .end local v9           #searchHeaderJson:Lorg/json/JSONObject;
    :cond_2
    const-string v17, "1"

    invoke-virtual/range {p2 .. p2}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1554
    const-string v17, "body"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1555
    const-string v17, "body"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1556
    .local v7, searchBodyJson:Lorg/json/JSONObject;
    if-eqz v7, :cond_0

    .line 1558
    const/4 v13, 0x0

    .line 1559
    .local v13, searchTotal:I
    const-string v17, "total"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-eqz v17, :cond_3

    .line 1561
    :try_start_1
    const-string v17, "total"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1562
    const-string v17, "total"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setValue(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1567
    :cond_3
    :goto_1
    if-lez v13, :cond_0

    .line 1568
    :try_start_2
    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 1569
    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 1570
    .local v11, searchListJson:Lorg/json/JSONArray;
    if-eqz v11, :cond_14

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_14

    .line 1571
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v3, v0, :cond_14

    .line 1572
    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 1573
    .local v10, searchItemJson:Lorg/json/JSONObject;
    if-eqz v10, :cond_13

    .line 1574
    new-instance v8, Lcom/meizu/video/client/ui/entity/SearchEntity;

    invoke-direct {v8}, Lcom/meizu/video/client/ui/entity/SearchEntity;-><init>()V

    .line 1575
    .local v8, searchEntity:Lcom/meizu/video/client/ui/entity/SearchEntity;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1576
    .local v6, lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    const-string v17, "cid"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1581
    const-string v17, "cid"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setCid(Ljava/lang/String;)V

    .line 1584
    :cond_4
    const-string v17, "id"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1585
    const-string v17, "id"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setVid(Ljava/lang/String;)V

    .line 1587
    :cond_5
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1588
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_6

    const-string v17, ""

    const-string v18, "title"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 1589
    new-instance v5, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1590
    .local v5, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1591
    const-string v17, "text-title"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1592
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1593
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1599
    .end local v5           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_6
    const-string v17, "icon"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1600
    const-string v17, "icon"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_7

    const-string v17, ""

    const-string v18, "icon"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 1601
    new-instance v5, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1602
    .restart local v5       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1603
    const-string v17, "image"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1604
    const-string v17, "icon"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1605
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1608
    .end local v5           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_7
    const-string v17, "score"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1609
    const-string v17, "score"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_8

    const-string v17, ""

    const-string v18, "score"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 1610
    new-instance v5, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1611
    .restart local v5       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v17, "-1"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1612
    const-string v17, "text-image"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1613
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1614
    const-string v17, "score"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1619
    .end local v5           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_8
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1620
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setMediaDataType(Ljava/lang/String;)V

    .line 1622
    :cond_9
    const-string v17, "at"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1623
    const-string v17, "at"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setMediaOperaton(Ljava/lang/String;)V

    .line 1634
    :cond_a
    const-string v17, "director"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1635
    const-string v17, "director"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_b

    const-string v17, ""

    const-string v18, "director"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 1636
    new-instance v5, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1637
    .restart local v5       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v17, "-1"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1638
    const-string v17, "text"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1639
    const-string v17, "1"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1640
    const-string v17, "director"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1641
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1644
    .end local v5           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_b
    const-string v17, "actor"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1645
    const-string v17, "actor"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_c

    const-string v17, ""

    const-string v18, "actor"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 1646
    new-instance v5, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1647
    .restart local v5       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v17, "-1"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1648
    const-string v17, "text"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1649
    const-string v17, "2"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1650
    const-string v17, "actor"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1651
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1654
    .end local v5           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_c
    const-string v17, "intro"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 1655
    const-string v17, "intro"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setIntro(Ljava/lang/String;)V

    .line 1657
    :cond_d
    const-string v17, "subcate"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1658
    const-string v17, "subcate"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_e

    const-string v17, ""

    const-string v18, "subcate"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    .line 1659
    new-instance v5, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1660
    .restart local v5       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v17, "-1"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1661
    const-string v17, "text"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1662
    const-string v17, "3"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1663
    const-string v17, "subcate"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1664
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1667
    .end local v5           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_e
    const-string v17, "area"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1668
    const-string v17, "area"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_f

    const-string v17, ""

    const-string v18, "area"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_f

    .line 1669
    new-instance v5, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1670
    .restart local v5       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v17, "-1"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1671
    const-string v17, "text"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1672
    const-string v17, "4"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1673
    const-string v17, "area"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1674
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1677
    .end local v5           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_f
    const-string v17, "time_length"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1678
    const-string v17, "time_length"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_10

    const-string v17, ""

    const-string v18, "time_length"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_10

    const-string v17, "0"

    const-string v18, "time_length"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_10

    .line 1679
    const-string v17, "time_length"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setDuration(Ljava/lang/String;)V

    .line 1680
    new-instance v5, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1681
    .restart local v5       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v17, "-1"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1682
    const-string v17, "text"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1683
    const-string v17, "5"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1684
    const-string v17, "time_length"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/meizu/video/client/util/CommonUtil;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1685
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1694
    .end local v5           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_10
    const-string v17, "rcompany"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 1695
    const-string v17, "rcompany"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_11

    const-string v17, ""

    const-string v18, "rcompany"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_11

    .line 1696
    new-instance v5, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1697
    .restart local v5       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v17, "-1"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1698
    const-string v17, "text"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1699
    const-string v17, "7"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1700
    const-string v17, "rcompany"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1701
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1704
    .end local v5           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_11
    const-string v17, "ctime"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 1705
    const-string v17, "ctime"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_12

    const-string v17, ""

    const-string v18, "ctime"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_12

    .line 1706
    new-instance v5, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1707
    .restart local v5       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v17, "-1"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1708
    const-string v17, "text"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1709
    const-string v17, "6"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1710
    const-string v17, "ctime"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1711
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1732
    .end local v5           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_12
    invoke-virtual {v8, v6}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 1733
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1571
    .end local v6           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .end local v8           #searchEntity:Lcom/meizu/video/client/ui/entity/SearchEntity;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 1739
    .end local v3           #i:I
    .end local v10           #searchItemJson:Lorg/json/JSONObject;
    .end local v11           #searchListJson:Lorg/json/JSONArray;
    :cond_14
    const-string v17, "subNav"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1740
    const-string v17, "subNav"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 1741
    .local v15, searchTypeNumTotalJson:Lorg/json/JSONArray;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 1742
    const/4 v4, 0x0

    .local v4, j:I
    :goto_3
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_0

    .line 1743
    invoke-virtual {v15, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 1744
    .local v14, searchTypeNumItemJson:Lorg/json/JSONObject;
    if-eqz v14, :cond_17

    .line 1745
    new-instance v16, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct/range {v16 .. v16}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    .line 1746
    .local v16, typeNumItemMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    const-string v17, "cname"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 1747
    const-string v17, "cname"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 1749
    :cond_15
    const-string v17, "num"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 1750
    const-string v17, "num"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setValue(Ljava/lang/String;)V

    .line 1758
    :cond_16
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1742
    .end local v16           #typeNumItemMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1776
    .end local v4           #j:I
    .end local v7           #searchBodyJson:Lorg/json/JSONObject;
    .end local v12           #searchToalJson:Lorg/json/JSONObject;
    .end local v13           #searchTotal:I
    .end local v14           #searchTypeNumItemJson:Lorg/json/JSONObject;
    .end local v15           #searchTypeNumTotalJson:Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 1777
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 1563
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v7       #searchBodyJson:Lorg/json/JSONObject;
    .restart local v12       #searchToalJson:Lorg/json/JSONObject;
    .restart local v13       #searchTotal:I
    :catch_1
    move-exception v17

    goto/16 :goto_1
.end method

.method public static parseTypeAreaYearFromLs(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/meizu/video/client/ui/entity/MsgEntity;Ljava/util/ArrayList;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;",
            ">;",
            "Lcom/meizu/video/client/ui/entity/MsgEntity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2288
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2494
    :cond_0
    :goto_0
    return-void

    .line 2292
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2293
    if-eqz v1, :cond_0

    .line 2294
    const-string v2, "header"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2295
    const-string v2, "header"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2296
    if-eqz v2, :cond_2

    .line 2297
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2298
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 2302
    :cond_2
    const-string v2, "1"

    invoke-virtual/range {p5 .. p5}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2303
    const-string v2, "body"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2304
    const-string v2, "body"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2305
    if-eqz v3, :cond_0

    .line 2306
    const-string v1, "cate"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2307
    const-string v1, "cate"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2308
    if-eqz v4, :cond_9

    .line 2309
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    .line 2310
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2311
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 2312
    if-eqz v5, :cond_8

    .line 2313
    new-instance v6, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;

    invoke-direct {v6}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;-><init>()V

    .line 2314
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setCid(Ljava/lang/String;)V

    .line 2315
    const-string v1, "name"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2316
    const-string v1, "name"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setName(Ljava/lang/String;)V

    .line 2318
    :cond_3
    const-string v1, "sub"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2319
    const-string v1, "sub"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 2320
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 2321
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2322
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_6

    .line 2323
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 2324
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2325
    if-eqz v8, :cond_5

    .line 2326
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2327
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2329
    :cond_4
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2330
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2333
    :cond_5
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2322
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2335
    :cond_6
    invoke-virtual {v6, v7}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setTypeTitem1ListEntity(Ljava/util/ArrayList;)V

    .line 2338
    :cond_7
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2309
    :cond_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    .line 2344
    :cond_9
    const-string v1, "area"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2345
    const-string v1, "area"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2346
    if-eqz v4, :cond_f

    .line 2347
    const/4 v1, 0x0

    move v2, v1

    :goto_3
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_f

    .line 2348
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2349
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 2350
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_e

    .line 2351
    new-instance v6, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;

    invoke-direct {v6}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;-><init>()V

    .line 2352
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setCid(Ljava/lang/String;)V

    .line 2353
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2354
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_d

    .line 2355
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 2356
    if-eqz v8, :cond_c

    .line 2357
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2358
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2359
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2361
    :cond_a
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2362
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2364
    :cond_b
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2354
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2367
    :cond_d
    invoke-virtual {v6, v7}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setTypeTitem1ListEntity(Ljava/util/ArrayList;)V

    .line 2368
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2347
    :cond_e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_3

    .line 2374
    :cond_f
    const-string v1, "year"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2375
    const-string v1, "year"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2376
    if-eqz v4, :cond_15

    .line 2377
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_15

    .line 2378
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2379
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 2380
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_14

    .line 2381
    new-instance v6, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;

    invoke-direct {v6}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;-><init>()V

    .line 2382
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setCid(Ljava/lang/String;)V

    .line 2383
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2384
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_13

    .line 2385
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 2386
    if-eqz v8, :cond_12

    .line 2387
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2388
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 2389
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2391
    :cond_10
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 2392
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2394
    :cond_11
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2384
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2397
    :cond_13
    invoke-virtual {v6, v7}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setTypeTitem1ListEntity(Ljava/util/ArrayList;)V

    .line 2398
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2377
    :cond_14
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_5

    .line 2404
    :cond_15
    const-string v1, "order"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2405
    const-string v1, "order"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2406
    if-eqz v3, :cond_0

    .line 2407
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 2408
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2409
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2410
    if-eqz v4, :cond_25

    .line 2411
    new-instance v5, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;-><init>()V

    .line 2412
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setCid(Ljava/lang/String;)V

    .line 2413
    const-string v1, "album"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2414
    const-string v1, "album"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 2415
    if-eqz v6, :cond_1a

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1a

    .line 2416
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2417
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_19

    .line 2418
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 2419
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2420
    if-eqz v8, :cond_18

    .line 2421
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 2422
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2424
    :cond_16
    const-string v10, "shortname"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 2425
    const-string v10, "shortname"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2427
    :cond_17
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 2428
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2431
    :cond_18
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2417
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2433
    :cond_19
    invoke-virtual {v5, v7}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setTypeTitem1ListEntity(Ljava/util/ArrayList;)V

    .line 2436
    :cond_1a
    const-string v1, "vrsvideo"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2437
    const-string v1, "vrsvideo"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 2438
    if-eqz v6, :cond_1f

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1f

    .line 2439
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2440
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_1e

    .line 2441
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 2442
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2443
    if-eqz v8, :cond_1d

    .line 2444
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 2445
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2447
    :cond_1b
    const-string v10, "shortname"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 2448
    const-string v10, "shortname"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2450
    :cond_1c
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 2451
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2454
    :cond_1d
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2440
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2456
    :cond_1e
    invoke-virtual {v5, v7}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setTypeTitem2ListEntity(Ljava/util/ArrayList;)V

    .line 2459
    :cond_1f
    const-string v1, "ptvvideo"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2460
    const-string v1, "ptvvideo"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2461
    if-eqz v4, :cond_24

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_24

    .line 2462
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2463
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_23

    .line 2464
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 2465
    new-instance v8, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v8}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2466
    if-eqz v7, :cond_22

    .line 2467
    const-string v9, "id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 2468
    const-string v9, "id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2470
    :cond_20
    const-string v9, "shortname"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 2471
    const-string v9, "shortname"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2473
    :cond_21
    const-string v9, "name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 2474
    const-string v9, "name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2477
    :cond_22
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2463
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2479
    :cond_23
    invoke-virtual {v5, v6}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setTypeTitem3ListEntity(Ljava/util/ArrayList;)V

    .line 2482
    :cond_24
    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2407
    :cond_25
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_7

    .line 2492
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

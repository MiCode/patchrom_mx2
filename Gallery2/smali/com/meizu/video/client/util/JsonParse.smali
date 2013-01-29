.class public Lcom/meizu/video/client/util/JsonParse;
.super Ljava/lang/Object;
.source "JsonParse.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "JsonParse"

    sput-object v0, Lcom/meizu/video/client/util/JsonParse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannelImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2500
    const-string v9, ""

    .line 2502
    const-string v0, "86"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2503
    const/4 v8, 0x2

    .line 2505
    :goto_0
    const-string v1, "0"

    const-string v2, "0"

    const-string v3, "0"

    const-string v4, "date"

    const-string v5, "0"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/meizu/video/client/common/UrlSettings;->getLSChannelProgramUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 2507
    invoke-static {v0}, Lcom/meizu/video/client/util/HttpUtil;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2508
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2510
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2511
    const-string v0, "body"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2512
    const-string v0, "body"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2513
    if-eqz v0, :cond_2

    .line 2514
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2515
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2517
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 2518
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v6, v1, :cond_2

    .line 2519
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 2521
    if-eqz v1, :cond_1

    .line 2522
    const-string v2, "icon"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2523
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

    .line 2526
    const-string v0, "icon"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    move-object v9, v0

    .line 2541
    :cond_0
    :goto_3
    return-object v9

    .line 2518
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2536
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
    .line 668
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v6, channelListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelEntity;>;"
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 671
    .local v8, channelToalJson:Lorg/json/JSONObject;
    if-eqz v8, :cond_2

    .line 672
    const-string v9, ""

    .line 673
    .local v9, code:Ljava/lang/String;
    const-string v19, "code"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 674
    const-string v19, "code"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 676
    :cond_0
    const-string v16, ""

    .line 677
    .local v16, msg:Ljava/lang/String;
    const-string v10, ""

    .line 678
    .local v10, data:Ljava/lang/String;
    const-string v19, "-1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 679
    const-string v19, "msg"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 680
    const-string v19, "msg"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 682
    :cond_1
    const-string v19, "data"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 683
    const-string v19, "data"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 745
    .end local v8           #channelToalJson:Lorg/json/JSONObject;
    .end local v9           #code:Ljava/lang/String;
    .end local v10           #data:Ljava/lang/String;
    .end local v16           #msg:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v6

    .line 685
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

    .line 686
    const-string v19, "msg"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 687
    const-string v19, "msg"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 688
    .local v7, channelMsgJson:Lorg/json/JSONObject;
    const-string v18, ""

    .line 689
    .local v18, total:Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 690
    const-string v19, "total"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 691
    const-string v19, "total"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 695
    .end local v7           #channelMsgJson:Lorg/json/JSONObject;
    .end local v18           #total:Ljava/lang/String;
    :cond_4
    const-string v19, "data"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 696
    const-string v19, "data"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 697
    .local v4, channelDataJson:Lorg/json/JSONArray;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_2

    .line 698
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    .line 699
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 700
    .local v2, channelDataItemJson:Lorg/json/JSONObject;
    if-eqz v2, :cond_e

    .line 701
    new-instance v5, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/ChanelEntity;-><init>()V

    .line 702
    .local v5, channelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    const-string v19, "title"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 703
    const-string v19, "title"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->setTitle(Ljava/lang/String;)V

    .line 705
    :cond_5
    const-string v19, "type"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 706
    const-string v19, "type"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->setType(Ljava/lang/String;)V

    .line 708
    :cond_6
    const-string v19, "ID"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 709
    const-string v19, "ID"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->setId(Ljava/lang/String;)V

    .line 711
    :cond_7
    const-string v19, "label"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 712
    const-string v19, "label"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 713
    .local v3, channelDataItemLabelListJson:Lorg/json/JSONArray;
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_d

    .line 714
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 715
    .local v15, lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    const/4 v13, 0x0

    .local v13, j:I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v13, v0, :cond_c

    .line 716
    invoke-virtual {v3, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 717
    .local v17, recommendDataItemLabelItemJson:Lorg/json/JSONObject;
    if-eqz v17, :cond_b

    .line 718
    new-instance v14, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v14}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 719
    .local v14, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v19, "size"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 720
    const-string v19, "size"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 722
    :cond_8
    const-string v19, "type"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 723
    const-string v19, "type"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 725
    :cond_9
    const-string v19, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 726
    const-string v19, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 728
    :cond_a
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    .end local v14           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 731
    .end local v17           #recommendDataItemLabelItemJson:Lorg/json/JSONObject;
    :cond_c
    invoke-virtual {v5, v15}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 734
    .end local v3           #channelDataItemLabelListJson:Lorg/json/JSONArray;
    .end local v13           #j:I
    .end local v15           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_d
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    .end local v5           #channelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 741
    .end local v2           #channelDataItemJson:Lorg/json/JSONObject;
    .end local v4           #channelDataJson:Lorg/json/JSONArray;
    .end local v8           #channelToalJson:Lorg/json/JSONObject;
    .end local v9           #code:Ljava/lang/String;
    .end local v10           #data:Ljava/lang/String;
    .end local v12           #i:I
    .end local v16           #msg:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 742
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
    .line 523
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v7, channelDetailListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;>;"
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 526
    .local v11, channelDetailToalJson:Lorg/json/JSONObject;
    if-eqz v11, :cond_2

    .line 527
    const-string v14, ""

    .line 528
    .local v14, code:Ljava/lang/String;
    const-string v27, "code"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 529
    const-string v27, "code"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 531
    :cond_0
    const-string v21, ""

    .line 532
    .local v21, msg:Ljava/lang/String;
    const-string v15, ""

    .line 533
    .local v15, data:Ljava/lang/String;
    const-string v27, "-1"

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 534
    const-string v27, "msg"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 535
    const-string v27, "msg"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 537
    :cond_1
    const-string v27, "data"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 538
    const-string v27, "data"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 658
    .end local v11           #channelDetailToalJson:Lorg/json/JSONObject;
    .end local v14           #code:Ljava/lang/String;
    .end local v15           #data:Ljava/lang/String;
    .end local v21           #msg:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v7

    .line 540
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

    .line 541
    const-string v27, "msg"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 542
    const-string v27, "msg"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 543
    .local v8, channelDetailMsgJson:Lorg/json/JSONObject;
    const-string v25, ""

    .line 544
    .local v25, total:Ljava/lang/String;
    const-string v26, ""

    .line 545
    .local v26, type:Ljava/lang/String;
    if-eqz v8, :cond_d

    .line 546
    const-string v27, "total"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 547
    const-string v27, "total"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 549
    :cond_4
    const-string v27, "type"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 550
    const-string v27, "type"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 552
    :cond_5
    const-string v27, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_d

    .line 553
    const-string v27, "type"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 554
    .local v9, channelDetailMsgTypeJson:Lorg/json/JSONArray;
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v27

    if-lez v27, :cond_d

    .line 555
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v23, msgExpandListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/MsgExpandEntity;>;"
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_d

    .line 557
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 558
    .local v12, channelMsgTypeItemJson:Lorg/json/JSONObject;
    if-eqz v12, :cond_c

    .line 559
    new-instance v22, Lcom/meizu/video/client/ui/entity/MsgExpandEntity;

    invoke-direct/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/MsgExpandEntity;-><init>()V

    .line 560
    .local v22, msgExpandEntity:Lcom/meizu/video/client/ui/entity/MsgExpandEntity;
    const-string v27, "level"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 561
    const-string v27, "level"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgExpandEntity;->setLevel(Ljava/lang/String;)V

    .line 563
    :cond_6
    const-string v27, "key"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 564
    const-string v27, "key"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgExpandEntity;->setKey(Ljava/lang/String;)V

    .line 566
    :cond_7
    const-string v27, "select"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 567
    const-string v27, "select"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgExpandEntity;->setSelect(Ljava/lang/String;)V

    .line 569
    :cond_8
    const-string v27, "value"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 570
    const-string v27, "value"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 571
    .local v10, channelDetailMsgTypeValueJson:Lorg/json/JSONArray;
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v27

    if-lez v27, :cond_b

    .line 572
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v24, subValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .local v18, j:I
    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    .line 574
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 575
    .local v13, channelMsgTypeValueItemJson:Lorg/json/JSONObject;
    if-eqz v13, :cond_9

    .line 576
    const-string v27, "subvalue"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 577
    const-string v27, "subvalue"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 581
    .end local v13           #channelMsgTypeValueItemJson:Lorg/json/JSONObject;
    :cond_a
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgExpandEntity;->setValueExpand(Ljava/util/ArrayList;)V

    .line 584
    .end local v10           #channelDetailMsgTypeValueJson:Lorg/json/JSONArray;
    .end local v18           #j:I
    .end local v24           #subValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    .end local v22           #msgExpandEntity:Lcom/meizu/video/client/ui/entity/MsgExpandEntity;
    :cond_c
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 591
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

    .line 592
    const-string v27, "data"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 593
    .local v5, channelDetailDataJson:Lorg/json/JSONArray;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v27

    if-lez v27, :cond_2

    .line 594
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    .line 596
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 597
    .local v2, channelDetailDataItemJson:Lorg/json/JSONObject;
    if-eqz v2, :cond_1c

    .line 598
    new-instance v6, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;

    invoke-direct {v6}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;-><init>()V

    .line 599
    .local v6, channelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    const-string v27, "vid"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 600
    const-string v27, "vid"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setVid(Ljava/lang/String;)V

    .line 602
    :cond_e
    const-string v27, "cid"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 603
    const-string v27, "cid"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setCid(Ljava/lang/String;)V

    .line 605
    :cond_f
    const-string v27, "mmsid"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 606
    const-string v27, "mmsid"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setMmsid(Ljava/lang/String;)V

    .line 608
    :cond_10
    const-string v27, "play_address"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_11

    .line 609
    const-string v27, "play_address"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setPlay_address(Ljava/lang/String;)V

    .line 611
    :cond_11
    const-string v27, "duration"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_12

    .line 612
    const-string v27, "duration"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setDuration(Ljava/lang/String;)V

    .line 614
    :cond_12
    const-string v27, "head_duration"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_13

    .line 615
    const-string v27, "head_duration"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setHead_duration(Ljava/lang/String;)V

    .line 617
    :cond_13
    const-string v27, "tail_duration"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_14

    .line 618
    const-string v27, "tail_duration"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setTail_duration(Ljava/lang/String;)V

    .line 621
    :cond_14
    const-string v27, "label"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 622
    const-string v27, "label"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 623
    .local v4, channelDetailDataItemLabelListJson:Lorg/json/JSONArray;
    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v27

    if-lez v27, :cond_1b

    .line 624
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v20, lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    const/16 v18, 0x0

    .restart local v18       #j:I
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1a

    .line 626
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 627
    .local v3, channelDetailDataItemLabelItemJson:Lorg/json/JSONObject;
    if-eqz v3, :cond_19

    .line 628
    new-instance v19, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 629
    .local v19, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v27, "size"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_15

    .line 630
    const-string v27, "size"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 632
    :cond_15
    const-string v27, "type"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_16

    .line 633
    const-string v27, "type"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 635
    :cond_16
    const-string v27, "key"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_17

    .line 636
    const-string v27, "key"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 638
    :cond_17
    const-string v27, "value"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_18

    .line 639
    const-string v27, "value"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 641
    :cond_18
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    .end local v19           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_19
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .line 644
    .end local v3           #channelDetailDataItemLabelItemJson:Lorg/json/JSONObject;
    :cond_1a
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 647
    .end local v4           #channelDetailDataItemLabelListJson:Lorg/json/JSONArray;
    .end local v18           #j:I
    .end local v20           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_1b
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v6           #channelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    :cond_1c
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 654
    .end local v2           #channelDetailDataItemJson:Lorg/json/JSONObject;
    .end local v5           #channelDetailDataJson:Lorg/json/JSONArray;
    .end local v11           #channelDetailToalJson:Lorg/json/JSONObject;
    .end local v14           #code:Ljava/lang/String;
    .end local v15           #data:Ljava/lang/String;
    .end local v17           #i:I
    .end local v21           #msg:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 655
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
    .line 930
    .local p1, channelDetailListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1133
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 935
    .local v6, channelDetailToalJson:Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    .line 936
    const-string v11, "header"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 937
    const-string v11, "header"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 938
    .local v3, channelDetailHeaderJson:Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 939
    const-string v11, "status"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 940
    const-string v11, "status"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 944
    .end local v3           #channelDetailHeaderJson:Lorg/json/JSONObject;
    :cond_2
    const-string v11, "1"

    invoke-virtual {p2}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 945
    const-string v11, "body"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 946
    const-string v11, "body"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 947
    .local v1, channelDetailBodyJson:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 948
    const-string v11, "data"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 949
    const-string v11, "data"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 950
    .local v5, channelDetailListJson:Lorg/json/JSONArray;
    if-eqz v5, :cond_15

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_15

    .line 951
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v8, v11, :cond_15

    .line 952
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 953
    .local v4, channelDetailItemJson:Lorg/json/JSONObject;
    if-eqz v4, :cond_13

    .line 954
    new-instance v2, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;

    invoke-direct {v2}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;-><init>()V

    .line 955
    .local v2, channelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 956
    .local v10, lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    const-string v11, "cid"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 957
    const-string v11, "cid"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setCid(Ljava/lang/String;)V

    .line 959
    :cond_3
    const-string v11, "id"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 960
    const-string v11, "id"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setVid(Ljava/lang/String;)V

    .line 962
    :cond_4
    const-string v11, "title"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 963
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

    .line 964
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 965
    .local v9, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v11, "0"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 966
    const-string v11, "text-title"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 967
    const-string v11, "title"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 968
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_5
    const-string v11, "icon"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 975
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

    .line 976
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 977
    .restart local v9       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v11, "0"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 978
    const-string v11, "image"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 979
    const-string v11, "icon"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 980
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_6
    const-string v11, "score"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 984
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

    .line 985
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 986
    .restart local v9       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v11, "-1"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 987
    const-string v11, "text-image"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 988
    const-string v11, "0"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 989
    const-string v11, "score"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 990
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_7
    const-string v11, "type"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 995
    const-string v11, "type"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setMediaDataType(Ljava/lang/String;)V

    .line 997
    :cond_8
    const-string v11, "at"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 998
    const-string v11, "at"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setMediaOperaton(Ljava/lang/String;)V

    .line 1009
    :cond_9
    const-string v11, "director"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1010
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

    .line 1011
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1012
    .restart local v9       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v11, "-1"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1013
    const-string v11, "text"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1014
    const-string v11, "1"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1015
    const-string v11, "director"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_a
    const-string v11, "actor"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1020
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

    .line 1021
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1022
    .restart local v9       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v11, "-1"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1023
    const-string v11, "text"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1024
    const-string v11, "2"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1025
    const-string v11, "actor"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_b
    const-string v11, "intro"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1030
    const-string v11, "intro"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setIntro(Ljava/lang/String;)V

    .line 1032
    :cond_c
    const-string v11, "subcate"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1033
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

    .line 1034
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1035
    .restart local v9       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v11, "-1"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1036
    const-string v11, "text"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1037
    const-string v11, "3"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1038
    const-string v11, "subcate"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_d
    const-string v11, "area"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1043
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

    .line 1044
    const-string v11, "area"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1045
    .local v0, areaName:Ljava/lang/String;
    const-string v11, "^[0-9]*$"

    invoke-static {v11, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1046
    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getAreaTypeAreaYearOrderListEntity()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->getCid()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Lcom/meizu/video/client/util/CommonUtil;->getAreaNameByCidAndAreaid(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1048
    :cond_e
    if-eqz v0, :cond_f

    const-string v11, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 1049
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1050
    .restart local v9       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v11, "-1"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1051
    const-string v11, "text"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1052
    const-string v11, "4"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {v9, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    .end local v0           #areaName:Ljava/lang/String;
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_f
    const-string v11, "time_length"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1059
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

    .line 1060
    const-string v11, "time_length"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setDuration(Ljava/lang/String;)V

    .line 1061
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1062
    .restart local v9       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v11, "-1"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1063
    const-string v11, "text"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1064
    const-string v11, "5"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1065
    const-string v11, "time_length"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/meizu/video/client/util/CommonUtil;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_10
    const-string v11, "rcompany"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 1076
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

    .line 1077
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1078
    .restart local v9       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v11, "-1"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1079
    const-string v11, "text"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->getCid()Ljava/lang/String;

    move-result-object v11

    const-string v12, "111"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 1081
    const-string v11, "14"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1085
    :goto_2
    const-string v11, "rcompany"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1089
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_11
    const-string v11, "ctime"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 1090
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

    .line 1091
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1092
    .restart local v9       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v11, "-1"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1093
    const-string v11, "text"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1094
    const-string v11, "6"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1095
    const-string v11, "ctime"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    .end local v9           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_12
    invoke-virtual {v2, v10}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 1118
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    .end local v2           #channelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    .end local v10           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1083
    .restart local v2       #channelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    .restart local v9       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    .restart local v10       #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_14
    const-string v11, "7"

    invoke-virtual {v9, v11}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1130
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

    .line 1131
    .local v7, e:Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 1123
    .end local v7           #e:Lorg/json/JSONException;
    .restart local v1       #channelDetailBodyJson:Lorg/json/JSONObject;
    .restart local v6       #channelDetailToalJson:Lorg/json/JSONObject;
    :cond_15
    :try_start_1
    const-string v11, "total"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1124
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
    .line 860
    .local p1, channelListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelEntity;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 865
    .local v8, channelToalJson:Lorg/json/JSONObject;
    if-eqz v8, :cond_0

    .line 866
    const-string v13, "header"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 867
    const-string v13, "header"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 868
    .local v5, channelHeaderJson:Lorg/json/JSONObject;
    if-eqz v5, :cond_2

    .line 869
    const-string v13, "status"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 870
    const-string v13, "status"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 874
    .end local v5           #channelHeaderJson:Lorg/json/JSONObject;
    :cond_2
    const-string v13, "1"

    invoke-virtual/range {p2 .. p2}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 875
    const-string v13, "body"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 876
    const-string v13, "body"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 877
    .local v1, channelBodyJson:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 878
    const-string v13, "channel"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 879
    const-string v13, "channel"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 880
    .local v7, channelListJson:Lorg/json/JSONArray;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lez v13, :cond_0

    .line 881
    const-string v3, ""

    .line 882
    .local v3, channelDetailUrl:Ljava/lang/String;
    const-string v2, ""

    .line 883
    .local v2, channelDetailJsonData:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v10, v13, :cond_0

    .line 884
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 885
    .local v6, channelItemJson:Lorg/json/JSONObject;
    if-eqz v6, :cond_6

    .line 886
    new-instance v4, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-direct {v4}, Lcom/meizu/video/client/ui/entity/ChanelEntity;-><init>()V

    .line 887
    .local v4, channelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    const-string v13, "id"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 888
    const-string v13, "id"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->setId(Ljava/lang/String;)V

    .line 890
    :cond_3
    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v13

    const-string v14, "202"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 891
    const-string v13, "\u5fae\u7535\u5f71"

    invoke-virtual {v4, v13}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->setTitle(Ljava/lang/String;)V

    .line 897
    :cond_4
    :goto_2
    const-string v13, "icon"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 898
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 899
    .local v12, lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    new-instance v11, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v11}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 900
    .local v11, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v13, "0"

    invoke-virtual {v11, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 901
    const-string v13, "image"

    invoke-virtual {v11, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 904
    const-string v13, ""

    invoke-virtual {v11, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 906
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    invoke-virtual {v4, v12}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 909
    .end local v11           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    .end local v12           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    .end local v4           #channelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 893
    .restart local v4       #channelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    :cond_7
    const-string v13, "name"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 894
    const-string v13, "name"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 918
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

    .line 919
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
    .line 234
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v19, channelProgramDetailListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 237
    .local v2, channelDetailProgramToalJson:Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    .line 238
    const-string v21, ""

    .line 239
    .local v21, code:Ljava/lang/String;
    const-string v38, "code"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 240
    const-string v38, "code"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 242
    :cond_0
    const-string v33, ""

    .line 243
    .local v33, msg:Ljava/lang/String;
    const-string v22, ""

    .line 244
    .local v22, data:Ljava/lang/String;
    const-string v38, "-1"

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_3

    .line 245
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1

    .line 246
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 248
    :cond_1
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2

    .line 249
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 514
    .end local v2           #channelDetailProgramToalJson:Lorg/json/JSONObject;
    .end local v21           #code:Ljava/lang/String;
    .end local v22           #data:Ljava/lang/String;
    .end local v33           #msg:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v19

    .line 251
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

    .line 252
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_4

    .line 253
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 254
    .local v20, channelProgramDetailMsgJson:Lorg/json/JSONObject;
    const-string v37, ""

    .line 255
    .local v37, total:Ljava/lang/String;
    if-eqz v20, :cond_4

    .line 256
    const-string v38, "total"

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_4

    .line 257
    const-string v38, "total"

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .end local v20           #channelProgramDetailMsgJson:Lorg/json/JSONObject;
    .end local v37           #total:Ljava/lang/String;
    :cond_4
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2

    .line 262
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 263
    .local v17, channelProgramDetailDataJson:Lorg/json/JSONArray;
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v38

    if-lez v38, :cond_2

    .line 264
    const/16 v28, 0x0

    .local v28, i:I
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v28

    move/from16 v1, v38

    if-ge v0, v1, :cond_2

    .line 266
    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 267
    .local v9, channelProgramDetailDataItemJson:Lorg/json/JSONObject;
    if-eqz v9, :cond_20

    .line 268
    new-instance v18, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-direct/range {v18 .. v18}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;-><init>()V

    .line 269
    .local v18, channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    const-string v38, "vid"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_5

    .line 270
    const-string v38, "vid"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setVid(Ljava/lang/String;)V

    .line 272
    :cond_5
    const-string v38, "cid"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_6

    .line 273
    const-string v38, "cid"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setCid(Ljava/lang/String;)V

    .line 275
    :cond_6
    const-string v38, "mmsid"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 276
    const-string v38, "mmsid"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setMmsid(Ljava/lang/String;)V

    .line 278
    :cond_7
    const-string v38, "imdb"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_8

    .line 279
    const-string v38, "imdb"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setImdb(Ljava/lang/String;)V

    .line 281
    :cond_8
    const-string v38, "duration"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_9

    .line 282
    const-string v38, "duration"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setDuration(Ljava/lang/String;)V

    .line 284
    :cond_9
    const-string v38, "head_duration"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_a

    .line 285
    const-string v38, "head_duration"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setHead_duration(Ljava/lang/String;)V

    .line 287
    :cond_a
    const-string v38, "tail_duration"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_b

    .line 288
    const-string v38, "tail_duration"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setTail_duration(Ljava/lang/String;)V

    .line 290
    :cond_b
    const-string v38, "play_address"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_c

    .line 291
    const-string v38, "play_address"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setPlay_address(Ljava/lang/String;)V

    .line 293
    :cond_c
    const-string v38, "download_address"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_d

    .line 294
    const-string v38, "download_address"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setDownload_address(Ljava/lang/String;)V

    .line 298
    :cond_d
    const-string v38, "description"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_10

    .line 299
    const-string v38, "description"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 300
    .local v3, channelProgramDetailDataItemDescriptionJson:Lorg/json/JSONObject;
    if-eqz v3, :cond_10

    .line 301
    new-instance v23, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct/range {v23 .. v23}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    .line 302
    .local v23, descriptionMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    const-string v38, "key"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_e

    .line 303
    const-string v38, "key"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 305
    :cond_e
    const-string v38, "value"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_f

    .line 306
    const-string v38, "value"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setValue(Ljava/lang/String;)V

    .line 308
    :cond_f
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setDescriptionMsgEntity(Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 313
    .end local v3           #channelProgramDetailDataItemDescriptionJson:Lorg/json/JSONObject;
    .end local v23           #descriptionMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    :cond_10
    const-string v38, "label"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_17

    .line 314
    const-string v38, "label"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 315
    .local v11, channelProgramDetailDataItemLabelListJson:Lorg/json/JSONArray;
    if-eqz v11, :cond_17

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v38

    if-lez v38, :cond_17

    .line 316
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v31, lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    const/16 v29, 0x0

    .local v29, j:I
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v29

    move/from16 v1, v38

    if-ge v0, v1, :cond_16

    .line 318
    move/from16 v0, v29

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 319
    .local v10, channelProgramDetailDataItemLabelItemJson:Lorg/json/JSONObject;
    if-eqz v10, :cond_15

    .line 320
    new-instance v30, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v30 .. v30}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 321
    .local v30, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v38, "size"

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_11

    .line 322
    const-string v38, "size"

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 324
    :cond_11
    const-string v38, "type"

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_12

    .line 325
    const-string v38, "type"

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 327
    :cond_12
    const-string v38, "key"

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_13

    .line 328
    const-string v38, "key"

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 330
    :cond_13
    const-string v38, "value"

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_14

    .line 331
    const-string v38, "value"

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 333
    :cond_14
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    .end local v30           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_15
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_2

    .line 336
    .end local v10           #channelProgramDetailDataItemLabelItemJson:Lorg/json/JSONObject;
    :cond_16
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 341
    .end local v11           #channelProgramDetailDataItemLabelListJson:Lorg/json/JSONArray;
    .end local v29           #j:I
    .end local v31           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_17
    const-string v38, "similar_video"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1b

    .line 342
    const-string v38, "similar_video"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 343
    .local v14, channelProgramDetailDataItemSimilarVideoJson:Lorg/json/JSONObject;
    if-eqz v14, :cond_1b

    .line 344
    const-string v38, "code"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_18

    .line 345
    const-string v38, "code"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setSimilarVideoCode(Ljava/lang/String;)V

    .line 347
    :cond_18
    new-instance v36, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct/range {v36 .. v36}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    .line 348
    .local v36, similarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    const-string v38, "-1"

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getSimilarVideoCode()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_21

    .line 349
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_19

    .line 350
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 352
    :cond_19
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1a

    .line 353
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setValue(Ljava/lang/String;)V

    .line 355
    :cond_1a
    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setSimilarVideoMsgEntity(Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 421
    .end local v14           #channelProgramDetailDataItemSimilarVideoJson:Lorg/json/JSONObject;
    .end local v36           #similarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    :cond_1b
    :goto_3
    const-string v38, "episodes"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1f

    .line 422
    const-string v38, "episodes"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 423
    .local v6, channelProgramDetailDataItemEpisodesJson:Lorg/json/JSONObject;
    if-eqz v6, :cond_1f

    .line 424
    const-string v38, "code"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1c

    .line 425
    const-string v38, "code"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setEpisodesCode(Ljava/lang/String;)V

    .line 427
    :cond_1c
    new-instance v27, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    .line 428
    .local v27, episodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    const-string v38, "-1"

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getEpisodesCode()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2f

    .line 429
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1d

    .line 430
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 432
    :cond_1d
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1e

    .line 433
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setValue(Ljava/lang/String;)V

    .line 435
    :cond_1e
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setEpisodesMsgEntity(Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 503
    .end local v6           #channelProgramDetailDataItemEpisodesJson:Lorg/json/JSONObject;
    .end local v27           #episodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    :cond_1f
    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v18           #channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    :cond_20
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1

    .line 356
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

    .line 357
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_23

    .line 358
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 359
    .local v15, channelProgramDetailDataItemSimilarVideoMsgJson:Lorg/json/JSONObject;
    if-eqz v15, :cond_23

    .line 360
    const-string v38, "total"

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_23

    .line 361
    const-string v38, "total"

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 362
    .local v16, channelProgramDetailDataItemSimilarVideolToalMsgJson:Lorg/json/JSONObject;
    if-eqz v16, :cond_23

    .line 363
    const-string v38, "key"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_22

    .line 364
    const-string v38, "key"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 366
    :cond_22
    const-string v38, "value"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_23

    .line 367
    const-string v38, "value"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setValue(Ljava/lang/String;)V

    .line 373
    .end local v15           #channelProgramDetailDataItemSimilarVideoMsgJson:Lorg/json/JSONObject;
    .end local v16           #channelProgramDetailDataItemSimilarVideolToalMsgJson:Lorg/json/JSONObject;
    :cond_23
    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setSimilarVideoMsgEntity(Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 374
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1b

    .line 375
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 376
    .local v13, channelProgramDetailDataItemSimilarVideoDataJson:Lorg/json/JSONArray;
    if-eqz v13, :cond_1b

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v38

    if-lez v38, :cond_1b

    .line 377
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v35, similarVideoListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;>;"
    const/16 v32, 0x0

    .local v32, m:I
    :goto_5
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v32

    move/from16 v1, v38

    if-ge v0, v1, :cond_2e

    .line 379
    move/from16 v0, v32

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 380
    .local v12, channelProgramDetailDataItemSimilarVideoDataItemJson:Lorg/json/JSONObject;
    if-eqz v12, :cond_2d

    .line 381
    new-instance v34, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;

    invoke-direct/range {v34 .. v34}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;-><init>()V

    .line 382
    .local v34, similarVideoEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    const-string v38, "vid"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_24

    .line 383
    const-string v38, "vid"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setVid(Ljava/lang/String;)V

    .line 385
    :cond_24
    const-string v38, "cid"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_25

    .line 386
    const-string v38, "cid"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setCid(Ljava/lang/String;)V

    .line 388
    :cond_25
    const-string v38, "mmsid"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_26

    .line 389
    const-string v38, "mmsid"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setMmsid(Ljava/lang/String;)V

    .line 391
    :cond_26
    const-string v38, "title"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_27

    .line 392
    const-string v38, "title"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setTitle(Ljava/lang/String;)V

    .line 394
    :cond_27
    const-string v38, "image"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_28

    .line 395
    const-string v38, "image"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setImage(Ljava/lang/String;)V

    .line 397
    :cond_28
    const-string v38, "duration"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_29

    .line 398
    const-string v38, "duration"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setDuration(Ljava/lang/String;)V

    .line 400
    :cond_29
    const-string v38, "head_duration"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2a

    .line 401
    const-string v38, "head_duration"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setHead_duration(Ljava/lang/String;)V

    .line 403
    :cond_2a
    const-string v38, "tail_duration"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2b

    .line 404
    const-string v38, "tail_duration"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setTail_duration(Ljava/lang/String;)V

    .line 406
    :cond_2b
    const-string v38, "play_address"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2c

    .line 407
    const-string v38, "play_address"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setPlay_address(Ljava/lang/String;)V

    .line 409
    :cond_2c
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .end local v34           #similarVideoEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_2d
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_5

    .line 412
    .end local v12           #channelProgramDetailDataItemSimilarVideoDataItemJson:Lorg/json/JSONObject;
    :cond_2e
    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setSimilarVideoListEntity(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 510
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

    .line 511
    .local v24, e:Lorg/json/JSONException;
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 436
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

    .line 437
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_31

    .line 438
    const-string v38, "msg"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 439
    .local v7, channelProgramDetailDataItemEpisodesMsgJson:Lorg/json/JSONObject;
    if-eqz v7, :cond_31

    .line 440
    const-string v38, "total"

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_31

    .line 441
    const-string v38, "total"

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 442
    .local v8, channelProgramDetailDataItemEpisodesToalMsgJson:Lorg/json/JSONObject;
    if-eqz v8, :cond_31

    .line 443
    const-string v38, "key"

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_30

    .line 444
    const-string v38, "key"

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 446
    :cond_30
    const-string v38, "value"

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_31

    .line 447
    const-string v38, "value"

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setValue(Ljava/lang/String;)V

    .line 453
    .end local v7           #channelProgramDetailDataItemEpisodesMsgJson:Lorg/json/JSONObject;
    .end local v8           #channelProgramDetailDataItemEpisodesToalMsgJson:Lorg/json/JSONObject;
    :cond_31
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setEpisodesMsgEntity(Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 454
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1f

    .line 455
    const-string v38, "data"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 456
    .local v5, channelProgramDetailDataItemEpisodesDataJson:Lorg/json/JSONArray;
    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v38

    if-lez v38, :cond_1f

    .line 457
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v26, episodesListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/EpisodesEntity;>;"
    const/16 v32, 0x0

    .restart local v32       #m:I
    :goto_6
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v38

    move/from16 v0, v32

    move/from16 v1, v38

    if-ge v0, v1, :cond_3d

    .line 459
    move/from16 v0, v32

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 460
    .local v4, channelProgramDetailDataItemEpisodesDataItemJson:Lorg/json/JSONObject;
    if-eqz v4, :cond_3c

    .line 461
    new-instance v25, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-direct/range {v25 .. v25}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;-><init>()V

    .line 462
    .local v25, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    const-string v38, "vid"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_32

    .line 463
    const-string v38, "vid"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setVid(Ljava/lang/String;)V

    .line 465
    :cond_32
    const-string v38, "cid"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_33

    .line 466
    const-string v38, "cid"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setCid(Ljava/lang/String;)V

    .line 468
    :cond_33
    const-string v38, "mmsid"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_34

    .line 469
    const-string v38, "mmsid"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setMmsid(Ljava/lang/String;)V

    .line 471
    :cond_34
    const-string v38, "title"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_35

    .line 472
    const-string v38, "title"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setTitle(Ljava/lang/String;)V

    .line 474
    :cond_35
    const-string v38, "description"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_36

    .line 475
    const-string v38, "description"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setDescription(Ljava/lang/String;)V

    .line 477
    :cond_36
    const-string v38, "duration"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_37

    .line 478
    const-string v38, "duration"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setDuration(Ljava/lang/String;)V

    .line 480
    :cond_37
    const-string v38, "head_duration"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_38

    .line 481
    const-string v38, "head_duration"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setHead_duration(Ljava/lang/String;)V

    .line 483
    :cond_38
    const-string v38, "tail_duration"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_39

    .line 484
    const-string v38, "tail_duration"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setTail_duration(Ljava/lang/String;)V

    .line 486
    :cond_39
    const-string v38, "play_address"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_3a

    .line 487
    const-string v38, "play_address"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setPlay_address(Ljava/lang/String;)V

    .line 489
    :cond_3a
    const-string v38, "download_address"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_3b

    .line 490
    const-string v38, "download_address"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setDownload_address(Ljava/lang/String;)V

    .line 492
    :cond_3b
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    .end local v25           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :cond_3c
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_6

    .line 495
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
    .line 1142
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1531
    :cond_0
    :goto_0
    return-void

    .line 1146
    :cond_1
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1147
    .local v12, channelProgramDetailToalJson:Lorg/json/JSONObject;
    if-eqz v12, :cond_0

    .line 1148
    const-string v28, "header"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 1149
    const-string v28, "header"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1150
    .local v5, channelProgramDetailHeaderJson:Lorg/json/JSONObject;
    if-eqz v5, :cond_2

    .line 1151
    const-string v28, "status"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 1152
    const-string v28, "status"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 1156
    .end local v5           #channelProgramDetailHeaderJson:Lorg/json/JSONObject;
    :cond_2
    const-string v28, "1"

    invoke-virtual/range {p2 .. p2}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 1157
    const-string v28, "body"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 1158
    const-string v28, "body"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1159
    .local v2, channelProgramDetailBodyJson:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 1160
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1161
    .local v22, lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    const-string v28, "id"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 1162
    const-string v28, "id"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setVid(Ljava/lang/String;)V

    .line 1164
    :cond_3
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 1165
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

    .line 1166
    new-instance v21, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1167
    .local v21, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v28, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1168
    const-string v28, "text-title"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1169
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1170
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1176
    .end local v21           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_4
    const-string v28, "icon"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 1177
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

    .line 1178
    new-instance v21, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1179
    .restart local v21       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v28, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1180
    const-string v28, "image"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1181
    const-string v28, "icon"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1182
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    .end local v21           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_5
    const-string v28, "score"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 1186
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

    .line 1187
    new-instance v21, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1188
    .restart local v21       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v28, "-1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1189
    const-string v28, "text-image"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1190
    const-string v28, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1191
    const-string v28, "score"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1192
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    .end local v21           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_6
    const-string v28, "cid"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 1196
    const-string v28, "cid"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setCid(Ljava/lang/String;)V

    .line 1213
    :cond_7
    const-string v28, "director"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 1214
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

    .line 1215
    new-instance v21, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1216
    .restart local v21       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v28, "-1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1217
    const-string v28, "text"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1218
    const-string v28, "1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1219
    const-string v28, "director"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1220
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1223
    .end local v21           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_8
    const-string v28, "actor"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 1224
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

    .line 1225
    new-instance v21, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1226
    .restart local v21       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v28, "-1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1227
    const-string v28, "text"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1228
    const-string v28, "2"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1229
    const-string v28, "actor"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1230
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    .end local v21           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_9
    const-string v28, "intro"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 1234
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

    .line 1235
    new-instance v13, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct {v13}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    .line 1236
    .local v13, descriptionMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    const-string v28, "\u5267\u60c5\u7b80\u4ecb"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 1237
    const-string v28, "intro"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setValue(Ljava/lang/String;)V

    .line 1238
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setDescriptionMsgEntity(Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 1241
    .end local v13           #descriptionMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    :cond_a
    const-string v28, "subcate"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 1242
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

    .line 1243
    new-instance v21, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1244
    .restart local v21       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v28, "-1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1245
    const-string v28, "text"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1246
    const-string v28, "3"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1247
    const-string v28, "subcate"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1248
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    .end local v21           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_b
    const-string v28, "area"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 1252
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

    .line 1253
    new-instance v21, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1254
    .restart local v21       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v28, "-1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1255
    const-string v28, "text"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1256
    const-string v28, "4"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1257
    const-string v28, "area"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1258
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    .end local v21           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_c
    const-string v28, "time_length"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 1262
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

    .line 1263
    const-string v28, "time_length"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setDuration(Ljava/lang/String;)V

    .line 1264
    new-instance v21, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1265
    .restart local v21       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v28, "-1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1266
    const-string v28, "text"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1267
    const-string v28, "5"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1268
    const-string v28, "time_length"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/video/client/util/CommonUtil;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1269
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    .end local v21           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_d
    const-string v28, "style"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 1273
    const-string v28, "style"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setStype(Ljava/lang/String;)V

    .line 1278
    :cond_e
    const-string v28, "rcompany"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 1279
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

    .line 1280
    new-instance v21, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1281
    .restart local v21       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v28, "-1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1282
    const-string v28, "text"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1283
    const-string v28, "7"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1284
    const-string v28, "rcompany"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1285
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1288
    .end local v21           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_f
    const-string v28, "ctime"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 1289
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

    .line 1290
    new-instance v21, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct/range {v21 .. v21}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1291
    .restart local v21       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v28, "-1"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1292
    const-string v28, "text"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1293
    const-string v28, "6"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1294
    const-string v28, "ctime"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1295
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    .end local v21           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_10
    const-string v28, "vl"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_21

    .line 1299
    const-string v28, "vl"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1300
    .local v4, channelProgramDetailEpisodesListJson:Lorg/json/JSONArray;
    if-eqz v4, :cond_21

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v28

    if-lez v28, :cond_21

    .line 1301
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1302
    .local v16, episodesListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/EpisodesEntity;>;"
    const/16 v20, 0x0

    .local v20, j:I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v28

    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_1f

    .line 1303
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1304
    .local v3, channelProgramDetailEpisodesItemJson:Lorg/json/JSONObject;
    if-eqz v3, :cond_1e

    .line 1305
    new-instance v15, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-direct {v15}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;-><init>()V

    .line 1307
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

    .line 1309
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 1310
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setTitle(Ljava/lang/String;)V

    .line 1315
    :cond_11
    const-string v28, "vid"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 1316
    const-string v28, "vid"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setVid(Ljava/lang/String;)V

    .line 1318
    :cond_12
    const-string v28, "lmid"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 1319
    const-string v28, "lmid"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setLmid(Ljava/lang/String;)V

    .line 1321
    :cond_13
    const-string v28, "hmid"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_14

    .line 1322
    const-string v28, "hmid"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setHmid(Ljava/lang/String;)V

    .line 1324
    :cond_14
    const-string v28, "lsize"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v28

    if-eqz v28, :cond_15

    .line 1326
    :try_start_1
    const-string v28, "lsize"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-virtual {v15, v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setLsize(D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1331
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

    .line 1333
    :try_start_3
    const-string v28, "hsize"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-virtual {v15, v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setHsize(D)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1337
    :cond_16
    :goto_3
    :try_start_4
    const-string v28, "free"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_17

    .line 1338
    const-string v28, "free"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setPlay_address(Ljava/lang/String;)V

    .line 1340
    :cond_17
    const-string v28, "v800"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_18

    .line 1341
    const-string v28, "v800"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setPlay_address_other(Ljava/lang/String;)V

    .line 1343
    :cond_18
    const-string v28, "down"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_19

    .line 1344
    const-string v28, "down"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setDownload_address(Ljava/lang/String;)V

    .line 1346
    :cond_19
    const-string v28, "d800"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1a

    .line 1347
    const-string v28, "d800"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setDownload_address_other(Ljava/lang/String;)V

    .line 1349
    :cond_1a
    const-string v28, "btime"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 1350
    const-string v28, "btime"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setHead_duration(Ljava/lang/String;)V

    .line 1352
    :cond_1b
    const-string v28, "etime"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1c

    .line 1353
    const-string v28, "etime"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setTail_duration(Ljava/lang/String;)V

    .line 1355
    :cond_1c
    const-string v28, "duration"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 1356
    const-string v28, "duration"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setDuration(Ljava/lang/String;)V

    .line 1358
    :cond_1d
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    .end local v15           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :cond_1e
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 1361
    .end local v3           #channelProgramDetailEpisodesItemJson:Lorg/json/JSONObject;
    :cond_1f
    const-string v28, "0"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setEpisodesCode(Ljava/lang/String;)V

    .line 1362
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setEpisodesListEntity(Ljava/util/ArrayList;)V

    .line 1364
    new-instance v17, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct/range {v17 .. v17}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    .line 1365
    .local v17, episodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_20

    .line 1366
    const-string v28, "\u89c6\u9891\u5217\u8868"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 1367
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

    .line 1369
    :cond_20
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setEpisodesMsgEntity(Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 1373
    .end local v4           #channelProgramDetailEpisodesListJson:Lorg/json/JSONArray;
    .end local v16           #episodesListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/EpisodesEntity;>;"
    .end local v17           #episodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    .end local v20           #j:I
    :cond_21
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1374
    .local v26, similarVideoListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;>;"
    const-string v28, "l_list"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2c

    .line 1375
    const-string v28, "l_list"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 1376
    .local v11, channelProgramDetailSimilarLListJson:Lorg/json/JSONArray;
    if-eqz v11, :cond_2c

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v28

    if-lez v28, :cond_2c

    .line 1377
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

    .line 1378
    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 1379
    .local v10, channelProgramDetailSimilarLItemJson:Lorg/json/JSONObject;
    if-eqz v10, :cond_25

    .line 1380
    new-instance v25, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;

    invoke-direct/range {v25 .. v25}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;-><init>()V

    .line 1382
    .local v25, similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    const-string v28, "id"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_22

    .line 1383
    const-string v28, "id"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setVid(Ljava/lang/String;)V

    .line 1387
    :cond_22
    const/16 v18, 0x0

    .line 1388
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

    .line 1389
    .local v14, entity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    invoke-virtual {v14}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getVid()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v25 .. v25}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getVid()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_23

    .line 1390
    const/16 v18, 0x1

    .line 1394
    .end local v14           #entity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_24
    if-eqz v18, :cond_26

    .line 1377
    .end local v18           #hasSame:Z
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v25           #similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_25
    :goto_5
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 1398
    .restart local v18       #hasSame:Z
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v25       #similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_26
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_27

    .line 1399
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setTitle(Ljava/lang/String;)V

    .line 1401
    :cond_27
    const-string v28, "icon"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_28

    .line 1402
    const-string v28, "icon"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setImage(Ljava/lang/String;)V

    .line 1404
    :cond_28
    const-string v28, "cid"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_29

    .line 1405
    const-string v28, "cid"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setCid(Ljava/lang/String;)V

    .line 1407
    :cond_29
    const-string v28, "type"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2a

    .line 1408
    const-string v28, "type"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setMediaDataType(Ljava/lang/String;)V

    .line 1410
    :cond_2a
    const-string v28, "at"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2b

    .line 1411
    const-string v28, "at"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setMediaOperaton(Ljava/lang/String;)V

    .line 1413
    :cond_2b
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1529
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

    .line 1419
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

    .line 1420
    const-string v28, "a_list"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1421
    .local v7, channelProgramDetailSimilarAListJson:Lorg/json/JSONArray;
    if-eqz v7, :cond_37

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v28

    if-lez v28, :cond_37

    .line 1422
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

    .line 1423
    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1424
    .local v6, channelProgramDetailSimilarAItemJson:Lorg/json/JSONObject;
    if-eqz v6, :cond_30

    .line 1425
    new-instance v25, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;

    invoke-direct/range {v25 .. v25}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;-><init>()V

    .line 1427
    .restart local v25       #similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    const-string v28, "id"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2d

    .line 1428
    const-string v28, "id"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setVid(Ljava/lang/String;)V

    .line 1432
    :cond_2d
    const/16 v18, 0x0

    .line 1433
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

    .line 1434
    .restart local v14       #entity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    invoke-virtual {v14}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getVid()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v25 .. v25}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getVid()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2e

    .line 1435
    const/16 v18, 0x1

    .line 1439
    .end local v14           #entity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_2f
    if-eqz v18, :cond_31

    .line 1422
    .end local v18           #hasSame:Z
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v25           #similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_30
    :goto_7
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 1443
    .restart local v18       #hasSame:Z
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v25       #similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_31
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_32

    .line 1444
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setTitle(Ljava/lang/String;)V

    .line 1446
    :cond_32
    const-string v28, "icon"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_33

    .line 1447
    const-string v28, "icon"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setImage(Ljava/lang/String;)V

    .line 1449
    :cond_33
    const-string v28, "cid"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_34

    .line 1450
    const-string v28, "cid"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setCid(Ljava/lang/String;)V

    .line 1452
    :cond_34
    const-string v28, "type"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_35

    .line 1453
    const-string v28, "type"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setMediaDataType(Ljava/lang/String;)V

    .line 1455
    :cond_35
    const-string v28, "at"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_36

    .line 1456
    const-string v28, "at"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setMediaOperaton(Ljava/lang/String;)V

    .line 1458
    :cond_36
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1464
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

    .line 1465
    const-string v28, "d_list"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 1466
    .local v9, channelProgramDetailSimilarDListJson:Lorg/json/JSONArray;
    if-eqz v9, :cond_42

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v28

    if-lez v28, :cond_42

    .line 1467
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

    .line 1468
    move/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 1469
    .local v8, channelProgramDetailSimilarDItemJson:Lorg/json/JSONObject;
    if-eqz v8, :cond_3b

    .line 1470
    new-instance v25, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;

    invoke-direct/range {v25 .. v25}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;-><init>()V

    .line 1472
    .restart local v25       #similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    const-string v28, "id"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_38

    .line 1473
    const-string v28, "id"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setVid(Ljava/lang/String;)V

    .line 1477
    :cond_38
    const/16 v18, 0x0

    .line 1478
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

    .line 1479
    .restart local v14       #entity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    invoke-virtual {v14}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getVid()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v25 .. v25}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getVid()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_39

    .line 1480
    const/16 v18, 0x1

    .line 1484
    .end local v14           #entity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_3a
    if-eqz v18, :cond_3c

    .line 1467
    .end local v18           #hasSame:Z
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v25           #similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_3b
    :goto_9
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    .line 1488
    .restart local v18       #hasSame:Z
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v25       #similarVideoAEntity:Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;
    :cond_3c
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3d

    .line 1489
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setTitle(Ljava/lang/String;)V

    .line 1491
    :cond_3d
    const-string v28, "icon"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3e

    .line 1492
    const-string v28, "icon"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setImage(Ljava/lang/String;)V

    .line 1494
    :cond_3e
    const-string v28, "cid"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3f

    .line 1495
    const-string v28, "cid"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setCid(Ljava/lang/String;)V

    .line 1497
    :cond_3f
    const-string v28, "type"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_40

    .line 1498
    const-string v28, "type"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setMediaDataType(Ljava/lang/String;)V

    .line 1500
    :cond_40
    const-string v28, "at"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_41

    .line 1501
    const-string v28, "at"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->setMediaOperaton(Ljava/lang/String;)V

    .line 1503
    :cond_41
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 1509
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

    .line 1510
    new-instance v27, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    .line 1511
    .local v27, similarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_43

    .line 1512
    const-string v28, "\u76f8\u5173\u89c6\u9891"

    invoke-virtual/range {v27 .. v28}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 1513
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

    .line 1515
    :cond_43
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setSimilarVideoMsgEntity(Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 1523
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->setLableListEntity(Ljava/util/ArrayList;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 1334
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

    .line 1327
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
    .line 164
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v4, commentListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/CommentEntity;>;"
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 167
    .local v6, commentToalJson:Lorg/json/JSONObject;
    if-eqz v6, :cond_2

    .line 168
    const-string v1, ""

    .line 169
    .local v1, code:Ljava/lang/String;
    const-string v12, "code"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 170
    const-string v12, "code"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    :cond_0
    const-string v10, ""

    .line 173
    .local v10, msg:Ljava/lang/String;
    const-string v7, ""

    .line 174
    .local v7, data:Ljava/lang/String;
    const-string v12, "-1"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 175
    const-string v12, "msg"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 176
    const-string v12, "msg"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 178
    :cond_1
    const-string v12, "data"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 179
    const-string v12, "data"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 224
    .end local v1           #code:Ljava/lang/String;
    .end local v6           #commentToalJson:Lorg/json/JSONObject;
    .end local v7           #data:Ljava/lang/String;
    .end local v10           #msg:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v4

    .line 181
    .restart local v1       #code:Ljava/lang/String;
    .restart local v6       #commentToalJson:Lorg/json/JSONObject;
    .restart local v7       #data:Ljava/lang/String;
    .restart local v10       #msg:Ljava/lang/String;
    :cond_3
    const-string v12, "0"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 182
    const-string v12, "msg"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 183
    const-string v12, "msg"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 184
    .local v5, commentMsgJson:Lorg/json/JSONObject;
    const-string v11, ""

    .line 185
    .local v11, total:Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 186
    const-string v12, "total"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 187
    const-string v12, "total"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .end local v5           #commentMsgJson:Lorg/json/JSONObject;
    .end local v11           #total:Ljava/lang/String;
    :cond_4
    const-string v12, "data"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 192
    const-string v12, "data"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 193
    .local v2, commentDataJson:Lorg/json/JSONArray;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 194
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v9, v12, :cond_2

    .line 195
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 196
    .local v0, channelDataItemJson:Lorg/json/JSONObject;
    if-eqz v0, :cond_a

    .line 197
    new-instance v3, Lcom/meizu/video/client/ui/entity/CommentEntity;

    invoke-direct {v3}, Lcom/meizu/video/client/ui/entity/CommentEntity;-><init>()V

    .line 198
    .local v3, commentEntity:Lcom/meizu/video/client/ui/entity/CommentEntity;
    const-string v12, "id"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 199
    const-string v12, "id"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/meizu/video/client/ui/entity/CommentEntity;->setId(Ljava/lang/String;)V

    .line 201
    :cond_5
    const-string v12, "title"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 202
    const-string v12, "title"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/meizu/video/client/ui/entity/CommentEntity;->setTitle(Ljava/lang/String;)V

    .line 204
    :cond_6
    const-string v12, "author"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 205
    const-string v12, "author"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/meizu/video/client/ui/entity/CommentEntity;->setAuthor(Ljava/lang/String;)V

    .line 207
    :cond_7
    const-string v12, "score"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 208
    const-string v12, "score"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/meizu/video/client/ui/entity/CommentEntity;->setScore(Ljava/lang/String;)V

    .line 210
    :cond_8
    const-string v12, "content"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 211
    const-string v12, "content"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/meizu/video/client/ui/entity/CommentEntity;->setContent(Ljava/lang/String;)V

    .line 213
    :cond_9
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v3           #commentEntity:Lcom/meizu/video/client/ui/entity/CommentEntity;
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 220
    .end local v0           #channelDataItemJson:Lorg/json/JSONObject;
    .end local v1           #code:Ljava/lang/String;
    .end local v2           #commentDataJson:Lorg/json/JSONArray;
    .end local v6           #commentToalJson:Lorg/json/JSONObject;
    .end local v7           #data:Ljava/lang/String;
    .end local v9           #i:I
    .end local v10           #msg:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 221
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
    .line 755
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v15, recommendListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    :try_start_0
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 758
    .local v17, recommendToalJson:Lorg/json/JSONObject;
    if-eqz v17, :cond_2

    .line 759
    const-string v2, ""

    .line 760
    .local v2, code:Ljava/lang/String;
    const-string v19, "code"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 761
    const-string v19, "code"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 763
    :cond_0
    const-string v9, ""

    .line 764
    .local v9, msg:Ljava/lang/String;
    const-string v3, ""

    .line 765
    .local v3, data:Ljava/lang/String;
    const-string v19, "-1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 766
    const-string v19, "msg"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 767
    const-string v19, "msg"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 769
    :cond_1
    const-string v19, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 770
    const-string v19, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 844
    .end local v2           #code:Ljava/lang/String;
    .end local v3           #data:Ljava/lang/String;
    .end local v9           #msg:Ljava/lang/String;
    .end local v17           #recommendToalJson:Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-object v15

    .line 772
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

    .line 773
    const-string v19, "msg"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 774
    const-string v19, "msg"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 775
    .local v16, recommendMsgJson:Lorg/json/JSONObject;
    const-string v18, ""

    .line 776
    .local v18, total:Ljava/lang/String;
    if-eqz v16, :cond_4

    .line 777
    const-string v19, "total"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 778
    const-string v19, "total"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 782
    .end local v16           #recommendMsgJson:Lorg/json/JSONObject;
    .end local v18           #total:Ljava/lang/String;
    :cond_4
    const-string v19, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 783
    const-string v19, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 784
    .local v14, recommendDataJson:Lorg/json/JSONArray;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_2

    .line 785
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_2

    .line 786
    invoke-virtual {v14, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 787
    .local v11, recommendDataItemJson:Lorg/json/JSONObject;
    if-eqz v11, :cond_12

    .line 788
    new-instance v10, Lcom/meizu/video/client/ui/entity/RecommendEntity;

    invoke-direct {v10}, Lcom/meizu/video/client/ui/entity/RecommendEntity;-><init>()V

    .line 789
    .local v10, reEntity:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    const-string v19, "vid"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 790
    const-string v19, "vid"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setVid(Ljava/lang/String;)V

    .line 792
    :cond_5
    const-string v19, "cid"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 793
    const-string v19, "cid"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setCid(Ljava/lang/String;)V

    .line 795
    :cond_6
    const-string v19, "mmsid"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 796
    const-string v19, "mmsid"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setMmsid(Ljava/lang/String;)V

    .line 798
    :cond_7
    const-string v19, "duration"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 799
    const-string v19, "duration"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setDuration(Ljava/lang/String;)V

    .line 801
    :cond_8
    const-string v19, "play_address"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 802
    const-string v19, "play_address"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setPlay_address(Ljava/lang/String;)V

    .line 804
    :cond_9
    const-string v19, "head_duration"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 805
    const-string v19, "head_duration"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setHead_duration(Ljava/lang/String;)V

    .line 807
    :cond_a
    const-string v19, "tail_duration"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 808
    const-string v19, "tail_duration"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setTail_duration(Ljava/lang/String;)V

    .line 810
    :cond_b
    const-string v19, "label"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 811
    const-string v19, "label"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 812
    .local v13, recommendDataItemLabelListJson:Lorg/json/JSONArray;
    if-eqz v13, :cond_11

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_11

    .line 813
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v8, lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_10

    .line 815
    invoke-virtual {v13, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 816
    .local v12, recommendDataItemLabelItemJson:Lorg/json/JSONObject;
    if-eqz v12, :cond_f

    .line 817
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 818
    .local v7, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v19, "size"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 819
    const-string v19, "size"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 821
    :cond_c
    const-string v19, "type"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 822
    const-string v19, "type"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 824
    :cond_d
    const-string v19, "value"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 825
    const-string v19, "value"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 827
    :cond_e
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    .end local v7           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 830
    .end local v12           #recommendDataItemLabelItemJson:Lorg/json/JSONObject;
    :cond_10
    invoke-virtual {v10, v8}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 833
    .end local v6           #j:I
    .end local v8           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .end local v13           #recommendDataItemLabelListJson:Lorg/json/JSONArray;
    :cond_11
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    .end local v10           #reEntity:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 840
    .end local v2           #code:Ljava/lang/String;
    .end local v3           #data:Ljava/lang/String;
    .end local v5           #i:I
    .end local v9           #msg:Ljava/lang/String;
    .end local v11           #recommendDataItemJson:Lorg/json/JSONObject;
    .end local v14           #recommendDataJson:Lorg/json/JSONArray;
    .end local v17           #recommendToalJson:Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 841
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
    .line 1793
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-nez p1, :cond_1

    .line 2275
    :cond_0
    :goto_0
    return-void

    .line 1797
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1798
    if-eqz v1, :cond_0

    .line 1799
    const-string v2, "header"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1800
    const-string v2, "header"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1801
    if-eqz v2, :cond_2

    .line 1802
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1803
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 1807
    :cond_2
    const-string v2, "1"

    invoke-virtual/range {p5 .. p5}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1808
    const-string v2, "body"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1809
    const-string v2, "body"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1810
    if-eqz v2, :cond_0

    .line 1811
    const-string v1, "focus_pic"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1812
    const-string v1, "focus_pic"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1813
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_14

    .line 1814
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_14

    const/16 v4, 0x19

    if-ge v1, v4, :cond_14

    .line 1815
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1816
    if-eqz v4, :cond_12

    .line 1817
    new-instance v5, Lcom/meizu/video/client/ui/entity/RecommendEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/RecommendEntity;-><init>()V

    .line 1818
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    const-string v7, "id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1820
    const-string v7, "id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setVid(Ljava/lang/String;)V

    .line 1822
    :cond_3
    const-string v7, "title"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1823
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

    .line 1824
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1825
    const-string v8, "-1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1826
    const-string v8, "text-title"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1827
    const-string v8, "title"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1828
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1834
    :cond_4
    const-string v7, "icon_2"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1835
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

    .line 1836
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1837
    const-string v8, "1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1838
    const-string v8, "image"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1839
    const-string v8, "icon_2"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1840
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1854
    :cond_5
    :goto_2
    const-string v7, "score"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1855
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

    .line 1856
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1857
    const-string v8, "-1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1858
    const-string v8, "text-image"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1859
    const-string v8, "0"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1860
    const-string v8, "score"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1861
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1865
    :cond_6
    const-string v7, "cid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1866
    const-string v7, "cid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setCid(Ljava/lang/String;)V

    .line 1868
    :cond_7
    const-string v7, "type"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1869
    const-string v7, "type"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setMediaDataType(Ljava/lang/String;)V

    .line 1871
    :cond_8
    const-string v7, "at"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1872
    const-string v7, "at"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setMediaOperaton(Ljava/lang/String;)V

    .line 1883
    :cond_9
    const-string v7, "director"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1884
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

    .line 1885
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1886
    const-string v8, "-1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1887
    const-string v8, "text"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1888
    const-string v8, "1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1889
    const-string v8, "director"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1890
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1893
    :cond_a
    const-string v7, "actor"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1894
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

    .line 1895
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1896
    const-string v8, "-1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1897
    const-string v8, "text"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1898
    const-string v8, "2"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1899
    const-string v8, "actor"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1900
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1903
    :cond_b
    const-string v7, "intro"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1904
    const-string v7, "intro"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setIntro(Ljava/lang/String;)V

    .line 1906
    :cond_c
    const-string v7, "subcate"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1907
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

    .line 1908
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1909
    const-string v8, "-1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1910
    const-string v8, "text"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1911
    const-string v8, "3"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1912
    const-string v8, "subcate"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1913
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1916
    :cond_d
    const-string v7, "area"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1917
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

    .line 1918
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1919
    const-string v8, "-1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1920
    const-string v8, "text"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1921
    const-string v8, "4"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1922
    const-string v8, "area"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1923
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1926
    :cond_e
    const-string v7, "time_length"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1927
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

    .line 1928
    const-string v7, "time_length"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setDuration(Ljava/lang/String;)V

    .line 1929
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1930
    const-string v8, "-1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1931
    const-string v8, "text"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1932
    const-string v8, "5"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1933
    const-string v8, "time_length"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/meizu/video/client/util/CommonUtil;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1934
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1943
    :cond_f
    const-string v7, "rcompany"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1944
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

    .line 1945
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1946
    const-string v8, "-1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1947
    const-string v8, "text"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1948
    const-string v8, "7"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1949
    const-string v8, "rcompany"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1950
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1953
    :cond_10
    const-string v7, "ctime"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1954
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

    .line 1955
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1956
    const-string v8, "-1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1957
    const-string v8, "text"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1958
    const-string v8, "6"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1959
    const-string v8, "ctime"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1960
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2002
    :cond_11
    invoke-virtual {v5, v6}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 2003
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1814
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1842
    :cond_13
    const-string v7, "icon"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1843
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

    .line 1844
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1845
    const-string v8, "1"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1846
    const-string v8, "image"

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1847
    const-string v8, "icon"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1848
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 2272
    :catch_0
    move-exception v1

    .line 2273
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 2009
    :cond_14
    :try_start_1
    const-string v1, "block"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2010
    const-string v1, "block"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 2011
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2012
    const/4 v3, 0x0

    .line 2013
    const/4 v2, 0x0

    .line 2014
    const/4 v1, 0x0

    move v6, v1

    move v1, v2

    move v2, v3

    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v6, v3, :cond_0

    .line 2015
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 2016
    if-eqz v8, :cond_2b

    .line 2017
    const-string v3, ""

    .line 2018
    const-string v4, "cname"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 2019
    const-string v3, "cname"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .line 2024
    :goto_4
    const-string v3, ""

    .line 2025
    const-string v4, "cate"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2026
    const-string v3, "cate"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2027
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

    .line 2028
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

    .line 2049
    :goto_5
    const-string v3, "video"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 2050
    const-string v3, "video"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 2051
    if-eqz v8, :cond_2b

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2b

    .line 2052
    const-string v3, "\u8ddf\u64ad\u5267\u573a"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2053
    add-int/lit8 v2, v2, 0x1

    .line 2054
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 2066
    :cond_16
    :goto_6
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_2b

    const/16 v9, 0x8

    if-ge v3, v9, :cond_2b

    .line 2067
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 2068
    if-eqz v9, :cond_29

    .line 2069
    new-instance v10, Lcom/meizu/video/client/ui/entity/RecommendEntity;

    invoke-direct {v10}, Lcom/meizu/video/client/ui/entity/RecommendEntity;-><init>()V

    .line 2070
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2071
    const-string v12, "cid"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 2072
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

    .line 2073
    :cond_17
    const-string v12, "cid"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setCid(Ljava/lang/String;)V

    .line 2078
    :cond_18
    const-string v12, "id"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 2079
    const-string v12, "id"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setVid(Ljava/lang/String;)V

    .line 2081
    :cond_19
    const-string v12, "title"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 2082
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

    .line 2083
    new-instance v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2084
    const-string v13, "-1"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 2085
    const-string v13, "text-title"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2086
    const-string v13, "title"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2087
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2093
    :cond_1a
    const-string v12, "icon"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 2094
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

    .line 2095
    new-instance v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2096
    const-string v13, "0"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 2097
    const-string v13, "image"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2098
    const-string v13, "icon"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2099
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2102
    :cond_1b
    const-string v12, "score"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 2103
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

    .line 2104
    new-instance v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2105
    const-string v13, "-1"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 2106
    const-string v13, "text-image"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2107
    const-string v13, "0"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2108
    const-string v13, "score"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2109
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2113
    :cond_1c
    const-string v12, "type"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 2114
    const-string v12, "type"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setMediaDataType(Ljava/lang/String;)V

    .line 2116
    :cond_1d
    const-string v12, "at"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 2117
    const-string v12, "at"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setMediaOperaton(Ljava/lang/String;)V

    .line 2128
    :cond_1e
    const-string v12, "director"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 2129
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

    .line 2130
    new-instance v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2131
    const-string v13, "-1"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 2132
    const-string v13, "text"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2133
    const-string v13, "1"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2134
    const-string v13, "director"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2135
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2138
    :cond_1f
    const-string v12, "actor"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 2139
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

    .line 2140
    new-instance v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2141
    const-string v13, "-1"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 2142
    const-string v13, "text"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2143
    const-string v13, "2"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2144
    const-string v13, "actor"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2145
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2148
    :cond_20
    const-string v12, "intro"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 2149
    const-string v12, "intro"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setIntro(Ljava/lang/String;)V

    .line 2151
    :cond_21
    const-string v12, "subcate"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 2152
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

    .line 2153
    new-instance v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2154
    const-string v13, "-1"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 2155
    const-string v13, "text"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2156
    const-string v13, "3"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2157
    const-string v13, "subcate"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2158
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2161
    :cond_22
    const-string v12, "area"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 2162
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

    .line 2163
    new-instance v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2164
    const-string v13, "-1"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 2165
    const-string v13, "text"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2166
    const-string v13, "4"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2167
    const-string v13, "area"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2168
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2171
    :cond_23
    const-string v12, "time_length"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_24

    .line 2172
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

    .line 2173
    const-string v12, "time_length"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setDuration(Ljava/lang/String;)V

    .line 2174
    new-instance v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2175
    const-string v13, "-1"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 2176
    const-string v13, "text"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2177
    const-string v13, "5"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2178
    const-string v13, "time_length"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/meizu/video/client/util/CommonUtil;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2179
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2188
    :cond_24
    const-string v12, "rcompany"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_25

    .line 2189
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

    .line 2190
    new-instance v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2191
    const-string v13, "-1"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 2192
    const-string v13, "text"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2193
    const-string v13, "7"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2194
    const-string v13, "rcompany"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2195
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2198
    :cond_25
    const-string v12, "ctime"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_26

    .line 2199
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

    .line 2200
    new-instance v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2201
    const-string v13, "-1"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 2202
    const-string v13, "text"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2203
    const-string v13, "6"

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2204
    const-string v13, "ctime"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2205
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2220
    :cond_26
    const-string v12, "stamp"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_27

    .line 2223
    :cond_27
    const-string v12, "tags"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 2235
    :cond_28
    invoke-virtual {v10, v11}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 2237
    const-string v9, "\u8ddf\u64ad\u5267\u573a"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 2238
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2066
    :cond_29
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 2030
    :cond_2a
    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2031
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2d

    .line 2014
    :cond_2b
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto/16 :goto_3

    .line 2034
    :cond_2c
    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2035
    const/4 v4, 0x1

    if-eq v1, v4, :cond_2b

    :cond_2d
    move-object v4, v3

    goto/16 :goto_5

    .line 2055
    :cond_2e
    const-string v3, "\u70ed\u64ad\u5267\u573a"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 2056
    add-int/lit8 v2, v2, 0x1

    .line 2057
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_6

    .line 2058
    :cond_2f
    const-string v3, "\u70ed\u95e8\u7535\u5f71"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2059
    add-int/lit8 v1, v1, 0x1

    .line 2060
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_6

    .line 2061
    :cond_30
    const-string v3, "5"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2062
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 2063
    :cond_31
    const-string v3, "4"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2064
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 2239
    :cond_32
    const-string v9, "\u70ed\u64ad\u5267\u573a"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 2240
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2241
    :cond_33
    const-string v9, "\u70ed\u95e8\u7535\u5f71"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 2242
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2243
    :cond_34
    const-string v9, "5"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 2244
    const/4 v9, 0x1

    if-ne v2, v9, :cond_35

    .line 2245
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 2246
    :cond_35
    const/4 v9, 0x2

    if-ne v2, v9, :cond_29

    .line 2247
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 2249
    :cond_36
    const-string v9, "4"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 2250
    const/4 v9, 0x1

    if-ne v1, v9, :cond_29

    .line 2251
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
    .line 45
    .local p1, msgListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/MsgEntity;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v17, searchListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/SearchEntity;>;"
    :try_start_0
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    .local v21, searchToalJson:Lorg/json/JSONObject;
    if-eqz v21, :cond_2

    .line 49
    const-string v2, ""

    .line 50
    .local v2, code:Ljava/lang/String;
    const-string v22, "code"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 51
    const-string v22, "code"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    :cond_0
    const-string v9, ""

    .line 54
    .local v9, msg:Ljava/lang/String;
    const-string v3, ""

    .line 55
    .local v3, data:Ljava/lang/String;
    const-string v22, "-1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 56
    const-string v22, "msg"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 57
    const-string v22, "msg"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 59
    :cond_1
    const-string v22, "data"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 60
    const-string v22, "data"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .end local v2           #code:Ljava/lang/String;
    .end local v3           #data:Ljava/lang/String;
    .end local v9           #msg:Ljava/lang/String;
    .end local v21           #searchToalJson:Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-object v17

    .line 62
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

    .line 63
    const-string v22, "msg"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 64
    const-string v22, "msg"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 65
    .local v18, searchMsgJson:Lorg/json/JSONObject;
    if-eqz v18, :cond_8

    .line 66
    const-string v22, "total"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 67
    const-string v22, "total"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 68
    .local v20, searchMsgTotalJson:Lorg/json/JSONArray;
    if-eqz v20, :cond_8

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v22

    if-lez v22, :cond_8

    .line 69
    if-nez p1, :cond_4

    .line 70
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .end local p1           #msgListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/MsgEntity;>;"
    .local v11, msgListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/MsgEntity;>;"
    move-object/from16 p1, v11

    .line 72
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

    .line 73
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 74
    .local v19, searchMsgTotalItemJson:Lorg/json/JSONObject;
    if-eqz v19, :cond_7

    .line 75
    new-instance v10, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct {v10}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    .line 76
    .local v10, msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    const-string v22, "key"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 77
    const-string v22, "key"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 79
    :cond_5
    const-string v22, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 80
    const-string v22, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setValue(Ljava/lang/String;)V

    .line 82
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v10           #msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 89
    .end local v5           #i:I
    .end local v18           #searchMsgJson:Lorg/json/JSONObject;
    .end local v19           #searchMsgTotalItemJson:Lorg/json/JSONObject;
    .end local v20           #searchMsgTotalJson:Lorg/json/JSONArray;
    :cond_8
    const-string v22, "data"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 90
    const-string v22, "data"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 91
    .local v15, searchDataJson:Lorg/json/JSONArray;
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v22

    if-lez v22, :cond_2

    .line 92
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v5, v0, :cond_2

    .line 93
    invoke-virtual {v15, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 94
    .local v12, searchDataItemJson:Lorg/json/JSONObject;
    if-eqz v12, :cond_17

    .line 95
    new-instance v16, Lcom/meizu/video/client/ui/entity/SearchEntity;

    invoke-direct/range {v16 .. v16}, Lcom/meizu/video/client/ui/entity/SearchEntity;-><init>()V

    .line 96
    .local v16, searchEntity:Lcom/meizu/video/client/ui/entity/SearchEntity;
    const-string v22, "vid"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 97
    const-string v22, "vid"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setVid(Ljava/lang/String;)V

    .line 99
    :cond_9
    const-string v22, "cid"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 100
    const-string v22, "cid"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setCid(Ljava/lang/String;)V

    .line 102
    :cond_a
    const-string v22, "mmsid"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 103
    const-string v22, "mmsid"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setMmsid(Ljava/lang/String;)V

    .line 105
    :cond_b
    const-string v22, "duration"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 106
    const-string v22, "duration"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setDuration(Ljava/lang/String;)V

    .line 108
    :cond_c
    const-string v22, "head_duration"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 109
    const-string v22, "head_duration"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setHead_duration(Ljava/lang/String;)V

    .line 111
    :cond_d
    const-string v22, "tail_duration"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 112
    const-string v22, "tail_duration"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setTail_duration(Ljava/lang/String;)V

    .line 114
    :cond_e
    const-string v22, "play_address"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 115
    const-string v22, "play_address"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setPlay_address(Ljava/lang/String;)V

    .line 118
    :cond_f
    const-string v22, "label"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 119
    const-string v22, "label"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 120
    .local v14, searchDataItemLabelListJson:Lorg/json/JSONArray;
    if-eqz v14, :cond_16

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v22

    if-lez v22, :cond_16

    .line 121
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v8, lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    const/4 v6, 0x0

    .local v6, j:I
    :goto_3
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v6, v0, :cond_15

    .line 123
    invoke-virtual {v14, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 124
    .local v13, searchDataItemLabelItemJson:Lorg/json/JSONObject;
    if-eqz v13, :cond_14

    .line 125
    new-instance v7, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v7}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 126
    .local v7, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v22, "size"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 127
    const-string v22, "size"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 129
    :cond_10
    const-string v22, "type"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 130
    const-string v22, "type"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 132
    :cond_11
    const-string v22, "key"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 133
    const-string v22, "key"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 135
    :cond_12
    const-string v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 136
    const-string v22, "value"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 138
    :cond_13
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v7           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 141
    .end local v13           #searchDataItemLabelItemJson:Lorg/json/JSONObject;
    :cond_15
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 144
    .end local v6           #j:I
    .end local v8           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .end local v14           #searchDataItemLabelListJson:Lorg/json/JSONArray;
    :cond_16
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v16           #searchEntity:Lcom/meizu/video/client/ui/entity/SearchEntity;
    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 151
    .end local v2           #code:Ljava/lang/String;
    .end local v3           #data:Ljava/lang/String;
    .end local v5           #i:I
    .end local v9           #msg:Ljava/lang/String;
    .end local v12           #searchDataItemJson:Lorg/json/JSONObject;
    .end local v15           #searchDataJson:Lorg/json/JSONArray;
    .end local v21           #searchToalJson:Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 152
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
    .line 1541
    .local p1, searchListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/SearchEntity;>;"
    .local p3, typeNumListMsgEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/MsgEntity;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1781
    :cond_0
    :goto_0
    return-void

    .line 1545
    :cond_1
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1546
    .local v12, searchToalJson:Lorg/json/JSONObject;
    if-eqz v12, :cond_0

    .line 1547
    const-string v17, "header"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1548
    const-string v17, "header"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 1549
    .local v9, searchHeaderJson:Lorg/json/JSONObject;
    if-eqz v9, :cond_2

    .line 1550
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1551
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 1555
    .end local v9           #searchHeaderJson:Lorg/json/JSONObject;
    :cond_2
    const-string v17, "1"

    invoke-virtual/range {p2 .. p2}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1556
    const-string v17, "body"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1557
    const-string v17, "body"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1558
    .local v7, searchBodyJson:Lorg/json/JSONObject;
    if-eqz v7, :cond_0

    .line 1560
    const/4 v13, 0x0

    .line 1561
    .local v13, searchTotal:I
    const-string v17, "total"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-eqz v17, :cond_3

    .line 1563
    :try_start_1
    const-string v17, "total"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1564
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

    .line 1569
    :cond_3
    :goto_1
    if-lez v13, :cond_0

    .line 1570
    :try_start_2
    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 1571
    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 1572
    .local v11, searchListJson:Lorg/json/JSONArray;
    if-eqz v11, :cond_14

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_14

    .line 1573
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v3, v0, :cond_14

    .line 1574
    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 1575
    .local v10, searchItemJson:Lorg/json/JSONObject;
    if-eqz v10, :cond_13

    .line 1576
    new-instance v8, Lcom/meizu/video/client/ui/entity/SearchEntity;

    invoke-direct {v8}, Lcom/meizu/video/client/ui/entity/SearchEntity;-><init>()V

    .line 1577
    .local v8, searchEntity:Lcom/meizu/video/client/ui/entity/SearchEntity;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1578
    .local v6, lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    const-string v17, "cid"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1583
    const-string v17, "cid"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setCid(Ljava/lang/String;)V

    .line 1586
    :cond_4
    const-string v17, "id"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1587
    const-string v17, "id"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setVid(Ljava/lang/String;)V

    .line 1589
    :cond_5
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1590
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

    .line 1591
    new-instance v5, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1592
    .local v5, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1593
    const-string v17, "text-title"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1594
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1595
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1601
    .end local v5           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_6
    const-string v17, "icon"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1602
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

    .line 1603
    new-instance v5, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1604
    .restart local v5       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1605
    const-string v17, "image"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1606
    const-string v17, "icon"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1607
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1610
    .end local v5           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_7
    const-string v17, "score"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1611
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

    .line 1612
    new-instance v5, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1613
    .restart local v5       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v17, "-1"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1614
    const-string v17, "text-image"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1615
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1616
    const-string v17, "score"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1617
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1621
    .end local v5           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_8
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1622
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setMediaDataType(Ljava/lang/String;)V

    .line 1624
    :cond_9
    const-string v17, "at"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1625
    const-string v17, "at"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setMediaOperaton(Ljava/lang/String;)V

    .line 1636
    :cond_a
    const-string v17, "director"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1637
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

    .line 1638
    new-instance v5, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1639
    .restart local v5       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v17, "-1"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1640
    const-string v17, "text"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1641
    const-string v17, "1"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1642
    const-string v17, "director"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1643
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1646
    .end local v5           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_b
    const-string v17, "actor"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1647
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

    .line 1648
    new-instance v5, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1649
    .restart local v5       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v17, "-1"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1650
    const-string v17, "text"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1651
    const-string v17, "2"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1652
    const-string v17, "actor"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1656
    .end local v5           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_c
    const-string v17, "intro"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 1657
    const-string v17, "intro"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setIntro(Ljava/lang/String;)V

    .line 1659
    :cond_d
    const-string v17, "subcate"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1660
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

    .line 1661
    new-instance v5, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1662
    .restart local v5       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v17, "-1"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1663
    const-string v17, "text"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1664
    const-string v17, "3"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1665
    const-string v17, "subcate"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1666
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    .end local v5           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_e
    const-string v17, "area"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1670
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

    .line 1671
    new-instance v5, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1672
    .restart local v5       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v17, "-1"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1673
    const-string v17, "text"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1674
    const-string v17, "4"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1675
    const-string v17, "area"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1676
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1679
    .end local v5           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_f
    const-string v17, "time_length"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1680
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

    .line 1681
    const-string v17, "time_length"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setDuration(Ljava/lang/String;)V

    .line 1682
    new-instance v5, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1683
    .restart local v5       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v17, "-1"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1684
    const-string v17, "text"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1685
    const-string v17, "5"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1686
    const-string v17, "time_length"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/meizu/video/client/util/CommonUtil;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1687
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1696
    .end local v5           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_10
    const-string v17, "rcompany"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 1697
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

    .line 1698
    new-instance v5, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1699
    .restart local v5       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v17, "-1"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1700
    const-string v17, "text"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1701
    const-string v17, "7"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1702
    const-string v17, "rcompany"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1703
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1706
    .end local v5           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_11
    const-string v17, "ctime"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 1707
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

    .line 1708
    new-instance v5, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 1709
    .restart local v5       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v17, "-1"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 1710
    const-string v17, "text"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 1711
    const-string v17, "6"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 1712
    const-string v17, "ctime"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 1713
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1734
    .end local v5           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_12
    invoke-virtual {v8, v6}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 1735
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    .end local v6           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .end local v8           #searchEntity:Lcom/meizu/video/client/ui/entity/SearchEntity;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 1741
    .end local v3           #i:I
    .end local v10           #searchItemJson:Lorg/json/JSONObject;
    .end local v11           #searchListJson:Lorg/json/JSONArray;
    :cond_14
    const-string v17, "subNav"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1742
    const-string v17, "subNav"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 1743
    .local v15, searchTypeNumTotalJson:Lorg/json/JSONArray;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 1744
    const/4 v4, 0x0

    .local v4, j:I
    :goto_3
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_0

    .line 1745
    invoke-virtual {v15, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 1746
    .local v14, searchTypeNumItemJson:Lorg/json/JSONObject;
    if-eqz v14, :cond_17

    .line 1747
    new-instance v16, Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-direct/range {v16 .. v16}, Lcom/meizu/video/client/ui/entity/MsgEntity;-><init>()V

    .line 1748
    .local v16, typeNumItemMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    const-string v17, "cname"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 1749
    const-string v17, "cname"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 1751
    :cond_15
    const-string v17, "num"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 1752
    const-string v17, "num"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setValue(Ljava/lang/String;)V

    .line 1760
    :cond_16
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1744
    .end local v16           #typeNumItemMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1778
    .end local v4           #j:I
    .end local v7           #searchBodyJson:Lorg/json/JSONObject;
    .end local v12           #searchToalJson:Lorg/json/JSONObject;
    .end local v13           #searchTotal:I
    .end local v14           #searchTypeNumItemJson:Lorg/json/JSONObject;
    .end local v15           #searchTypeNumTotalJson:Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 1779
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 1565
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
    .line 2290
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

    .line 2496
    :cond_0
    :goto_0
    return-void

    .line 2294
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2295
    if-eqz v1, :cond_0

    .line 2296
    const-string v2, "header"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2297
    const-string v2, "header"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2298
    if-eqz v2, :cond_2

    .line 2299
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2300
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/MsgEntity;->setKey(Ljava/lang/String;)V

    .line 2304
    :cond_2
    const-string v2, "1"

    invoke-virtual/range {p5 .. p5}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2305
    const-string v2, "body"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2306
    const-string v2, "body"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2307
    if-eqz v3, :cond_0

    .line 2308
    const-string v1, "cate"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2309
    const-string v1, "cate"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2310
    if-eqz v4, :cond_9

    .line 2311
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    .line 2312
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2313
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 2314
    if-eqz v5, :cond_8

    .line 2315
    new-instance v6, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;

    invoke-direct {v6}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;-><init>()V

    .line 2316
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setCid(Ljava/lang/String;)V

    .line 2317
    const-string v1, "name"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2318
    const-string v1, "name"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setName(Ljava/lang/String;)V

    .line 2320
    :cond_3
    const-string v1, "sub"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2321
    const-string v1, "sub"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 2322
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 2323
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2324
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_6

    .line 2325
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 2326
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2327
    if-eqz v8, :cond_5

    .line 2328
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2329
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2331
    :cond_4
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2332
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2335
    :cond_5
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2324
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2337
    :cond_6
    invoke-virtual {v6, v7}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setTypeTitem1ListEntity(Ljava/util/ArrayList;)V

    .line 2340
    :cond_7
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2311
    :cond_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    .line 2346
    :cond_9
    const-string v1, "area"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2347
    const-string v1, "area"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2348
    if-eqz v4, :cond_f

    .line 2349
    const/4 v1, 0x0

    move v2, v1

    :goto_3
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_f

    .line 2350
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2351
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 2352
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_e

    .line 2353
    new-instance v6, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;

    invoke-direct {v6}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;-><init>()V

    .line 2354
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setCid(Ljava/lang/String;)V

    .line 2355
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2356
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_d

    .line 2357
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 2358
    if-eqz v8, :cond_c

    .line 2359
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2360
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2361
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2363
    :cond_a
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2364
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2366
    :cond_b
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2356
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2369
    :cond_d
    invoke-virtual {v6, v7}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setTypeTitem1ListEntity(Ljava/util/ArrayList;)V

    .line 2370
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2349
    :cond_e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_3

    .line 2376
    :cond_f
    const-string v1, "year"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2377
    const-string v1, "year"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2378
    if-eqz v4, :cond_15

    .line 2379
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_15

    .line 2380
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2381
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 2382
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_14

    .line 2383
    new-instance v6, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;

    invoke-direct {v6}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;-><init>()V

    .line 2384
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setCid(Ljava/lang/String;)V

    .line 2385
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2386
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_13

    .line 2387
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 2388
    if-eqz v8, :cond_12

    .line 2389
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2390
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 2391
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2393
    :cond_10
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 2394
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2396
    :cond_11
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2386
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2399
    :cond_13
    invoke-virtual {v6, v7}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setTypeTitem1ListEntity(Ljava/util/ArrayList;)V

    .line 2400
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2379
    :cond_14
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_5

    .line 2406
    :cond_15
    const-string v1, "order"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2407
    const-string v1, "order"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2408
    if-eqz v3, :cond_0

    .line 2409
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 2410
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2411
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2412
    if-eqz v4, :cond_25

    .line 2413
    new-instance v5, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;

    invoke-direct {v5}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;-><init>()V

    .line 2414
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setCid(Ljava/lang/String;)V

    .line 2415
    const-string v1, "album"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2416
    const-string v1, "album"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 2417
    if-eqz v6, :cond_1a

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1a

    .line 2418
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2419
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_19

    .line 2420
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 2421
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2422
    if-eqz v8, :cond_18

    .line 2423
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 2424
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2426
    :cond_16
    const-string v10, "shortname"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 2427
    const-string v10, "shortname"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2429
    :cond_17
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 2430
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2433
    :cond_18
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2419
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2435
    :cond_19
    invoke-virtual {v5, v7}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setTypeTitem1ListEntity(Ljava/util/ArrayList;)V

    .line 2438
    :cond_1a
    const-string v1, "vrsvideo"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2439
    const-string v1, "vrsvideo"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 2440
    if-eqz v6, :cond_1f

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1f

    .line 2441
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2442
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_1e

    .line 2443
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 2444
    new-instance v9, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v9}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2445
    if-eqz v8, :cond_1d

    .line 2446
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 2447
    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2449
    :cond_1b
    const-string v10, "shortname"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 2450
    const-string v10, "shortname"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2452
    :cond_1c
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 2453
    const-string v10, "name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2456
    :cond_1d
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2442
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2458
    :cond_1e
    invoke-virtual {v5, v7}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setTypeTitem2ListEntity(Ljava/util/ArrayList;)V

    .line 2461
    :cond_1f
    const-string v1, "ptvvideo"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2462
    const-string v1, "ptvvideo"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2463
    if-eqz v4, :cond_24

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_24

    .line 2464
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2465
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_23

    .line 2466
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 2467
    new-instance v8, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v8}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 2468
    if-eqz v7, :cond_22

    .line 2469
    const-string v9, "id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 2470
    const-string v9, "id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 2472
    :cond_20
    const-string v9, "shortname"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 2473
    const-string v9, "shortname"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/meizu/video/client/ui/entity/LableEntity;->setKey(Ljava/lang/String;)V

    .line 2475
    :cond_21
    const-string v9, "name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 2476
    const-string v9, "name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 2479
    :cond_22
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2465
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2481
    :cond_23
    invoke-virtual {v5, v6}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->setTypeTitem3ListEntity(Ljava/util/ArrayList;)V

    .line 2484
    :cond_24
    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2409
    :cond_25
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_7

    .line 2494
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

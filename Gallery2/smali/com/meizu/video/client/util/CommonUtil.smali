.class public Lcom/meizu/video/client/util/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "CommonUtil"

    sput-object v0, Lcom/meizu/video/client/util/CommonUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "s"

    .prologue
    .line 58
    const/16 v11, 0x10

    new-array v3, v11, [C

    fill-array-data v3, :array_0

    .line 62
    .local v3, hexDigits:[C
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 64
    .local v0, btInput:[B
    const-string v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 66
    .local v9, mdInst:Ljava/security/MessageDigest;
    invoke-virtual {v9, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 68
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 70
    .local v8, md:[B
    array-length v5, v8

    .line 71
    .local v5, j:I
    mul-int/lit8 v11, v5, 0x2

    new-array v10, v11, [C

    .line 72
    .local v10, str:[C
    const/4 v6, 0x0

    .line 73
    .local v6, k:I
    const/4 v4, 0x0

    .local v4, i:I
    move v7, v6

    .end local v6           #k:I
    .local v7, k:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 74
    aget-byte v1, v8, v4

    .line 75
    .local v1, byte0:B
    add-int/lit8 v6, v7, 0x1

    .end local v7           #k:I
    .restart local v6       #k:I
    ushr-int/lit8 v11, v1, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v3, v11

    aput-char v11, v10, v7

    .line 76
    add-int/lit8 v7, v6, 0x1

    .end local v6           #k:I
    .restart local v7       #k:I
    and-int/lit8 v11, v1, 0xf

    aget-char v11, v3, v11

    aput-char v11, v10, v6

    .line 73
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78
    .end local v1           #byte0:B
    :cond_0
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0           #btInput:[B
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v7           #k:I
    .end local v8           #md:[B
    .end local v9           #mdInst:Ljava/security/MessageDigest;
    .end local v10           #str:[C
    :goto_1
    return-object v11

    .line 80
    :catch_0
    move-exception v2

    .line 81
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    const/4 v11, 0x0

    goto :goto_1

    .line 58
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public static declared-synchronized RecombinationBlockData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter "direct"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, followingTVRecommendBlockListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    .local p1, hitTVRecommendBlockListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    .local p2, hitFilmRecommendBlockListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    const-class v8, Lcom/meizu/video/client/util/CommonUtil;

    monitor-enter v8

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    .local v6, recommendBlockListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 480
    :cond_0
    const/4 v6, 0x0

    .line 515
    .end local v6           #recommendBlockListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    :cond_1
    monitor-exit v8

    return-object v6

    .line 482
    .restart local v6       #recommendBlockListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    :cond_2
    const/4 v7, 0x2

    if-ne p3, v7, :cond_5

    .line 483
    :try_start_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/RecommendEntity;

    .line 484
    .local v0, followingTVRecommendBlockEntity:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 478
    .end local v0           #followingTVRecommendBlockEntity:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #recommendBlockListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 486
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #recommendBlockListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    :cond_3
    :try_start_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/RecommendEntity;

    .line 487
    .local v1, hitFilmRecommendBlockEntity:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 489
    .end local v1           #hitFilmRecommendBlockEntity:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/video/client/ui/entity/RecommendEntity;

    .line 490
    .local v2, hitTVRecommendBlockEntity:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 493
    .end local v2           #hitTVRecommendBlockEntity:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_5
    const/4 v5, 0x0

    .line 494
    .local v5, minSize:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v7, v9, :cond_6

    .line 495
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 497
    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v5, v7, :cond_7

    .line 498
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 500
    :cond_7
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v5, :cond_8

    .line 501
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 505
    :cond_8
    move v3, v5

    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_9

    .line 506
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 508
    :cond_9
    move v3, v5

    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_a

    .line 509
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 511
    :cond_a
    move v3, v5

    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 512
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 511
    add-int/lit8 v3, v3, 0x1

    goto :goto_6
.end method

.method public static changeRecommendData(Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .locals 13
    .parameter
    .parameter "bigImageNum"
    .parameter "smallImageNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, recommendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v8, recommendListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;>;"
    if-nez p0, :cond_1

    .line 154
    :cond_0
    return-object v8

    .line 98
    :cond_1
    const/4 v9, 0x0

    .line 99
    .local v9, recommendListItemEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    const/4 v1, 0x0

    .line 100
    .local v1, createFlag:Z
    const/4 v6, -0x1

    .line 101
    .local v6, lastImageSize:I
    const/4 v0, 0x0

    .line 102
    .local v0, bigNum:I
    const/4 v10, 0x0

    .line 104
    .local v10, smallNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_0

    .line 105
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/video/client/ui/entity/RecommendEntity;

    .line 106
    .local v7, recommendEntity:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    if-eqz v7, :cond_5

    .line 107
    invoke-virtual {v7}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getLableListEntity()Ljava/util/ArrayList;

    move-result-object v5

    .line 108
    .local v5, lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    if-eqz v5, :cond_3

    .line 109
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_3

    .line 110
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/video/client/ui/entity/LableEntity;

    .line 111
    .local v4, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    if-eqz v4, :cond_c

    .line 112
    const-string v11, "image"

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "1"

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/LableEntity;->getSize()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 113
    const/4 v11, -0x1

    if-ne v6, v11, :cond_6

    .line 114
    const/4 v1, 0x1

    .line 121
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 122
    const/4 v6, 0x1

    .line 143
    .end local v3           #j:I
    .end local v4           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    .line 144
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #recommendListItemEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .restart local v9       #recommendListItemEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    const/4 v1, 0x0

    .line 146
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_4
    if-eqz v9, :cond_5

    .line 150
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v5           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .restart local v3       #j:I
    .restart local v4       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    .restart local v5       #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_6
    if-eq v0, p1, :cond_7

    const/4 v11, 0x1

    if-eq v6, v11, :cond_2

    .line 117
    :cond_7
    const/4 v1, 0x1

    .line 118
    const/4 v0, 0x0

    goto :goto_2

    .line 124
    :cond_8
    const-string v11, "image"

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v11, "0"

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/LableEntity;->getSize()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 125
    const/4 v11, -0x1

    if-ne v6, v11, :cond_a

    .line 126
    const/4 v1, 0x1

    .line 133
    :cond_9
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 134
    const/4 v6, 0x0

    .line 135
    goto :goto_3

    .line 128
    :cond_a
    if-eq v10, p2, :cond_b

    if-eqz v6, :cond_9

    .line 129
    :cond_b
    const/4 v1, 0x1

    .line 130
    const/4 v10, 0x0

    goto :goto_4

    .line 109
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static dip2px(Landroid/content/Context;D)I
    .locals 5
    .parameter "context"
    .parameter "dipValue"

    .prologue
    .line 417
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 418
    .local v0, scale:F
    float-to-double v1, v0

    mul-double/2addr v1, p1

    const-wide/high16 v3, 0x3fe0

    add-double/2addr v1, v3

    double-to-int v1, v1

    return v1
.end method

.method public static dip2px(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "dipValue"

    .prologue
    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 413
    .local v0, scale:F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getAreaNameByCidAndAreaid(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter "cid"
    .parameter "areaid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, areaTypeAreaYearOrderListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;>;"
    const-string v0, ""

    .line 325
    .local v0, areaName:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p2, :cond_0

    const-string v6, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 326
    const/4 v4, 0x0

    .line 327
    .local v4, typeAreaYearOrderEntity:Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 328
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #typeAreaYearOrderEntity:Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;
    check-cast v4, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;

    .line 329
    .restart local v4       #typeAreaYearOrderEntity:Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;
    if-eqz v4, :cond_2

    .line 330
    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->getCid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 331
    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->getTypeTitem1ListEntity()Ljava/util/ArrayList;

    move-result-object v5

    .line 332
    .local v5, typeTitem1ListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 333
    const/4 v3, 0x0

    .line 334
    .local v3, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 335
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    check-cast v3, Lcom/meizu/video/client/ui/entity/LableEntity;

    .line 336
    .restart local v3       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    if-eqz v3, :cond_1

    .line 337
    invoke-virtual {v3}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 338
    invoke-virtual {v3}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 349
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    .end local v4           #typeAreaYearOrderEntity:Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;
    .end local v5           #typeTitem1ListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_0
    return-object v0

    .line 334
    .restart local v1       #i:I
    .restart local v2       #j:I
    .restart local v3       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    .restart local v4       #typeAreaYearOrderEntity:Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;
    .restart local v5       #typeTitem1ListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 327
    .end local v2           #j:I
    .end local v3           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    .end local v5           #typeTitem1ListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getChannelDetailFromLS(Ljava/util/ArrayList;Lcom/meizu/video/client/ui/entity/MsgEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 5
    .parameter
    .parameter "msgEntity"
    .parameter "cid"
    .parameter "itemid"
    .parameter "date"
    .parameter "areaid"
    .parameter "orderby"
    .parameter "sort"
    .parameter "start"
    .parameter "num"
    .parameter "ChannelType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;",
            ">;",
            "Lcom/meizu/video/client/ui/entity/MsgEntity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, channelDetailListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;>;"
    invoke-static/range {p2 .. p10}, Lcom/meizu/video/client/common/UrlSettings;->getLSChannelProgramUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, channelDetailUrl:Ljava/lang/String;
    sget-object v2, Lcom/meizu/video/client/util/CommonUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChannelProgramFromLS->channelProgramUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {v1}, Lcom/meizu/video/client/util/HttpUtil;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, channelDetailJsonData:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    invoke-static {v0, p0, p1}, Lcom/meizu/video/client/util/JsonParse;->parseChannelDetailFromLS(Ljava/lang/String;Ljava/util/ArrayList;Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 211
    :cond_0
    return-void
.end method

.method public static getChannelFromLS(Ljava/util/ArrayList;Lcom/meizu/video/client/ui/entity/MsgEntity;)V
    .locals 5
    .parameter
    .parameter "msgEntity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelEntity;",
            ">;",
            "Lcom/meizu/video/client/ui/entity/MsgEntity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, channelListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelEntity;>;"
    invoke-static {}, Lcom/meizu/video/client/common/UrlSettings;->getLSChannelUrl()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, channelUrl:Ljava/lang/String;
    sget-object v2, Lcom/meizu/video/client/util/CommonUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChannelFromLS->channelUrl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {v1}, Lcom/meizu/video/client/util/HttpUtil;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, channelJsonData:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    invoke-static {v0, p0, p1}, Lcom/meizu/video/client/util/JsonParse;->parseChannelFromLS(Ljava/lang/String;Ljava/util/ArrayList;Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 186
    invoke-static {p0}, Lcom/meizu/video/client/util/CommonUtil;->sortChannel(Ljava/util/ArrayList;)V

    .line 188
    :cond_0
    return-void
.end method

.method public static getChannelNameByCid(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "cid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelEntity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, chanelListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelEntity;>;"
    const-string v1, ""

    .line 298
    .local v1, channelName:Ljava/lang/String;
    const-string v4, "164"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "86"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v2, v1

    .line 313
    .end local v1           #channelName:Ljava/lang/String;
    .local v2, channelName:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 301
    .end local v2           #channelName:Ljava/lang/String;
    .restart local v1       #channelName:Ljava/lang/String;
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, chanelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 304
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #chanelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    check-cast v0, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    .line 305
    .restart local v0       #chanelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    if-eqz v0, :cond_3

    .line 306
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 307
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    .end local v0           #chanelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    .end local v3           #i:I
    :cond_2
    move-object v2, v1

    .line 313
    .end local v1           #channelName:Ljava/lang/String;
    .restart local v2       #channelName:Ljava/lang/String;
    goto :goto_0

    .line 303
    .end local v2           #channelName:Ljava/lang/String;
    .restart local v0       #chanelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    .restart local v1       #channelName:Ljava/lang/String;
    .restart local v3       #i:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getChannelProgramDetailFromLS(Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;Lcom/meizu/video/client/ui/entity/MsgEntity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "channelProgramDetailEntity"
    .parameter "msgEntity"
    .parameter "id"
    .parameter "vtype"
    .parameter "ChannelProgramType"

    .prologue
    .line 222
    invoke-static {p2, p3, p4}, Lcom/meizu/video/client/common/UrlSettings;->getLSChannelProgramDetailUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, channelProgramDetailUrl:Ljava/lang/String;
    sget-object v2, Lcom/meizu/video/client/util/CommonUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChannelProgramDetailFromLS->channelProgramDetailUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {v1}, Lcom/meizu/video/client/util/HttpUtil;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, channelProgramDetailJsonData:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    invoke-static {v0, p0, p1}, Lcom/meizu/video/client/util/JsonParse;->parseChannelProgramDetailFromLS(Ljava/lang/String;Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 228
    :cond_0
    return-void
.end method

.method public static getDid(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 624
    const-string v5, ""

    sget-object v6, Lcom/meizu/video/client/common/Constant;->did:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 626
    :try_start_0
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 627
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 628
    .local v3, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v3, :cond_8

    const-string v2, "-"

    .line 629
    .local v2, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, imei:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, imsi:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 632
    :cond_0
    const-string v0, "-"

    .line 634
    :cond_1
    if-eqz v1, :cond_2

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 635
    :cond_2
    const-string v1, "-"

    .line 637
    :cond_3
    if-eqz v2, :cond_4

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 638
    :cond_4
    const-string v2, "-"

    .line 640
    :cond_5
    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 641
    :cond_6
    const-string v5, ""

    sput-object v5, Lcom/meizu/video/client/common/Constant;->did:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .end local v0           #imei:Ljava/lang/String;
    .end local v1           #imsi:Ljava/lang/String;
    .end local v2           #macAddress:Ljava/lang/String;
    .end local v3           #wifiInfo:Landroid/net/wifi/WifiInfo;
    .end local v4           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_7
    :goto_1
    sget-object v5, Lcom/meizu/video/client/common/Constant;->did:Ljava/lang/String;

    return-object v5

    .line 628
    .restart local v3       #wifiInfo:Landroid/net/wifi/WifiInfo;
    .restart local v4       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_8
    :try_start_1
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 643
    .restart local v0       #imei:Ljava/lang/String;
    .restart local v1       #imsi:Ljava/lang/String;
    .restart local v2       #macAddress:Ljava/lang/String;
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "M040"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Meizu"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/video/client/util/CommonUtil;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/meizu/video/client/common/Constant;->did:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 645
    .end local v0           #imei:Ljava/lang/String;
    .end local v1           #imsi:Ljava/lang/String;
    .end local v2           #macAddress:Ljava/lang/String;
    .end local v3           #wifiInfo:Landroid/net/wifi/WifiInfo;
    .end local v4           #wifiManager:Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static getEpisodesVideoDownLoadUrl(Lcom/meizu/video/client/ui/entity/EpisodesEntity;I)Ljava/lang/String;
    .locals 2
    .parameter "episodesEntity"
    .parameter "videoQualityType"

    .prologue
    .line 460
    const-string v0, ""

    .line 461
    .local v0, downloadUrl:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getDownload_address()Ljava/lang/String;

    move-result-object v0

    .line 466
    :goto_0
    return-object v0

    .line 464
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getDownload_address_other()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFullFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "title"
    .parameter "videoUrl"

    .prologue
    const/4 v7, -0x1

    .line 445
    const-string v6, "."

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 446
    .local v4, start:I
    const-string v6, "?"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 448
    .local v2, end:I
    if-eq v4, v7, :cond_0

    if-eq v2, v7, :cond_0

    if-ge v4, v2, :cond_0

    .line 449
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 453
    .local v5, suffixName:Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Video/Download/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v1, dirs:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 456
    .local v0, createDirs:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 451
    .end local v0           #createDirs:Z
    .end local v1           #dirs:Ljava/io/File;
    .end local v3           #path:Ljava/lang/String;
    .end local v5           #suffixName:Ljava/lang/String;
    :cond_0
    const-string v5, ".mp4"

    .restart local v5       #suffixName:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getLSLoginUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 652
    const-string v1, ""

    .line 653
    .local v1, str:Ljava/lang/String;
    invoke-static {p0}, Lcom/meizu/video/client/util/CommonUtil;->getDid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, did:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 656
    .local v2, uuid:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://dc.letv.com/m/l?&Android&4.1&0101200990063&3.1&M040&Meizu&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&1280x800&320&wifi&-&-&0101200990063&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&phone&1.1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 658
    .end local v2           #uuid:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mContext"
    .parameter "position"

    .prologue
    .line 164
    const-string v1, ""

    .line 166
    .local v1, str:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 167
    .local v0, i:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0           #i:I
    :goto_0
    return-object v1

    .line 168
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getOrderListByCidAndMediaData(Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .parameter "cid"
    .parameter "channelType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/LableEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, orderTypeAreaYearOrderListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;>;"
    const/4 v2, 0x0

    .line 360
    .local v2, typeTitemListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 361
    const/4 v1, 0x0

    .line 362
    .local v1, typeAreaYearOrderEntity:Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 363
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #typeAreaYearOrderEntity:Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;
    check-cast v1, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;

    .line 364
    .restart local v1       #typeAreaYearOrderEntity:Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;
    if-eqz v1, :cond_5

    .line 365
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 366
    packed-switch p2, :pswitch_data_0

    .line 397
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->getTypeTitem1ListEntity()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 398
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->getTypeTitem1ListEntity()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #typeTitemListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 408
    .end local v0           #i:I
    .end local v1           #typeAreaYearOrderEntity:Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;
    .restart local v2       #typeTitemListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_0
    :goto_1
    return-object v2

    .line 368
    .restart local v0       #i:I
    .restart local v1       #typeAreaYearOrderEntity:Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;
    :pswitch_0
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->getTypeTitem1ListEntity()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 369
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->getTypeTitem1ListEntity()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #typeTitemListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    check-cast v2, Ljava/util/ArrayList;

    .restart local v2       #typeTitemListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    goto :goto_1

    .line 373
    :pswitch_1
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->getTypeTitem2ListEntity()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 374
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->getTypeTitem2ListEntity()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #typeTitemListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 376
    .restart local v2       #typeTitemListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 379
    :cond_2
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->getTypeTitem1ListEntity()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 380
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->getTypeTitem1ListEntity()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #typeTitemListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    check-cast v2, Ljava/util/ArrayList;

    .restart local v2       #typeTitemListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    goto :goto_1

    .line 385
    :pswitch_2
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->getTypeTitem3ListEntity()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 386
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->getTypeTitem3ListEntity()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #typeTitemListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 388
    .restart local v2       #typeTitemListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 391
    :cond_4
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->getTypeTitem1ListEntity()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 392
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/TypeAreaYearOrderEntity;->getTypeTitem1ListEntity()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #typeTitemListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    check-cast v2, Ljava/util/ArrayList;

    .restart local v2       #typeTitemListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    goto :goto_1

    .line 362
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 366
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getRecommendFromLS(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/meizu/video/client/ui/entity/MsgEntity;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "msgEntity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 258
    .local p0, recommendFocusListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    .local p1, followingTVRecommendBlockListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    .local p2, hitTVRecommendBlockListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    .local p3, hitFilmRecommendBlockListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    invoke-static {}, Lcom/meizu/video/client/common/UrlSettings;->getLSRecommendUrl()Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, recommendUrl:Ljava/lang/String;
    sget-object v1, Lcom/meizu/video/client/util/CommonUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecommendFromLS->recommendUrl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {v6}, Lcom/meizu/video/client/util/HttpUtil;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, recommendJsonData:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 262
    invoke-static/range {v0 .. v5}, Lcom/meizu/video/client/util/JsonParse;->parseRecommendFromLS(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 264
    :cond_0
    return-void
.end method

.method public static getSearchFromLS(Ljava/util/ArrayList;Lcom/meizu/video/client/ui/entity/MsgEntity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .parameter
    .parameter "msgEntity"
    .parameter
    .parameter "keyword"
    .parameter "c"
    .parameter "o"
    .parameter "start"
    .parameter "num"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/SearchEntity;",
            ">;",
            "Lcom/meizu/video/client/ui/entity/MsgEntity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/MsgEntity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, searchListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/SearchEntity;>;"
    .local p2, typeNumListMsgEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/MsgEntity;>;"
    invoke-static {p3, p4, p5, p6, p7}, Lcom/meizu/video/client/common/UrlSettings;->getLSSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, searchUrl:Ljava/lang/String;
    sget-object v2, Lcom/meizu/video/client/util/CommonUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSearchFromLS->searchUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {v1}, Lcom/meizu/video/client/util/HttpUtil;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, searchJsonData:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    invoke-static {v0, p0, p1, p2}, Lcom/meizu/video/client/util/JsonParse;->parseSearchFromLS(Ljava/lang/String;Ljava/util/ArrayList;Lcom/meizu/video/client/ui/entity/MsgEntity;Ljava/util/ArrayList;)V

    .line 248
    :cond_0
    return-void
.end method

.method public static getTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "seconds"

    .prologue
    .line 552
    const-wide/16 v0, 0x0

    .line 555
    .local v0, duration:J
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 560
    :goto_0
    const-string v2, ""

    .line 563
    .local v2, durationString:Ljava/lang/String;
    const-wide/16 v9, 0xe10

    div-long v3, v0, v9

    .line 564
    .local v3, hour:J
    const-wide/16 v9, 0xe10

    rem-long/2addr v0, v9

    .line 565
    const-wide/16 v9, 0x3c

    div-long v5, v0, v9

    .line 566
    .local v5, minute:J
    const-wide/16 v9, 0x3c

    rem-long/2addr v0, v9

    .line 567
    move-wide v7, v0

    .line 569
    .local v7, second:J
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-eqz v9, :cond_0

    .line 570
    const-string v9, "%d:%02d:%02d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 575
    :goto_1
    return-object v2

    .line 572
    :cond_0
    const-string v9, "%02d:%02d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 556
    .end local v2           #durationString:Ljava/lang/String;
    .end local v3           #hour:J
    .end local v5           #minute:J
    .end local v7           #second:J
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method public static getTypeAreaYearFromLs(Lcom/meizu/video/client/ui/entity/MsgEntity;Lcom/meizu/video/client/ui/entity/MsgEntity;)V
    .locals 8
    .parameter "channelMsgEntity"
    .parameter "typeMsgEntity"

    .prologue
    .line 273
    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getChannelListEntity()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getChannelListEntity()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 274
    :cond_0
    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getChannelListEntity()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/meizu/video/client/util/CommonUtil;->getChannelFromLS(Ljava/util/ArrayList;Lcom/meizu/video/client/ui/entity/MsgEntity;)V

    .line 277
    :cond_1
    invoke-static {}, Lcom/meizu/video/client/common/UrlSettings;->getLSTypesUrl()Ljava/lang/String;

    move-result-object v7

    .line 278
    .local v7, typeAreaYearUrl:Ljava/lang/String;
    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getChannelListEntity()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getChannelListEntity()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 279
    sget-object v1, Lcom/meizu/video/client/util/CommonUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTypeAreaYearFromLs->typeAreaYearUrl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {v7}, Lcom/meizu/video/client/util/HttpUtil;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, typeAreaYearJsonData:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 282
    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getCateTypeAreaYearOrderListEntity()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getAreaTypeAreaYearOrderListEntity()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getYearTypeAreaYearOrderListEntity()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getOrderTypeAreaYearOrderListEntity()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getChannelListEntity()Ljava/util/ArrayList;

    move-result-object v6

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/meizu/video/client/util/JsonParse;->parseTypeAreaYearFromLs(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/meizu/video/client/ui/entity/MsgEntity;Ljava/util/ArrayList;)V

    .line 288
    .end local v0           #typeAreaYearJsonData:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static ifNeedForceUpdate(Landroid/content/Context;)Z
    .locals 11
    .parameter "mContext"

    .prologue
    const/4 v2, 0x0

    .line 602
    sget-object v0, Lcom/meizu/video/client/util/CommonUtil;->TAG:Ljava/lang/String;

    const-string v1, "ifNeedForceUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v6, "com.meizu.mstore.update"

    .line 604
    .local v6, AUTHORITY:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/systemapps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 605
    .local v7, URI_STRING:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 606
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 608
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    const-string v0, "needUpdate"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 610
    .local v10, need:I
    const/4 v0, 0x2

    if-ne v10, v0, :cond_0

    .line 611
    const/4 v0, 0x1

    .line 617
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 620
    .end local v10           #need:I
    :goto_0
    return v0

    .line 614
    :catch_0
    move-exception v9

    .line 615
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    .end local v9           #e:Ljava/lang/Exception;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 620
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 617
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 427
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 429
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 441
    :cond_0
    :goto_0
    return v3

    .line 432
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 433
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 434
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 435
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 436
    const/4 v3, 0x1

    goto :goto_0

    .line 434
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static reportLoginForLS(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 662
    invoke-static {p0}, Lcom/meizu/video/client/util/CommonUtil;->getLSLoginUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, loginUrl:Ljava/lang/String;
    sget-object v1, Lcom/meizu/video/client/util/CommonUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportLoginForLS->loginUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    :try_start_0
    new-instance v1, Lcom/meizu/video/client/util/CommonUtil$1;

    invoke-direct {v1, v0}, Lcom/meizu/video/client/util/CommonUtil$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/meizu/video/client/util/CommonUtil$1;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 671
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setActionbarStyle(Landroid/app/Activity;Landroid/app/ActionBar;I)V
    .locals 6
    .parameter "activity"
    .parameter "bar"
    .parameter "type"

    .prologue
    const v5, 0x7f0c0006

    const/high16 v4, 0x7f02

    .line 524
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 525
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 529
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 530
    const v2, 0x102026f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 531
    .local v1, title:Landroid/widget/TextView;
    const v2, 0x1020270

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 532
    .local v0, subtitle:Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 533
    if-eqz v0, :cond_2

    .line 534
    const v2, 0x7f0c0005

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 535
    invoke-virtual {v0, p0, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 544
    :cond_0
    :goto_1
    return-void

    .line 527
    .end local v0           #subtitle:Landroid/widget/TextView;
    .end local v1           #title:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 537
    .restart local v0       #subtitle:Landroid/widget/TextView;
    .restart local v1       #title:Landroid/widget/TextView;
    :cond_2
    const v2, 0x7f0c0004

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 540
    :cond_3
    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0, p0, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method private static sortChannel(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 579
    .local p0, chanelListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelEntity;>;"
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 580
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v2, chanelNewListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelEntity;>;"
    const/4 v8, 0x7

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "4"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "5"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "78"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "6"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "111"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "92"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "202"

    aput-object v9, v7, v8

    .line 582
    .local v7, sortOrder:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v3           #i$:I
    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, v0, v4

    .line 583
    .local v6, sortItem:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4           #i$:I
    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    .line 584
    .local v1, chanelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 585
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 582
    .end local v1           #chanelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .local v3, i$:I
    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_0

    .line 591
    .end local v6           #sortItem:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4           #i$:I
    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    .line 592
    .restart local v1       #chanelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 594
    .end local v1           #chanelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 595
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 596
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 598
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #chanelNewListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelEntity;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #len$:I
    .end local v7           #sortOrder:[Ljava/lang/String;
    :cond_4
    return-void
.end method

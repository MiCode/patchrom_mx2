.class public Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecommendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;,
        Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;
    }
.end annotation


# instance fields
.field private asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

.field private listView:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field private recommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

.field private recommendListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/ListView;)V
    .locals 1
    .parameter "mContext"
    .parameter
    .parameter "listView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;>;",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, recommendListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;>;"
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->listView:Landroid/widget/ListView;

    .line 36
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 38
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    .line 43
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendListEntity:Ljava/util/ArrayList;

    .line 45
    iput-object p3, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->listView:Landroid/widget/ListView;

    .line 46
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/meizu/video/client/util/AsyncImageLoader;

    invoke-direct {v0}, Lcom/meizu/video/client/util/AsyncImageLoader;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    .line 51
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->initPxLengthValue(Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;)V

    .line 53
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, count:I
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 84
    :cond_0
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 96
    :cond_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 102
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 31
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 107
    if-nez p2, :cond_2

    .line 108
    new-instance p2, Landroid/widget/LinearLayout;

    .end local p2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 114
    .restart local p2
    :goto_0
    if-eqz p2, :cond_f

    .line 117
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v28

    .line 118
    .local v28, reList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    if-eqz v28, :cond_f

    .line 120
    const/16 v26, 0x0

    .line 121
    .local v26, leftSpace:I
    const/16 v29, 0x0

    .line 122
    .local v29, topSpace:I
    const/16 v18, 0x0

    .line 124
    .local v18, bottomSpace:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_f

    .line 125
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/meizu/video/client/ui/entity/RecommendEntity;

    .line 126
    .local v27, re:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    if-eqz v27, :cond_6

    .line 127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040068

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 128
    .local v20, convertItemView:Landroid/view/View;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "block:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getVid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 129
    .local v22, id_tag:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getLableListEntity()Ljava/util/ArrayList;

    move-result-object v25

    .line 130
    .local v25, lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    if-eqz v25, :cond_4

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 131
    new-instance v30, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;

    invoke-direct/range {v30 .. v31}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;)V

    .line 132
    .local v30, vHolder:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;
    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    const v4, 0x7f0d0150

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, v30

    iput-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;->recommend_image:Landroid/widget/ImageView;

    .line 135
    const v4, 0x7f0d0151

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, v30

    iput-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;->recommend_title:Landroid/widget/TextView;

    .line 136
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;->recommend_title:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 138
    const-string v8, ""

    .line 140
    .local v8, imageUrl:Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, j:I
    :goto_2
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_3

    .line 141
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/meizu/video/client/ui/entity/LableEntity;

    .line 142
    .local v24, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    if-eqz v24, :cond_1

    .line 143
    const-string v4, "text-title"

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;->recommend_title:Landroid/widget/TextView;

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual/range {v24 .. v24}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setChanelProgramName(Ljava/lang/String;)V

    .line 147
    :cond_0
    const-string v4, "image"

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    invoke-virtual/range {v24 .. v24}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 140
    :cond_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .end local v8           #imageUrl:Ljava/lang/String;
    .end local v18           #bottomSpace:I
    .end local v20           #convertItemView:Landroid/view/View;
    .end local v21           #i:I
    .end local v22           #id_tag:Ljava/lang/String;
    .end local v23           #j:I
    .end local v24           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    .end local v25           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .end local v26           #leftSpace:I
    .end local v27           #re:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    .end local v28           #reList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    .end local v29           #topSpace:I
    .end local v30           #vHolder:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;
    :cond_2
    move-object/from16 v4, p2

    .line 110
    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_0

    .line 153
    .restart local v8       #imageUrl:Ljava/lang/String;
    .restart local v18       #bottomSpace:I
    .restart local v20       #convertItemView:Landroid/view/View;
    .restart local v21       #i:I
    .restart local v22       #id_tag:Ljava/lang/String;
    .restart local v23       #j:I
    .restart local v25       #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .restart local v26       #leftSpace:I
    .restart local v27       #re:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    .restart local v28       #reList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    .restart local v29       #topSpace:I
    .restart local v30       #vHolder:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v9, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->smallImageWidth:I

    .line 154
    .local v9, imageWidth:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v10, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->smallImageHeight:I

    .line 156
    .local v10, imageHeight:I
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;->recommend_image:Landroid/widget/ImageView;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 157
    const/16 v19, 0x0

    .line 160
    .local v19, cachedImage:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v11, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v11, v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$1;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;Ljava/lang/String;)V

    move/from16 v5, p1

    invoke-virtual/range {v4 .. v11}, Lcom/meizu/video/client/util/AsyncImageLoader;->loadBitmap(ILjava/lang/String;Lcom/meizu/video/client/common/Constant$InterfaceType;Ljava/lang/String;IILcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 177
    if-eqz v19, :cond_7

    .line 178
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;->recommend_image:Landroid/widget/ImageView;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;->recommend_image:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 184
    :goto_3
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getChanelProgramName()Ljava/lang/String;

    move-result-object v13

    .line 185
    .local v13, chanelProgramName:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getCid()Ljava/lang/String;

    move-result-object v14

    .line 186
    .local v14, cid:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getVid()Ljava/lang/String;

    move-result-object v15

    .line 187
    .local v15, vid:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getMediaDataType()Ljava/lang/String;

    move-result-object v16

    .line 188
    .local v16, mediaDataType:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getIntro()Ljava/lang/String;

    move-result-object v17

    .line 189
    .local v17, intro:Ljava/lang/String;
    new-instance v11, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$2;

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v17}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$2;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    .end local v8           #imageUrl:Ljava/lang/String;
    .end local v9           #imageWidth:I
    .end local v10           #imageHeight:I
    .end local v13           #chanelProgramName:Ljava/lang/String;
    .end local v14           #cid:Ljava/lang/String;
    .end local v15           #vid:Ljava/lang/String;
    .end local v16           #mediaDataType:Ljava/lang/String;
    .end local v17           #intro:Ljava/lang/String;
    .end local v19           #cachedImage:Landroid/graphics/Bitmap;
    .end local v23           #j:I
    .end local v30           #vHolder:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    .line 209
    if-nez v21, :cond_8

    .line 210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v0, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->leftMarginNum_land:I

    move/from16 v26, v0

    .line 219
    :cond_5
    :goto_4
    if-nez p1, :cond_b

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v0, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->topFirstMarginNum_land:I

    move/from16 v29, v0

    .line 251
    :goto_5
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v29

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    move-object/from16 v4, p2

    .line 253
    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    .end local v20           #convertItemView:Landroid/view/View;
    .end local v22           #id_tag:Ljava/lang/String;
    .end local v25           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_6
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 181
    .restart local v8       #imageUrl:Ljava/lang/String;
    .restart local v9       #imageWidth:I
    .restart local v10       #imageHeight:I
    .restart local v19       #cachedImage:Landroid/graphics/Bitmap;
    .restart local v20       #convertItemView:Landroid/view/View;
    .restart local v22       #id_tag:Ljava/lang/String;
    .restart local v23       #j:I
    .restart local v25       #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .restart local v30       #vHolder:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;
    :cond_7
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;->recommend_image:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3

    .line 211
    .end local v8           #imageUrl:Ljava/lang/String;
    .end local v9           #imageWidth:I
    .end local v10           #imageHeight:I
    .end local v19           #cachedImage:Landroid/graphics/Bitmap;
    .end local v23           #j:I
    .end local v30           #vHolder:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;
    :cond_8
    const/4 v4, 0x1

    move/from16 v0, v21

    if-ne v0, v4, :cond_9

    .line 212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v0, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->spaceBetweenTwoInOneRow_land1:I

    move/from16 v26, v0

    goto :goto_4

    .line 213
    :cond_9
    const/4 v4, 0x2

    move/from16 v0, v21

    if-ne v0, v4, :cond_a

    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v0, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->spaceBetweenTwoInOneRow_land2:I

    move/from16 v26, v0

    goto :goto_4

    .line 215
    :cond_a
    const/4 v4, 0x3

    move/from16 v0, v21

    if-ne v0, v4, :cond_5

    .line 216
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v0, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->spaceBetweenTwoInOneRow_land1:I

    move/from16 v26, v0

    goto :goto_4

    .line 222
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v0, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->topOtherMarginNum_land:I

    move/from16 v29, v0

    goto :goto_5

    .line 231
    :cond_c
    if-nez v21, :cond_d

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v0, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->leftMarginNum_port:I

    move/from16 v26, v0

    .line 237
    :goto_6
    if-nez p1, :cond_e

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v0, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->topFirstMarginNum_port:I

    move/from16 v29, v0

    goto :goto_5

    .line 234
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v0, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->spaceBetweenTwoInOneRow_port:I

    move/from16 v26, v0

    goto :goto_6

    .line 240
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v0, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->topOtherMarginNum_port:I

    move/from16 v29, v0

    goto :goto_5

    .line 260
    .end local v18           #bottomSpace:I
    .end local v20           #convertItemView:Landroid/view/View;
    .end local v21           #i:I
    .end local v22           #id_tag:Ljava/lang/String;
    .end local v25           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .end local v26           #leftSpace:I
    .end local v27           #re:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    .end local v28           #reList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    .end local v29           #topSpace:I
    :cond_f
    return-object p2
.end method

.method public initPxLengthValue(Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;)V
    .locals 6
    .parameter "recommendBolckPxValue"

    .prologue
    const/16 v5, 0x1c

    const/16 v4, 0x17

    const/4 v3, 0x0

    .line 276
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 277
    const-string v0, " RecommendAdapter"

    const-string v1, " initPxLengthValue mContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x60

    invoke-static {v0, v1}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->smallImageWidth:I

    .line 281
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->smallImageHeight:I

    .line 283
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->leftMarginNum_land:I

    .line 284
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    const-wide v1, 0x404d400000000000L

    invoke-static {v0, v1, v2}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->spaceBetweenTwoInOneRow_land1:I

    .line 285
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->spaceBetweenTwoInOneRow_land2:I

    .line 286
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->topFirstMarginNum_land:I

    .line 287
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->topOtherMarginNum_land:I

    .line 290
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->leftMarginNum_port:I

    .line 291
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->spaceBetweenTwoInOneRow_port:I

    .line 292
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->topFirstMarginNum_port:I

    .line 293
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->topOtherMarginNum_port:I

    goto :goto_0
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;>;"
    if-eqz p1, :cond_0

    .line 267
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendListEntity:Ljava/util/ArrayList;

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->recommendListEntity:Ljava/util/ArrayList;

    goto :goto_0
.end method

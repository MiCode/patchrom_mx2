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
.field private mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mRecommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

.field private mRecommendListEntity:Ljava/util/ArrayList;
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

.field private mRes:Landroid/content/res/Resources;


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

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    .line 37
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mListView:Landroid/widget/ListView;

    .line 38
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 40
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    .line 47
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendListEntity:Ljava/util/ArrayList;

    .line 49
    iput-object p3, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mListView:Landroid/widget/ListView;

    .line 50
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/meizu/video/client/util/AsyncImageLoader;

    invoke-direct {v0}, Lcom/meizu/video/client/util/AsyncImageLoader;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    .line 55
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->initPxLengthValue(Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;)V

    .line 57
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRes:Landroid/content/res/Resources;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, count:I
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 87
    :cond_0
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
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

    .line 92
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 99
    :cond_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 105
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 31
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 110
    if-nez p2, :cond_2

    .line 111
    new-instance p2, Landroid/widget/LinearLayout;

    .end local p2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 117
    .restart local p2
    :goto_0
    if-eqz p2, :cond_10

    .line 120
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v28

    .line 121
    .local v28, reList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    if-eqz v28, :cond_10

    .line 123
    const/16 v26, 0x0

    .line 124
    .local v26, leftSpace:I
    const/16 v29, 0x0

    .line 125
    .local v29, topSpace:I
    const/16 v18, 0x0

    .line 127
    .local v18, bottomSpace:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_10

    .line 128
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/meizu/video/client/ui/entity/RecommendEntity;

    .line 129
    .local v27, re:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    if-eqz v27, :cond_8

    .line 130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04006d

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 131
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

    .line 132
    .local v22, id_tag:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getLableListEntity()Ljava/util/ArrayList;

    move-result-object v25

    .line 133
    .local v25, lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    if-eqz v25, :cond_5

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 134
    new-instance v30, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;

    invoke-direct/range {v30 .. v31}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;)V

    .line 135
    .local v30, vHolder:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;
    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    const v4, 0x7f0d016b

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/video/client/common/MaskedImageView;

    move-object/from16 v0, v30

    iput-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;->mRecommendImage:Landroid/widget/ImageView;

    .line 138
    const v4, 0x7f0d016c

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, v30

    iput-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;->mRecommendTitle:Landroid/widget/TextView;

    .line 139
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;->mRecommendTitle:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 141
    const-string v8, ""

    .line 143
    .local v8, imageUrl:Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, j:I
    :goto_2
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_3

    .line 144
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/meizu/video/client/ui/entity/LableEntity;

    .line 145
    .local v24, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    if-eqz v24, :cond_1

    .line 146
    const-string v4, "text-title"

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;->mRecommendTitle:Landroid/widget/TextView;

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual/range {v24 .. v24}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setChanelProgramName(Ljava/lang/String;)V

    .line 150
    :cond_0
    const-string v4, "image"

    invoke-virtual/range {v24 .. v24}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    invoke-virtual/range {v24 .. v24}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 143
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

    .line 113
    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_0

    .line 156
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

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v9, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mSmallImageWidth:I

    .line 157
    .local v9, imageWidth:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v10, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mSmallImageHeight:I

    .line 159
    .local v10, imageHeight:I
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;->mRecommendImage:Landroid/widget/ImageView;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 160
    const/16 v19, 0x0

    .line 163
    .local v19, cachedImage:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

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
    if-eqz v19, :cond_4

    .line 178
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$ViewHolder;->mRecommendImage:Landroid/widget/ImageView;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    :cond_4
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getChanelProgramName()Ljava/lang/String;

    move-result-object v13

    .line 182
    .local v13, chanelProgramName:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getCid()Ljava/lang/String;

    move-result-object v14

    .line 183
    .local v14, cid:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getVid()Ljava/lang/String;

    move-result-object v15

    .line 184
    .local v15, vid:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getMediaDataType()Ljava/lang/String;

    move-result-object v16

    .line 185
    .local v16, mediaDataType:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getIntro()Ljava/lang/String;

    move-result-object v17

    .line 186
    .local v17, intro:Ljava/lang/String;
    new-instance v11, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$2;

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v17}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$2;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
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
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRes:Landroid/content/res/Resources;

    if-nez v4, :cond_6

    .line 204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRes:Landroid/content/res/Resources;

    .line 206
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    .line 208
    if-nez v21, :cond_9

    .line 209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v0, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mLeftMarginNumLand:I

    move/from16 v26, v0

    .line 218
    :cond_7
    :goto_3
    if-nez p1, :cond_c

    .line 219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v0, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mTopFirstMarginNumLand:I

    move/from16 v29, v0

    .line 237
    :goto_4
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v29

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    move-object/from16 v4, p2

    .line 239
    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    .end local v20           #convertItemView:Landroid/view/View;
    .end local v22           #id_tag:Ljava/lang/String;
    .end local v25           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_8
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 210
    .restart local v20       #convertItemView:Landroid/view/View;
    .restart local v22       #id_tag:Ljava/lang/String;
    .restart local v25       #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_9
    const/4 v4, 0x1

    move/from16 v0, v21

    if-ne v0, v4, :cond_a

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v0, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mSpaceBetweenTwoInOneRowLand1:I

    move/from16 v26, v0

    goto :goto_3

    .line 212
    :cond_a
    const/4 v4, 0x2

    move/from16 v0, v21

    if-ne v0, v4, :cond_b

    .line 213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v0, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mSpaceBetweenTwoInOneRowLand2:I

    move/from16 v26, v0

    goto :goto_3

    .line 214
    :cond_b
    const/4 v4, 0x3

    move/from16 v0, v21

    if-ne v0, v4, :cond_7

    .line 215
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v0, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mSpaceBetweenTwoInOneRowLand1:I

    move/from16 v26, v0

    goto :goto_3

    .line 221
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v0, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mTopOtherMarginNumLand:I

    move/from16 v29, v0

    goto :goto_4

    .line 224
    :cond_d
    if-nez v21, :cond_e

    .line 225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v0, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mLeftMarginNumPort:I

    move/from16 v26, v0

    .line 230
    :goto_5
    if-nez p1, :cond_f

    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v0, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mTopFirstMarginNumPort:I

    move/from16 v29, v0

    goto :goto_4

    .line 227
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v0, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mSpaceBetweenTwoInOneRowPort:I

    move/from16 v26, v0

    goto :goto_5

    .line 233
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendBolckPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;

    iget v0, v4, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mTopOtherMarginNumPort:I

    move/from16 v29, v0

    goto :goto_4

    .line 246
    .end local v18           #bottomSpace:I
    .end local v20           #convertItemView:Landroid/view/View;
    .end local v21           #i:I
    .end local v22           #id_tag:Ljava/lang/String;
    .end local v25           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .end local v26           #leftSpace:I
    .end local v27           #re:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    .end local v28           #reList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    .end local v29           #topSpace:I
    :cond_10
    return-object p2
.end method

.method public initPxLengthValue(Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;)V
    .locals 3
    .parameter "recommendBolckPxValue"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 263
    const-string v0, " RecommendAdapter"

    const-string v1, " initPxLengthValue mContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRes:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRes:Landroid/content/res/Resources;

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mSmallImageWidth:I

    .line 270
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mSmallImageHeight:I

    .line 272
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mLeftMarginNumLand:I

    .line 273
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mSpaceBetweenTwoInOneRowLand1:I

    .line 274
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mSpaceBetweenTwoInOneRowLand2:I

    .line 275
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mTopFirstMarginNumLand:I

    .line 276
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mTopOtherMarginNumLand:I

    .line 278
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mLeftMarginNumPort:I

    .line 279
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mSpaceBetweenTwoInOneRowPort:I

    .line 280
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mTopFirstMarginNumPort:I

    .line 281
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter$RecommendBolckPxValue;->mTopOtherMarginNumPort:I

    goto/16 :goto_0
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
    .line 251
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;>;"
    if-eqz p1, :cond_0

    .line 253
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendListEntity:Ljava/util/ArrayList;

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->mRecommendListEntity:Ljava/util/ArrayList;

    goto :goto_0
.end method

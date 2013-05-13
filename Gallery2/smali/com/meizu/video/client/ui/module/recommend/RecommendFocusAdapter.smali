.class public Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecommendFocusAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;,
        Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;
    }
.end annotation


# instance fields
.field private mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mFocusImageGallery:Landroid/widget/Gallery;

.field private mRecommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

.field private mRecommendListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/Gallery;)V
    .locals 1
    .parameter "mContext"
    .parameter
    .parameter "focusImageGallery"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;",
            "Landroid/widget/Gallery;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, recommendListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mFocusImageGallery:Landroid/widget/Gallery;

    .line 31
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 33
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRecommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    .line 42
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRecommendListEntity:Ljava/util/ArrayList;

    .line 44
    iput-object p3, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mFocusImageGallery:Landroid/widget/Gallery;

    .line 45
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/meizu/video/client/util/AsyncImageLoader;

    invoke-direct {v0}, Lcom/meizu/video/client/util/AsyncImageLoader;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRecommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRecommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    .line 50
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRecommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->initPxLengthValue(Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;)V

    .line 52
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRes:Landroid/content/res/Resources;

    .line 53
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRecommendListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mCount:I

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;)Landroid/widget/Gallery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mFocusImageGallery:Landroid/widget/Gallery;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, count:I
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRecommendListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRecommendListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 73
    :cond_0
    if-lez v0, :cond_1

    .line 74
    const v0, 0x7fffffff

    .line 76
    :cond_1
    return v0
.end method

.method public getItem(I)Lcom/meizu/video/client/ui/entity/RecommendEntity;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRecommendListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRecommendListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/RecommendEntity;

    .line 88
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/RecommendEntity;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 94
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 99
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mCount:I

    if-eqz v2, :cond_0

    .line 100
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mCount:I

    rem-int p1, p1, v2

    .line 104
    :cond_0
    if-nez p2, :cond_3

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04006e

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 106
    new-instance v17, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;

    invoke-direct/range {v17 .. v18}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;)V

    .line 107
    .local v17, vHolder:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;
    const v2, 0x7f0d016b

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/video/client/common/MaskedImageView;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->mRecommendImage:Landroid/widget/ImageView;

    .line 108
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/RecommendEntity;

    move-result-object v16

    .line 114
    .local v16, reList:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    if-eqz v16, :cond_6

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 116
    .local v11, id_tag:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getLableListEntity()Ljava/util/ArrayList;

    move-result-object v14

    .line 117
    .local v14, lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 118
    const-string v6, ""

    .line 119
    .local v6, imageUrl:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_4

    .line 120
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/meizu/video/client/ui/entity/LableEntity;

    .line 121
    .local v13, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    if-eqz v13, :cond_2

    .line 122
    const-string v2, "text-title"

    invoke-virtual {v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setChanelProgramName(Ljava/lang/String;)V

    .line 125
    :cond_1
    const-string v2, "image"

    invoke-virtual {v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    invoke-virtual {v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 119
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 110
    .end local v6           #imageUrl:Ljava/lang/String;
    .end local v11           #id_tag:Ljava/lang/String;
    .end local v12           #j:I
    .end local v13           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    .end local v14           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .end local v16           #reList:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    .end local v17           #vHolder:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;

    .restart local v17       #vHolder:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;
    goto :goto_0

    .line 131
    .restart local v6       #imageUrl:Ljava/lang/String;
    .restart local v11       #id_tag:Ljava/lang/String;
    .restart local v12       #j:I
    .restart local v14       #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .restart local v16       #reList:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    :cond_4
    const/4 v7, 0x0

    .line 132
    .local v7, imageWidth:I
    const/4 v8, 0x0

    .line 133
    .local v8, imageHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRes:Landroid/content/res/Resources;

    if-nez v2, :cond_5

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRes:Landroid/content/res/Resources;

    .line 137
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRecommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    iget v7, v2, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->mBigImageWidthLand:I

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRecommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    iget v8, v2, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->mBigImageHeightLand:I

    .line 145
    :goto_2
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->mRecommendImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 146
    .local v15, linearParams1:Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 147
    iput v8, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 148
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->mRecommendImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->mRecommendImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 152
    const/4 v10, 0x0

    .line 155
    .local v10, cachedImage:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v9, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v11}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$1;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;Ljava/lang/String;)V

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/meizu/video/client/util/AsyncImageLoader;->loadBitmap(ILjava/lang/String;Lcom/meizu/video/client/common/Constant$InterfaceType;Ljava/lang/String;IILcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 169
    if-eqz v10, :cond_6

    .line 170
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->mRecommendImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 176
    .end local v6           #imageUrl:Ljava/lang/String;
    .end local v7           #imageWidth:I
    .end local v8           #imageHeight:I
    .end local v10           #cachedImage:Landroid/graphics/Bitmap;
    .end local v11           #id_tag:Ljava/lang/String;
    .end local v12           #j:I
    .end local v14           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .end local v15           #linearParams1:Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    return-object p2

    .line 141
    .restart local v6       #imageUrl:Ljava/lang/String;
    .restart local v7       #imageWidth:I
    .restart local v8       #imageHeight:I
    .restart local v11       #id_tag:Ljava/lang/String;
    .restart local v12       #j:I
    .restart local v14       #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRecommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    iget v7, v2, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->mBigImageWidthPort:I

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRecommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    iget v8, v2, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->mBigImageHeightPort:I

    goto :goto_2
.end method

.method public initPxLengthValue(Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;)V
    .locals 2
    .parameter "recommendFocusPxValue"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRes:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRes:Landroid/content/res/Resources;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->mBigImageWidthLand:I

    .line 200
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->mBigImageHeightLand:I

    .line 201
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->mBigImageWidthPort:I

    .line 202
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->mBigImageHeightPort:I

    .line 204
    return-void
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    if-eqz p1, :cond_0

    .line 183
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRecommendListEntity:Ljava/util/ArrayList;

    .line 184
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRecommendListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mCount:I

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRecommendListEntity:Ljava/util/ArrayList;

    .line 189
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mRecommendListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mCount:I

    goto :goto_0
.end method

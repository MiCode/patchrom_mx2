.class public Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChanelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

.field private chanelListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelEntity;",
            ">;"
        }
    .end annotation
.end field

.field private gridView:Landroid/widget/GridView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/GridView;)V
    .locals 1
    .parameter "mContext"
    .parameter
    .parameter "gridView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelEntity;",
            ">;",
            "Landroid/widget/GridView;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, chanelListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelEntity;>;"
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->gridView:Landroid/widget/GridView;

    .line 31
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 33
    const-string v0, "ChanelAdapter"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->TAG:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->chanelListEntity:Ljava/util/ArrayList;

    .line 40
    iput-object p3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->gridView:Landroid/widget/GridView;

    .line 41
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/meizu/video/client/util/AsyncImageLoader;

    invoke-direct {v0}, Lcom/meizu/video/client/util/AsyncImageLoader;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->gridView:Landroid/widget/GridView;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, count:I
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->chanelListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->chanelListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 56
    :cond_0
    return v0
.end method

.method public getItem(I)Lcom/meizu/video/client/ui/entity/ChanelEntity;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->chanelListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->chanelListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    .line 67
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/ChanelEntity;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 72
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 77
    if-nez p2, :cond_1

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f04000c

    const/4 v9, 0x0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v5, v9, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 80
    new-instance v18, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;)V

    .line 81
    .local v18, vHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;
    const v2, 0x7f0d0016

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;->channel_image:Landroid/widget/ImageView;

    .line 82
    const v2, 0x7f0d0017

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;->channel_title:Landroid/widget/TextView;

    .line 83
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;->channel_title:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 84
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/ChanelEntity;

    move-result-object v11

    .line 90
    .local v11, channelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    if-eqz v11, :cond_3

    .line 92
    invoke-virtual {v11}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getTitle()Ljava/lang/String;

    move-result-object v12

    .line 95
    .local v12, channelTitle:Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;->channel_title:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0x60

    invoke-static {v2, v5}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v7

    .line 98
    .local v7, imageWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0x80

    invoke-static {v2, v5}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v8

    .line 100
    .local v8, imageHeight:I
    invoke-virtual {v11}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, id_tag:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getLableListEntity()Ljava/util/ArrayList;

    move-result-object v16

    .line 102
    .local v16, lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 103
    const-string v6, ""

    .line 105
    .local v6, imageUrl:Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, j:I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_2

    .line 106
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/meizu/video/client/ui/entity/LableEntity;

    .line 107
    .local v15, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    if-eqz v15, :cond_0

    .line 108
    const-string v2, "image"

    invoke-virtual {v15}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v15}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 105
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 86
    .end local v4           #id_tag:Ljava/lang/String;
    .end local v6           #imageUrl:Ljava/lang/String;
    .end local v7           #imageWidth:I
    .end local v8           #imageHeight:I
    .end local v11           #channelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    .end local v12           #channelTitle:Ljava/lang/String;
    .end local v14           #j:I
    .end local v15           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    .end local v16           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .end local v18           #vHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;

    .restart local v18       #vHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;
    goto :goto_0

    .line 116
    .restart local v4       #id_tag:Ljava/lang/String;
    .restart local v6       #imageUrl:Ljava/lang/String;
    .restart local v7       #imageWidth:I
    .restart local v8       #imageHeight:I
    .restart local v11       #channelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    .restart local v12       #channelTitle:Ljava/lang/String;
    .restart local v14       #j:I
    .restart local v16       #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_2
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;->channel_image:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 118
    const/4 v10, 0x0

    .line 119
    .local v10, cachedImage:Landroid/graphics/Bitmap;
    move/from16 v3, p1

    .line 122
    .local v3, pos:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    sget-object v5, Lcom/meizu/video/client/common/Constant$InterfaceType;->CHANNEL:Lcom/meizu/video/client/common/Constant$InterfaceType;

    new-instance v9, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$1;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;Ljava/lang/String;)V

    invoke-virtual/range {v2 .. v9}, Lcom/meizu/video/client/util/AsyncImageLoader;->loadBitmap(ILjava/lang/String;Lcom/meizu/video/client/common/Constant$InterfaceType;Ljava/lang/String;IILcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 144
    if-eqz v10, :cond_4

    .line 145
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;->channel_image:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 146
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;->channel_image:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 153
    .end local v3           #pos:I
    .end local v4           #id_tag:Ljava/lang/String;
    .end local v6           #imageUrl:Ljava/lang/String;
    .end local v7           #imageWidth:I
    .end local v8           #imageHeight:I
    .end local v10           #cachedImage:Landroid/graphics/Bitmap;
    .end local v12           #channelTitle:Ljava/lang/String;
    .end local v14           #j:I
    .end local v16           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_3
    :goto_2
    const/16 v17, 0x0

    .line 154
    .local v17, topSpace:I
    const/4 v13, 0x0

    .line 155
    .local v13, colNum:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_6

    .line 156
    const/4 v13, 0x4

    .line 157
    div-int v2, p1, v13

    if-nez v2, :cond_5

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0xf

    invoke-static {v2, v5}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    add-int/lit8 v17, v2, 0x62

    .line 171
    :goto_3
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1, v5, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 174
    return-object p2

    .line 148
    .end local v13           #colNum:I
    .end local v17           #topSpace:I
    .restart local v3       #pos:I
    .restart local v4       #id_tag:Ljava/lang/String;
    .restart local v6       #imageUrl:Ljava/lang/String;
    .restart local v7       #imageWidth:I
    .restart local v8       #imageHeight:I
    .restart local v10       #cachedImage:Landroid/graphics/Bitmap;
    .restart local v12       #channelTitle:Ljava/lang/String;
    .restart local v14       #j:I
    .restart local v16       #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_4
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;->channel_image:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    .line 160
    .end local v3           #pos:I
    .end local v4           #id_tag:Ljava/lang/String;
    .end local v6           #imageUrl:Ljava/lang/String;
    .end local v7           #imageWidth:I
    .end local v8           #imageHeight:I
    .end local v10           #cachedImage:Landroid/graphics/Bitmap;
    .end local v12           #channelTitle:Ljava/lang/String;
    .end local v14           #j:I
    .end local v16           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .restart local v13       #colNum:I
    .restart local v17       #topSpace:I
    :cond_5
    const/16 v17, 0x0

    goto :goto_3

    .line 163
    :cond_6
    const/4 v13, 0x3

    .line 164
    div-int v2, p1, v13

    if-nez v2, :cond_7

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    add-int/lit8 v17, v2, 0x62

    goto :goto_3

    .line 167
    :cond_7
    const/16 v17, 0x0

    goto :goto_3
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 179
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelEntity;>;"
    if-eqz p1, :cond_0

    .line 181
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->chanelListEntity:Ljava/util/ArrayList;

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->chanelListEntity:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public updateChannelUrl(ILjava/lang/String;)V
    .locals 4
    .parameter "position"
    .parameter "imageUrl"

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/ChanelEntity;

    move-result-object v0

    .line 191
    .local v0, channelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getLableListEntity()Ljava/util/ArrayList;

    move-result-object v2

    .line 193
    .local v2, lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    if-nez v2, :cond_0

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .restart local v2       #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_0
    new-instance v1, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v1}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 197
    .local v1, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v3, "0"

    invoke-virtual {v1, v3}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 198
    const-string v3, "image"

    invoke-virtual {v1, v3}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1, p2}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 204
    .end local v1           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    .end local v2           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_1
    return-void
.end method

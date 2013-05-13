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

.field private mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

.field private mChanelListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGridView:Landroid/widget/GridView;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/GridView;)V
    .locals 2
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

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mGridView:Landroid/widget/GridView;

    .line 32
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 38
    const-string v0, "ChanelAdapter"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->TAG:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mChanelListEntity:Ljava/util/ArrayList;

    .line 45
    iput-object p3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mGridView:Landroid/widget/GridView;

    .line 46
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/meizu/video/client/util/AsyncImageLoader;

    invoke-direct {v0}, Lcom/meizu/video/client/util/AsyncImageLoader;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mRes:Landroid/content/res/Resources;

    .line 50
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mImageWidth:I

    .line 51
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mImageHeight:I

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, count:I
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mChanelListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mChanelListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 64
    :cond_0
    return v0
.end method

.method public getItem(I)Lcom/meizu/video/client/ui/entity/ChanelEntity;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mChanelListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mChanelListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/ChanelEntity;

    .line 75
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/ChanelEntity;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 80
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 85
    if-nez p2, :cond_1

    .line 86
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f04000e

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 88
    new-instance v15, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;

    invoke-direct/range {v15 .. v16}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;)V

    .line 89
    .local v15, vHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;
    const v1, 0x7f0d001a

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/common/MaskedImageView;

    iput-object v1, v15, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;->mChannelImage:Landroid/widget/ImageView;

    .line 90
    const v1, 0x7f0d001b

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v15, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;->mChannelTitle:Landroid/widget/TextView;

    .line 91
    iget-object v1, v15, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;->mChannelTitle:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 92
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/ChanelEntity;

    move-result-object v10

    .line 98
    .local v10, channelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    if-eqz v10, :cond_3

    .line 100
    invoke-virtual {v10}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getTitle()Ljava/lang/String;

    move-result-object v11

    .line 103
    .local v11, channelTitle:Ljava/lang/String;
    iget-object v1, v15, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;->mChannelTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v10}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getId()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, id_tag:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getLableListEntity()Ljava/util/ArrayList;

    move-result-object v14

    .line 107
    .local v14, lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 108
    const-string v5, ""

    .line 110
    .local v5, imageUrl:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_2

    .line 111
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/meizu/video/client/ui/entity/LableEntity;

    .line 112
    .local v13, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    if-eqz v13, :cond_0

    .line 113
    const-string v1, "image"

    invoke-virtual {v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v13}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 110
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 94
    .end local v3           #id_tag:Ljava/lang/String;
    .end local v5           #imageUrl:Ljava/lang/String;
    .end local v10           #channelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    .end local v11           #channelTitle:Ljava/lang/String;
    .end local v12           #j:I
    .end local v13           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    .end local v14           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .end local v15           #vHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;

    .restart local v15       #vHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;
    goto :goto_0

    .line 120
    .restart local v3       #id_tag:Ljava/lang/String;
    .restart local v5       #imageUrl:Ljava/lang/String;
    .restart local v10       #channelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    .restart local v11       #channelTitle:Ljava/lang/String;
    .restart local v12       #j:I
    .restart local v14       #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_2
    iget-object v1, v15, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;->mChannelImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 122
    const/4 v9, 0x0

    .line 123
    .local v9, cachedImage:Landroid/graphics/Bitmap;
    move/from16 v2, p1

    .line 126
    .local v2, pos:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    sget-object v4, Lcom/meizu/video/client/common/Constant$InterfaceType;->CHANNEL:Lcom/meizu/video/client/common/Constant$InterfaceType;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mImageWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mImageHeight:I

    new-instance v8, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$1;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;Ljava/lang/String;)V

    invoke-virtual/range {v1 .. v8}, Lcom/meizu/video/client/util/AsyncImageLoader;->loadBitmap(ILjava/lang/String;Lcom/meizu/video/client/common/Constant$InterfaceType;Ljava/lang/String;IILcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 145
    if-eqz v9, :cond_3

    .line 146
    iget-object v1, v15, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;->mChannelImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    .end local v2           #pos:I
    .end local v3           #id_tag:Ljava/lang/String;
    .end local v5           #imageUrl:Ljava/lang/String;
    .end local v9           #cachedImage:Landroid/graphics/Bitmap;
    .end local v11           #channelTitle:Ljava/lang/String;
    .end local v12           #j:I
    .end local v14           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_3
    return-object p2
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
    .line 156
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelEntity;>;"
    if-eqz p1, :cond_0

    .line 158
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mChanelListEntity:Ljava/util/ArrayList;

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->mChanelListEntity:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public updateChannelUrl(ILjava/lang/String;)V
    .locals 4
    .parameter "position"
    .parameter "imageUrl"

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/ChanelEntity;

    move-result-object v0

    .line 168
    .local v0, channelEntity:Lcom/meizu/video/client/ui/entity/ChanelEntity;
    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->getLableListEntity()Ljava/util/ArrayList;

    move-result-object v2

    .line 170
    .local v2, lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    if-nez v2, :cond_0

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .restart local v2       #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_0
    new-instance v1, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-direct {v1}, Lcom/meizu/video/client/ui/entity/LableEntity;-><init>()V

    .line 174
    .local v1, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    const-string v3, "0"

    invoke-virtual {v1, v3}, Lcom/meizu/video/client/ui/entity/LableEntity;->setSize(Ljava/lang/String;)V

    .line 175
    const-string v3, "image"

    invoke-virtual {v1, v3}, Lcom/meizu/video/client/ui/entity/LableEntity;->setType(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1, p2}, Lcom/meizu/video/client/ui/entity/LableEntity;->setValue(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/ChanelEntity;->setLableListEntity(Ljava/util/ArrayList;)V

    .line 181
    .end local v1           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    .end local v2           #lableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_1
    return-void
.end method

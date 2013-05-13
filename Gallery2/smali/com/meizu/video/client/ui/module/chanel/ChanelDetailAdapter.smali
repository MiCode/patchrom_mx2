.class public Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChanelDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

.field private mChanelDetailListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mChanelName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFooterView:Landroid/view/View;

.field private mGridView:Landroid/widget/GridView;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mLastFlag:Z

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/GridView;Ljava/lang/String;)V
    .locals 2
    .parameter "mContext"
    .parameter
    .parameter "gridView"
    .parameter "chanelName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;",
            ">;",
            "Landroid/widget/GridView;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, chanelDetailListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;>;"
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mGridView:Landroid/widget/GridView;

    .line 31
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mChanelName:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mLastFlag:Z

    .line 43
    const-string v0, "ChanelDetailAdapter"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->TAG:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mChanelDetailListEntity:Ljava/util/ArrayList;

    .line 49
    iput-object p3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mGridView:Landroid/widget/GridView;

    .line 50
    iput-object p4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mChanelName:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/meizu/video/client/util/AsyncImageLoader;

    invoke-direct {v0}, Lcom/meizu/video/client/util/AsyncImageLoader;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mRes:Landroid/content/res/Resources;

    .line 56
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mImageWidth:I

    .line 57
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mImageHeight:I

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, count:I
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mChanelDetailListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mChanelDetailListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 83
    iget-boolean v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mLastFlag:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mFooterView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 89
    :cond_0
    return v0
.end method

.method public getItem(I)Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mChanelDetailListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mChanelDetailListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;

    .line 100
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;

    move-result-object v0

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
    .locals 22
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mChanelDetailListEntity:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mChanelDetailListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p1

    if-lt v0, v3, :cond_0

    .line 111
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mLastFlag:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mFooterView:Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_0

    .line 112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mFooterView:Landroid/view/View;

    .line 253
    :goto_0
    return-object v3

    .line 117
    :cond_0
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/meizu/video/client/common/LoadingMoreFootView;

    if-eqz v3, :cond_b

    .line 118
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040010

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 119
    new-instance v21, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;

    invoke-direct/range {v21 .. v22}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;)V

    .line 120
    .local v21, vHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->initViewHolder(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;Landroid/view/View;)V

    .line 121
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    :goto_1
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText1:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText2LinearLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText3:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText4:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText5:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mImageView1:Landroid/widget/ImageView;

    const v4, 0x7f020051

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mImageView2:Landroid/widget/ImageView;

    const v4, 0x7f020051

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mImageView3:Landroid/widget/ImageView;

    const v4, 0x7f020051

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mImageView4:Landroid/widget/ImageView;

    const v4, 0x7f020051

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mImageView5:Landroid/widget/ImageView;

    const v4, 0x7f020051

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;

    move-result-object v12

    .line 139
    .local v12, channelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    if-eqz v12, :cond_14

    .line 141
    invoke-virtual {v12}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->getVid()Ljava/lang/String;

    move-result-object v13

    .line 142
    .local v13, id_tag:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->getLableListEntity()Ljava/util/ArrayList;

    move-result-object v16

    .line 143
    .local v16, lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    if-eqz v16, :cond_14

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 145
    const-string v7, ""

    .line 147
    .local v7, imageUrl:Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, j:I
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_13

    .line 148
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/meizu/video/client/ui/entity/LableEntity;

    .line 149
    .local v15, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    if-eqz v15, :cond_a

    .line 150
    const-string v3, "image"

    invoke-virtual {v15}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    invoke-virtual {v15}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 154
    :cond_2
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText1:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "text-title"

    invoke-virtual {v15}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 155
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText1:Landroid/widget/TextView;

    invoke-virtual {v15}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText1:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    invoke-virtual {v15}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setChanelProgramName(Ljava/lang/String;)V

    .line 159
    :cond_3
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText2LinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "text-image"

    invoke-virtual {v15}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 160
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText21:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText22:Landroid/widget/TextView;

    invoke-virtual {v15}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :try_start_0
    invoke-virtual {v15}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    .line 164
    .local v19, score:D
    const-wide/high16 v3, 0x4000

    div-double v3, v19, v3

    double-to-int v0, v3

    move/from16 v17, v0

    .line 165
    .local v17, num:I
    const-wide/high16 v3, 0x4000

    rem-double v3, v19, v3

    double-to-int v0, v3

    move/from16 v18, v0

    .line 166
    .local v18, num_item:I
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ge v0, v3, :cond_4

    .line 167
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_c

    .line 168
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mImageView1:Landroid/widget/ImageView;

    const v4, 0x7f02004f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    const/16 v18, 0x0

    .line 174
    :cond_4
    :goto_3
    const/4 v3, 0x2

    move/from16 v0, v17

    if-ge v0, v3, :cond_5

    .line 175
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_d

    .line 176
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mImageView2:Landroid/widget/ImageView;

    const v4, 0x7f02004f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    const/16 v18, 0x0

    .line 182
    :cond_5
    :goto_4
    const/4 v3, 0x3

    move/from16 v0, v17

    if-ge v0, v3, :cond_6

    .line 183
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_e

    .line 184
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mImageView3:Landroid/widget/ImageView;

    const v4, 0x7f02004f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    const/16 v18, 0x0

    .line 190
    :cond_6
    :goto_5
    const/4 v3, 0x4

    move/from16 v0, v17

    if-ge v0, v3, :cond_7

    .line 191
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_f

    .line 192
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mImageView4:Landroid/widget/ImageView;

    const v4, 0x7f02004f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    const/16 v18, 0x0

    .line 198
    :cond_7
    :goto_6
    const/4 v3, 0x5

    move/from16 v0, v17

    if-ge v0, v3, :cond_8

    .line 199
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_10

    .line 200
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mImageView5:Landroid/widget/ImageView;

    const v4, 0x7f02004f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    const/16 v18, 0x0

    .line 206
    :cond_8
    :goto_7
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText2LinearLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v17           #num:I
    .end local v18           #num_item:I
    .end local v19           #score:D
    :cond_9
    :goto_8
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText3:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "text"

    invoke-virtual {v15}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 212
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText3:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText3:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :cond_a
    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 123
    .end local v7           #imageUrl:Ljava/lang/String;
    .end local v12           #channelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    .end local v13           #id_tag:Ljava/lang/String;
    .end local v14           #j:I
    .end local v15           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    .end local v16           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .end local v21           #vHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;

    .restart local v21       #vHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;
    goto/16 :goto_1

    .line 171
    .restart local v7       #imageUrl:Ljava/lang/String;
    .restart local v12       #channelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    .restart local v13       #id_tag:Ljava/lang/String;
    .restart local v14       #j:I
    .restart local v15       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    .restart local v16       #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .restart local v17       #num:I
    .restart local v18       #num_item:I
    .restart local v19       #score:D
    :cond_c
    :try_start_1
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mImageView1:Landroid/widget/ImageView;

    const v4, 0x7f020050

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 207
    .end local v17           #num:I
    .end local v18           #num_item:I
    .end local v19           #score:D
    :catch_0
    move-exception v3

    goto :goto_8

    .line 179
    .restart local v17       #num:I
    .restart local v18       #num_item:I
    .restart local v19       #score:D
    :cond_d
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mImageView2:Landroid/widget/ImageView;

    const v4, 0x7f020050

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 187
    :cond_e
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mImageView3:Landroid/widget/ImageView;

    const v4, 0x7f020050

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 195
    :cond_f
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mImageView4:Landroid/widget/ImageView;

    const v4, 0x7f020050

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 203
    :cond_10
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mImageView5:Landroid/widget/ImageView;

    const v4, 0x7f020050

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 214
    .end local v17           #num:I
    .end local v18           #num_item:I
    .end local v19           #score:D
    :cond_11
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText4:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "text"

    invoke-virtual {v15}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 215
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText4:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText4:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 217
    :cond_12
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText5:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "text"

    invoke-virtual {v15}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 218
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText5:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText5:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 226
    .end local v15           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_13
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mChanelDetailImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 228
    const/4 v11, 0x0

    .line 231
    .local v11, cachedImage:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mImageWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mImageHeight:I

    new-instance v10, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v13}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$1;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;Ljava/lang/String;)V

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/meizu/video/client/util/AsyncImageLoader;->loadBitmap(ILjava/lang/String;Lcom/meizu/video/client/common/Constant$InterfaceType;Ljava/lang/String;IILcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 246
    if-eqz v11, :cond_14

    .line 247
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mChanelDetailImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .end local v7           #imageUrl:Ljava/lang/String;
    .end local v11           #cachedImage:Landroid/graphics/Bitmap;
    .end local v13           #id_tag:Ljava/lang/String;
    .end local v14           #j:I
    .end local v16           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_14
    move-object/from16 v3, p2

    .line 253
    goto/16 :goto_0
.end method

.method public initViewHolder(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;Landroid/view/View;)V
    .locals 2
    .parameter "viewHolder"
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 257
    const v0, 0x7f0d001f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mChanelDetailImage:Landroid/widget/ImageView;

    .line 258
    const v0, 0x7f0d0020

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText1:Landroid/widget/TextView;

    .line 260
    const v0, 0x7f0d0021

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText2LinearLayout:Landroid/widget/LinearLayout;

    .line 261
    const v0, 0x7f0d0022

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText21:Landroid/widget/TextView;

    .line 262
    const v0, 0x7f0d0023

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mImageView1:Landroid/widget/ImageView;

    .line 263
    const v0, 0x7f0d0024

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mImageView2:Landroid/widget/ImageView;

    .line 264
    const v0, 0x7f0d0025

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mImageView3:Landroid/widget/ImageView;

    .line 265
    const v0, 0x7f0d0026

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mImageView4:Landroid/widget/ImageView;

    .line 266
    const v0, 0x7f0d0027

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mImageView5:Landroid/widget/ImageView;

    .line 267
    const v0, 0x7f0d0028

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText22:Landroid/widget/TextView;

    .line 269
    const v0, 0x7f0d0029

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText3:Landroid/widget/TextView;

    .line 270
    const v0, 0x7f0d002a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText4:Landroid/widget/TextView;

    .line 271
    const v0, 0x7f0d002b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText5:Landroid/widget/TextView;

    .line 273
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 274
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 275
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 276
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->mLabelText5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 277
    return-void
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 4
    .parameter "footer"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mFooterView:Landroid/view/View;

    .line 296
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mFooterView:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
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
            "Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;>;"
    if-eqz p1, :cond_0

    .line 283
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mChanelDetailListEntity:Ljava/util/ArrayList;

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mChanelDetailListEntity:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setMLastFlag(Z)V
    .locals 0
    .parameter "mLastFlag"

    .prologue
    .line 300
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mLastFlag:Z

    .line 301
    return-void
.end method

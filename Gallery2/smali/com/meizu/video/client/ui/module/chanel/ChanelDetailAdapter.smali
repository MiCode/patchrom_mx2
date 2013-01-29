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

.field private asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

.field private chanelDetailListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;",
            ">;"
        }
    .end annotation
.end field

.field private chanelName:Ljava/lang/String;

.field private footerView:Landroid/view/View;

.field private gridView:Landroid/widget/GridView;

.field private mContext:Landroid/content/Context;

.field private mLastFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/GridView;Ljava/lang/String;)V
    .locals 1
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

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->gridView:Landroid/widget/GridView;

    .line 34
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->chanelName:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mLastFlag:Z

    .line 41
    const-string v0, "ChanelDetailAdapter"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->TAG:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->chanelDetailListEntity:Ljava/util/ArrayList;

    .line 47
    iput-object p3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->gridView:Landroid/widget/GridView;

    .line 48
    iput-object p4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->chanelName:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/meizu/video/client/util/AsyncImageLoader;

    invoke-direct {v0}, Lcom/meizu/video/client/util/AsyncImageLoader;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 54
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->gridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->chanelName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, count:I
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->chanelDetailListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->chanelDetailListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 79
    iget-boolean v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mLastFlag:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->footerView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 85
    :cond_0
    return v0
.end method

.method public getItem(I)Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->chanelDetailListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->chanelDetailListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;

    .line 96
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 101
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 30
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->chanelDetailListEntity:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->chanelDetailListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p1

    if-lt v0, v3, :cond_0

    .line 107
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mLastFlag:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->footerView:Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_0

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->footerView:Landroid/view/View;

    .line 296
    :goto_0
    return-object v3

    .line 113
    :cond_0
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/meizu/video/client/common/LoadingMoreFootView;

    if-eqz v3, :cond_b

    .line 114
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04000e

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 115
    new-instance v29, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;

    invoke-direct/range {v29 .. v30}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;)V

    .line 116
    .local v29, vHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->initViewHolder(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;Landroid/view/View;)V

    .line 117
    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    :goto_1
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText1:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText2LinearLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText3:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText4:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText5:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->chanelDetailImage:Landroid/widget/ImageView;

    const v4, 0x7f020117

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->imageView1:Landroid/widget/ImageView;

    const v4, 0x7f020055

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    const v4, 0x7f020055

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->imageView3:Landroid/widget/ImageView;

    const v4, 0x7f020055

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->imageView4:Landroid/widget/ImageView;

    const v4, 0x7f020055

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->imageView5:Landroid/widget/ImageView;

    const v4, 0x7f020055

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;

    move-result-object v18

    .line 137
    .local v18, channelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    if-eqz v18, :cond_14

    .line 139
    invoke-virtual/range {v18 .. v18}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->getVid()Ljava/lang/String;

    move-result-object v20

    .line 140
    .local v20, id_tag:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->getLableListEntity()Ljava/util/ArrayList;

    move-result-object v23

    .line 141
    .local v23, lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    if-eqz v23, :cond_14

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 143
    const-string v7, ""

    .line 145
    .local v7, imageUrl:Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, j:I
    :goto_2
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_13

    .line 146
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/meizu/video/client/ui/entity/LableEntity;

    .line 147
    .local v22, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    if-eqz v22, :cond_a

    .line 148
    const-string v3, "image"

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 152
    :cond_2
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText1:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "text-title"

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 153
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText1:Landroid/widget/TextView;

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText1:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->setChanelProgramName(Ljava/lang/String;)V

    .line 157
    :cond_3
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText2LinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "text-image"

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 158
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText2_1:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

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

    .line 159
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText2_2:Landroid/widget/TextView;

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :try_start_0
    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    .line 162
    .local v26, score:D
    const-wide/high16 v3, 0x4000

    div-double v3, v26, v3

    double-to-int v0, v3

    move/from16 v24, v0

    .line 163
    .local v24, num:I
    const-wide/high16 v3, 0x4000

    rem-double v3, v26, v3

    double-to-int v0, v3

    move/from16 v25, v0

    .line 164
    .local v25, num_item:I
    const/4 v3, 0x1

    move/from16 v0, v24

    if-ge v0, v3, :cond_4

    .line 165
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_c

    .line 166
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->imageView1:Landroid/widget/ImageView;

    const v4, 0x7f020053

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    const/16 v25, 0x0

    .line 172
    :cond_4
    :goto_3
    const/4 v3, 0x2

    move/from16 v0, v24

    if-ge v0, v3, :cond_5

    .line 173
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_d

    .line 174
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    const v4, 0x7f020053

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    const/16 v25, 0x0

    .line 180
    :cond_5
    :goto_4
    const/4 v3, 0x3

    move/from16 v0, v24

    if-ge v0, v3, :cond_6

    .line 181
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_e

    .line 182
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->imageView3:Landroid/widget/ImageView;

    const v4, 0x7f020053

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    const/16 v25, 0x0

    .line 188
    :cond_6
    :goto_5
    const/4 v3, 0x4

    move/from16 v0, v24

    if-ge v0, v3, :cond_7

    .line 189
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_f

    .line 190
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->imageView4:Landroid/widget/ImageView;

    const v4, 0x7f020053

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    const/16 v25, 0x0

    .line 196
    :cond_7
    :goto_6
    const/4 v3, 0x5

    move/from16 v0, v24

    if-ge v0, v3, :cond_8

    .line 197
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_10

    .line 198
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->imageView5:Landroid/widget/ImageView;

    const v4, 0x7f020053

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    const/16 v25, 0x0

    .line 204
    :cond_8
    :goto_7
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText2LinearLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v24           #num:I
    .end local v25           #num_item:I
    .end local v26           #score:D
    :cond_9
    :goto_8
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText3:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "text"

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 210
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText3:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText3:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :cond_a
    :goto_9
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 119
    .end local v7           #imageUrl:Ljava/lang/String;
    .end local v18           #channelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    .end local v20           #id_tag:Ljava/lang/String;
    .end local v21           #j:I
    .end local v22           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    .end local v23           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .end local v29           #vHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;

    .restart local v29       #vHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;
    goto/16 :goto_1

    .line 169
    .restart local v7       #imageUrl:Ljava/lang/String;
    .restart local v18       #channelDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;
    .restart local v20       #id_tag:Ljava/lang/String;
    .restart local v21       #j:I
    .restart local v22       #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    .restart local v23       #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .restart local v24       #num:I
    .restart local v25       #num_item:I
    .restart local v26       #score:D
    :cond_c
    :try_start_1
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->imageView1:Landroid/widget/ImageView;

    const v4, 0x7f020054

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 205
    .end local v24           #num:I
    .end local v25           #num_item:I
    .end local v26           #score:D
    :catch_0
    move-exception v3

    goto :goto_8

    .line 177
    .restart local v24       #num:I
    .restart local v25       #num_item:I
    .restart local v26       #score:D
    :cond_d
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    const v4, 0x7f020054

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 185
    :cond_e
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->imageView3:Landroid/widget/ImageView;

    const v4, 0x7f020054

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 193
    :cond_f
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->imageView4:Landroid/widget/ImageView;

    const v4, 0x7f020054

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 201
    :cond_10
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->imageView5:Landroid/widget/ImageView;

    const v4, 0x7f020054

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 212
    .end local v24           #num:I
    .end local v25           #num_item:I
    .end local v26           #score:D
    :cond_11
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText4:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "text"

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 213
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText4:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText4:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 215
    :cond_12
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText5:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "text"

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 216
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText5:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText5:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 224
    .end local v22           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_13
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->chanelDetailImage:Landroid/widget/ImageView;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mContext:Landroid/content/Context;

    const/16 v4, 0x72

    invoke-static {v3, v4}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v8

    .line 227
    .local v8, imageWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mContext:Landroid/content/Context;

    const/16 v4, 0x98

    invoke-static {v3, v4}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v9

    .line 228
    .local v9, imageHeight:I
    const/16 v17, 0x0

    .line 231
    .local v17, cachedImage:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v10, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$1;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;Ljava/lang/String;)V

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/meizu/video/client/util/AsyncImageLoader;->loadBitmap(ILjava/lang/String;Lcom/meizu/video/client/common/Constant$InterfaceType;Ljava/lang/String;IILcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 249
    if-eqz v17, :cond_15

    .line 250
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->chanelDetailImage:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 251
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->chanelDetailImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 256
    :goto_a
    invoke-virtual/range {v18 .. v18}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->getChanelProgramName()Ljava/lang/String;

    move-result-object v12

    .line 257
    .local v12, chanelProgramName:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->getVid()Ljava/lang/String;

    move-result-object v14

    .line 258
    .local v14, vid:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->getCid()Ljava/lang/String;

    move-result-object v13

    .line 259
    .local v13, cid:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->getMediaDataType()Ljava/lang/String;

    move-result-object v15

    .line 260
    .local v15, mediaDataType:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;->getIntro()Ljava/lang/String;

    move-result-object v16

    .line 261
    .local v16, intro:Ljava/lang/String;
    new-instance v10, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$2;

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v16}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$2;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    .end local v7           #imageUrl:Ljava/lang/String;
    .end local v8           #imageWidth:I
    .end local v9           #imageHeight:I
    .end local v12           #chanelProgramName:Ljava/lang/String;
    .end local v13           #cid:Ljava/lang/String;
    .end local v14           #vid:Ljava/lang/String;
    .end local v15           #mediaDataType:Ljava/lang/String;
    .end local v16           #intro:Ljava/lang/String;
    .end local v17           #cachedImage:Landroid/graphics/Bitmap;
    .end local v20           #id_tag:Ljava/lang/String;
    .end local v21           #j:I
    .end local v23           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_14
    const/16 v28, 0x0

    .line 277
    .local v28, topSpace:I
    const/16 v19, 0x0

    .line 278
    .local v19, colNum:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_17

    .line 279
    const/16 v19, 0x2

    .line 280
    div-int v3, p1, v19

    if-nez v3, :cond_16

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mContext:Landroid/content/Context;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    add-int/lit8 v28, v3, 0x62

    .line 294
    :goto_b
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    move-object/from16 v3, p2

    .line 296
    goto/16 :goto_0

    .line 253
    .end local v19           #colNum:I
    .end local v28           #topSpace:I
    .restart local v7       #imageUrl:Ljava/lang/String;
    .restart local v8       #imageWidth:I
    .restart local v9       #imageHeight:I
    .restart local v17       #cachedImage:Landroid/graphics/Bitmap;
    .restart local v20       #id_tag:Ljava/lang/String;
    .restart local v21       #j:I
    .restart local v23       #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_15
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->chanelDetailImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_a

    .line 283
    .end local v7           #imageUrl:Ljava/lang/String;
    .end local v8           #imageWidth:I
    .end local v9           #imageHeight:I
    .end local v17           #cachedImage:Landroid/graphics/Bitmap;
    .end local v20           #id_tag:Ljava/lang/String;
    .end local v21           #j:I
    .end local v23           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .restart local v19       #colNum:I
    .restart local v28       #topSpace:I
    :cond_16
    const/16 v28, 0x0

    goto :goto_b

    .line 286
    :cond_17
    const/16 v19, 0x1

    .line 287
    div-int v3, p1, v19

    if-nez v3, :cond_18

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mContext:Landroid/content/Context;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    add-int/lit8 v28, v3, 0x62

    goto :goto_b

    .line 290
    :cond_18
    const/16 v28, 0x0

    goto :goto_b
.end method

.method public initViewHolder(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;Landroid/view/View;)V
    .locals 2
    .parameter "viewHolder"
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 300
    const v0, 0x7f0d001b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->chanelDetailImage:Landroid/widget/ImageView;

    .line 301
    const v0, 0x7f0d001c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText1:Landroid/widget/TextView;

    .line 303
    const v0, 0x7f0d001d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText2LinearLayout:Landroid/widget/LinearLayout;

    .line 304
    const v0, 0x7f0d001e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText2_1:Landroid/widget/TextView;

    .line 305
    const v0, 0x7f0d001f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->imageView1:Landroid/widget/ImageView;

    .line 306
    const v0, 0x7f0d0020

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    .line 307
    const v0, 0x7f0d0021

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->imageView3:Landroid/widget/ImageView;

    .line 308
    const v0, 0x7f0d0022

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->imageView4:Landroid/widget/ImageView;

    .line 309
    const v0, 0x7f0d0023

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->imageView5:Landroid/widget/ImageView;

    .line 310
    const v0, 0x7f0d0024

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText2_2:Landroid/widget/TextView;

    .line 312
    const v0, 0x7f0d0025

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText3:Landroid/widget/TextView;

    .line 313
    const v0, 0x7f0d0026

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText4:Landroid/widget/TextView;

    .line 314
    const v0, 0x7f0d0027

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText5:Landroid/widget/TextView;

    .line 316
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 317
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 318
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 319
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter$ViewHolder;->labelText5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 320
    return-void
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 4
    .parameter "footer"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->footerView:Landroid/view/View;

    .line 339
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->footerView:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
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
    .line 324
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;>;"
    if-eqz p1, :cond_0

    .line 326
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->chanelDetailListEntity:Ljava/util/ArrayList;

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->chanelDetailListEntity:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setMLastFlag(Z)V
    .locals 0
    .parameter "mLastFlag"

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->mLastFlag:Z

    .line 344
    return-void
.end method

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
.field private asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

.field private focusImageGallery:Landroid/widget/Gallery;

.field private mContext:Landroid/content/Context;

.field private recommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

.field private recommendListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;"
        }
    .end annotation
.end field


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

    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;

    .line 36
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->focusImageGallery:Landroid/widget/Gallery;

    .line 37
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 39
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    .line 44
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendListEntity:Ljava/util/ArrayList;

    .line 46
    iput-object p3, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->focusImageGallery:Landroid/widget/Gallery;

    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/meizu/video/client/util/AsyncImageLoader;

    invoke-direct {v0}, Lcom/meizu/video/client/util/AsyncImageLoader;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    .line 52
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->initPxLengthValue(Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;)V

    .line 54
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;)Landroid/widget/Gallery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->focusImageGallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 84
    :cond_0
    return v0
.end method

.method public getItem(I)Lcom/meizu/video/client/ui/entity/RecommendEntity;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/RecommendEntity;

    .line 96
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/RecommendEntity;

    move-result-object v0

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
    .locals 30
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 108
    if-nez p2, :cond_2

    .line 109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040069

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 110
    new-instance v29, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;

    invoke-direct/range {v29 .. v30}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;)V

    .line 111
    .local v29, vHolder:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;
    const v3, 0x7f0d0150

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->recommend_image:Landroid/widget/ImageView;

    .line 112
    const v3, 0x7f0d0151

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->recommend_title:Landroid/widget/TextView;

    .line 113
    const v3, 0x7f0d0152

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->recommend_image_cover:Landroid/widget/ImageView;

    .line 114
    const v3, 0x7f0d0018

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->image_cover:Landroid/widget/ImageView;

    .line 115
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->recommend_title:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 116
    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/RecommendEntity;

    move-result-object v27

    .line 122
    .local v27, reList:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    if-eqz v27, :cond_4

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "focus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 125
    .local v18, id_tag:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getLableListEntity()Ljava/util/ArrayList;

    move-result-object v23

    .line 126
    .local v23, lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    if-eqz v23, :cond_4

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 127
    const-string v7, ""

    .line 128
    .local v7, imageUrl:Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, j:I
    :goto_1
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_3

    .line 129
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/meizu/video/client/ui/entity/LableEntity;

    .line 130
    .local v22, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    if-eqz v22, :cond_1

    .line 131
    const-string v3, "text-title"

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->recommend_title:Landroid/widget/TextView;

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->setChanelProgramName(Ljava/lang/String;)V

    .line 135
    :cond_0
    const-string v3, "image"

    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    invoke-virtual/range {v22 .. v22}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 128
    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 118
    .end local v7           #imageUrl:Ljava/lang/String;
    .end local v18           #id_tag:Ljava/lang/String;
    .end local v21           #j:I
    .end local v22           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    .end local v23           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .end local v27           #reList:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    .end local v29           #vHolder:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;

    .restart local v29       #vHolder:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;
    goto/16 :goto_0

    .line 141
    .restart local v7       #imageUrl:Ljava/lang/String;
    .restart local v18       #id_tag:Ljava/lang/String;
    .restart local v21       #j:I
    .restart local v23       #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .restart local v27       #reList:Lcom/meizu/video/client/ui/entity/RecommendEntity;
    :cond_3
    const/4 v8, 0x0

    .line 142
    .local v8, imageWidth:I
    const/4 v9, 0x0

    .line 143
    .local v9, imageHeight:I
    const/16 v20, 0x0

    .line 144
    .local v20, imageTitleWidth:I
    const/16 v19, 0x0

    .line 145
    .local v19, imageTitleHeight:I
    const/16 v24, 0x0

    .line 146
    .local v24, leftSpace:I
    const/16 v28, 0x0

    .line 147
    .local v28, topSpace:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    iget v8, v3, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->bigImageWidth_land:I

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    iget v9, v3, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->bigImageHeight_land:I

    .line 151
    move/from16 v20, v8

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    iget v0, v3, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->bigImageTitleHeight_land:I

    move/from16 v19, v0

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    iget v0, v3, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->leftMarginNum_land:I

    move/from16 v24, v0

    .line 155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    iget v0, v3, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->topFirstMarginNum_land:I

    move/from16 v28, v0

    .line 157
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->image_cover:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    :goto_2
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->recommend_image:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout$LayoutParams;

    .line 172
    .local v25, linearParams1:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v25

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 173
    move-object/from16 v0, v25

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 174
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->recommend_image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->recommend_title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/widget/RelativeLayout$LayoutParams;

    .line 177
    .local v26, linearParams2:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v26

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 178
    move/from16 v0, v19

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 179
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->recommend_title:Landroid/widget/TextView;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->recommend_image:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 183
    const/16 v17, 0x0

    .line 186
    .local v17, cachedImage:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v10, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v10, v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$1;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;Ljava/lang/String;)V

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/meizu/video/client/util/AsyncImageLoader;->loadBitmap(ILjava/lang/String;Lcom/meizu/video/client/common/Constant$InterfaceType;Ljava/lang/String;IILcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 212
    if-eqz v17, :cond_6

    .line 213
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->recommend_image:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 214
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->recommend_image:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 221
    :goto_3
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getChanelProgramName()Ljava/lang/String;

    move-result-object v12

    .line 222
    .local v12, chanelProgramName:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getCid()Ljava/lang/String;

    move-result-object v13

    .line 223
    .local v13, cid:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getVid()Ljava/lang/String;

    move-result-object v14

    .line 224
    .local v14, vid:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getMediaDataType()Ljava/lang/String;

    move-result-object v15

    .line 225
    .local v15, mediaDataType:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/meizu/video/client/ui/entity/RecommendEntity;->getIntro()Ljava/lang/String;

    move-result-object v16

    .line 226
    .local v16, intro:Ljava/lang/String;
    new-instance v10, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$2;

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v16}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$2;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 246
    .end local v7           #imageUrl:Ljava/lang/String;
    .end local v8           #imageWidth:I
    .end local v9           #imageHeight:I
    .end local v12           #chanelProgramName:Ljava/lang/String;
    .end local v13           #cid:Ljava/lang/String;
    .end local v14           #vid:Ljava/lang/String;
    .end local v15           #mediaDataType:Ljava/lang/String;
    .end local v16           #intro:Ljava/lang/String;
    .end local v17           #cachedImage:Landroid/graphics/Bitmap;
    .end local v18           #id_tag:Ljava/lang/String;
    .end local v19           #imageTitleHeight:I
    .end local v20           #imageTitleWidth:I
    .end local v21           #j:I
    .end local v23           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .end local v24           #leftSpace:I
    .end local v25           #linearParams1:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v26           #linearParams2:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v28           #topSpace:I
    :cond_4
    return-object p2

    .line 159
    .restart local v7       #imageUrl:Ljava/lang/String;
    .restart local v8       #imageWidth:I
    .restart local v9       #imageHeight:I
    .restart local v18       #id_tag:Ljava/lang/String;
    .restart local v19       #imageTitleHeight:I
    .restart local v20       #imageTitleWidth:I
    .restart local v21       #j:I
    .restart local v23       #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    .restart local v24       #leftSpace:I
    .restart local v28       #topSpace:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    iget v8, v3, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->bigImageWidth_port:I

    .line 160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    iget v9, v3, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->bigImageHeight_port:I

    .line 162
    move/from16 v20, v8

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    iget v0, v3, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->bigImageTitleHeight_port:I

    move/from16 v19, v0

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    iget v0, v3, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->leftMarginNum_port:I

    move/from16 v24, v0

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendFocusPxValue:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;

    iget v0, v3, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->topFirstMarginNum_port:I

    move/from16 v28, v0

    .line 168
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->image_cover:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 217
    .restart local v17       #cachedImage:Landroid/graphics/Bitmap;
    .restart local v25       #linearParams1:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v26       #linearParams2:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$ViewHolder;->recommend_image:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3
.end method

.method public initPxLengthValue(Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;)V
    .locals 4
    .parameter "recommendFocusPxValue"

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x230

    invoke-static {v0, v1}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->bigImageWidth_land:I

    .line 263
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0xf0

    invoke-static {v0, v1}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->bigImageHeight_land:I

    .line 264
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;

    const-wide/high16 v1, 0x4079

    invoke-static {v0, v1, v2}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->bigImageWidth_port:I

    .line 265
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;

    const-wide v1, 0x4069700000000000L

    invoke-static {v0, v1, v2}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->bigImageHeight_port:I

    .line 267
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->bigImageTitleHeight_port:I

    .line 268
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->bigImageTitleHeight_land:I

    .line 270
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->leftMarginNum_land:I

    .line 271
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x62

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->topFirstMarginNum_land:I

    .line 272
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->leftMarginNum_port:I

    .line 273
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x62

    iput v0, p1, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter$RecommendFocusPxValue;->topFirstMarginNum_port:I

    .line 275
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
    .line 251
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/RecommendEntity;>;"
    if-eqz p1, :cond_0

    .line 253
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendListEntity:Ljava/util/ArrayList;

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->recommendListEntity:Ljava/util/ArrayList;

    goto :goto_0
.end method

.class public Lcom/meizu/video/client/ui/module/search/SearchAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

.field private mChanelName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFooterView:Landroid/view/View;

.field private mGridView:Landroid/widget/GridView;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mLastFlag:Z

.field private mRes:Landroid/content/res/Resources;

.field private mSearchListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/SearchEntity;",
            ">;"
        }
    .end annotation
.end field


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
            "Lcom/meizu/video/client/ui/entity/SearchEntity;",
            ">;",
            "Landroid/widget/GridView;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, searchListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/SearchEntity;>;"
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mGridView:Landroid/widget/GridView;

    .line 31
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mChanelName:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mLastFlag:Z

    .line 44
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mSearchListEntity:Ljava/util/ArrayList;

    .line 46
    iput-object p3, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mGridView:Landroid/widget/GridView;

    .line 47
    iput-object p4, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mChanelName:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/meizu/video/client/util/AsyncImageLoader;

    invoke-direct {v0}, Lcom/meizu/video/client/util/AsyncImageLoader;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mRes:Landroid/content/res/Resources;

    .line 54
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0900dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mImageWidth:I

    .line 55
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0900de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mImageHeight:I

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/search/SearchAdapter;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, count:I
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mSearchListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mSearchListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 81
    iget-boolean v1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mLastFlag:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mFooterView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 87
    :cond_0
    return v0
.end method

.method public getItem(I)Lcom/meizu/video/client/ui/entity/SearchEntity;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mSearchListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mSearchListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/SearchEntity;

    .line 98
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/SearchEntity;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 103
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v7, 0x7f020051

    const/16 v6, 0x8

    .line 108
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mSearchListEntity:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mSearchListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    .line 109
    iget-boolean v2, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mLastFlag:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mFooterView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mFooterView:Landroid/view/View;

    .line 139
    :goto_0
    return-object v2

    .line 115
    :cond_0
    if-eqz p2, :cond_1

    instance-of v2, p2, Lcom/meizu/video/client/common/LoadingMoreFootView;

    if-eqz v2, :cond_2

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040079

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 117
    new-instance v1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;-><init>(Lcom/meizu/video/client/ui/module/search/SearchAdapter;)V

    .line 118
    .local v1, vHolder:Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;
    invoke-virtual {p0, v1, p2}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->initViewHolder(Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;Landroid/view/View;)V

    .line 119
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    :goto_1
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText1:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText2LinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText3:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText4:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText5:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mImageView3:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mImageView4:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mImageView5:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/SearchEntity;

    move-result-object v0

    .line 137
    .local v0, searchEntity:Lcom/meizu/video/client/ui/entity/SearchEntity;
    invoke-virtual {p0, p2, v1, p1, v0}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->updateViewData(Landroid/view/View;Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;ILcom/meizu/video/client/ui/entity/SearchEntity;)V

    move-object v2, p2

    .line 139
    goto :goto_0

    .line 121
    .end local v0           #searchEntity:Lcom/meizu/video/client/ui/entity/SearchEntity;
    .end local v1           #vHolder:Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;

    .restart local v1       #vHolder:Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;
    goto :goto_1
.end method

.method public initViewHolder(Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;Landroid/view/View;)V
    .locals 2
    .parameter "viewHolder"
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 143
    const v0, 0x7f0d0182

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mSearchImage:Landroid/widget/ImageView;

    .line 144
    const v0, 0x7f0d0020

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText1:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0d0021

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText2LinearLayout:Landroid/widget/LinearLayout;

    .line 147
    const v0, 0x7f0d0022

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText21:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0d0023

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mImageView1:Landroid/widget/ImageView;

    .line 149
    const v0, 0x7f0d0024

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mImageView2:Landroid/widget/ImageView;

    .line 150
    const v0, 0x7f0d0025

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mImageView3:Landroid/widget/ImageView;

    .line 151
    const v0, 0x7f0d0026

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mImageView4:Landroid/widget/ImageView;

    .line 152
    const v0, 0x7f0d0027

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mImageView5:Landroid/widget/ImageView;

    .line 153
    const v0, 0x7f0d0028

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText22:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0d0029

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText3:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f0d002a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText4:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f0d002b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText5:Landroid/widget/TextView;

    .line 159
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 160
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 161
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 162
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 163
    return-void
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 4
    .parameter "footer"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mFooterView:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mFooterView:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
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
            "Lcom/meizu/video/client/ui/entity/SearchEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/SearchEntity;>;"
    if-eqz p1, :cond_0

    .line 169
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mSearchListEntity:Ljava/util/ArrayList;

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mSearchListEntity:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setMLastFlag(Z)V
    .locals 0
    .parameter "mLastFlag"

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mLastFlag:Z

    .line 302
    return-void
.end method

.method public updateViewData(Landroid/view/View;Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;ILcom/meizu/video/client/ui/entity/SearchEntity;)V
    .locals 18
    .parameter "view"
    .parameter "vHolder"
    .parameter "position"
    .parameter "searchEntity"

    .prologue
    .line 187
    if-eqz p2, :cond_11

    .line 188
    if-eqz p4, :cond_11

    .line 189
    invoke-virtual/range {p4 .. p4}, Lcom/meizu/video/client/ui/entity/SearchEntity;->getVid()Ljava/lang/String;

    move-result-object v10

    .line 190
    .local v10, id_tag:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/meizu/video/client/ui/entity/SearchEntity;->getLableListEntity()Ljava/util/ArrayList;

    move-result-object v13

    .line 191
    .local v13, lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    if-eqz v13, :cond_11

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 192
    const-string v5, ""

    .line 193
    .local v5, imageUrl:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, j:I
    :goto_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_10

    .line 194
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/meizu/video/client/ui/entity/LableEntity;

    .line 195
    .local v12, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    if-eqz v12, :cond_8

    .line 196
    const-string v1, "image"

    invoke-virtual {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 199
    :cond_0
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "text-title"

    invoke-virtual {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText1:Landroid/widget/TextView;

    invoke-virtual {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText1:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    invoke-virtual {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setChanelProgramName(Ljava/lang/String;)V

    .line 204
    :cond_1
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText2LinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "text-image"

    invoke-virtual {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 205
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText21:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText22:Landroid/widget/TextView;

    invoke-virtual {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :try_start_0
    invoke-virtual {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    .line 209
    .local v16, score:D
    const-wide/high16 v1, 0x4000

    div-double v1, v16, v1

    double-to-int v14, v1

    .line 210
    .local v14, num:I
    const-wide/high16 v1, 0x4000

    rem-double v1, v16, v1

    double-to-int v15, v1

    .line 211
    .local v15, num_item:I
    const/4 v1, 0x1

    if-ge v14, v1, :cond_2

    .line 212
    const/4 v1, 0x1

    if-ne v15, v1, :cond_9

    .line 213
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mImageView1:Landroid/widget/ImageView;

    const v2, 0x7f02004f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    const/4 v15, 0x0

    .line 220
    :cond_2
    :goto_1
    const/4 v1, 0x2

    if-ge v14, v1, :cond_3

    .line 221
    const/4 v1, 0x1

    if-ne v15, v1, :cond_a

    .line 222
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mImageView2:Landroid/widget/ImageView;

    const v2, 0x7f02004f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    const/4 v15, 0x0

    .line 228
    :cond_3
    :goto_2
    const/4 v1, 0x3

    if-ge v14, v1, :cond_4

    .line 229
    const/4 v1, 0x1

    if-ne v15, v1, :cond_b

    .line 230
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mImageView3:Landroid/widget/ImageView;

    const v2, 0x7f02004f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    const/4 v15, 0x0

    .line 236
    :cond_4
    :goto_3
    const/4 v1, 0x4

    if-ge v14, v1, :cond_5

    .line 237
    const/4 v1, 0x1

    if-ne v15, v1, :cond_c

    .line 238
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mImageView4:Landroid/widget/ImageView;

    const v2, 0x7f02004f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    const/4 v15, 0x0

    .line 244
    :cond_5
    :goto_4
    const/4 v1, 0x5

    if-ge v14, v1, :cond_6

    .line 245
    const/4 v1, 0x1

    if-ne v15, v1, :cond_d

    .line 246
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mImageView5:Landroid/widget/ImageView;

    const v2, 0x7f02004f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    const/4 v15, 0x0

    .line 252
    :cond_6
    :goto_5
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText2LinearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v14           #num:I
    .end local v15           #num_item:I
    .end local v16           #score:D
    :cond_7
    :goto_6
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText3:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "text"

    invoke-virtual {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 258
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText3:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText3:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    :cond_8
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 216
    .restart local v14       #num:I
    .restart local v15       #num_item:I
    .restart local v16       #score:D
    :cond_9
    :try_start_1
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mImageView1:Landroid/widget/ImageView;

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 253
    .end local v14           #num:I
    .end local v15           #num_item:I
    .end local v16           #score:D
    :catch_0
    move-exception v1

    goto :goto_6

    .line 225
    .restart local v14       #num:I
    .restart local v15       #num_item:I
    .restart local v16       #score:D
    :cond_a
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mImageView2:Landroid/widget/ImageView;

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 233
    :cond_b
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mImageView3:Landroid/widget/ImageView;

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 241
    :cond_c
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mImageView4:Landroid/widget/ImageView;

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 249
    :cond_d
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mImageView5:Landroid/widget/ImageView;

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 260
    .end local v14           #num:I
    .end local v15           #num_item:I
    .end local v16           #score:D
    :cond_e
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText4:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "text"

    invoke-virtual {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 261
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText4:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText4:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 263
    :cond_f
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText5:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "text"

    invoke-virtual {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 264
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText5:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mLabelText5:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 271
    .end local v12           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_10
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mSearchImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 273
    const/4 v9, 0x0

    .line 276
    .local v9, cachedImage:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mImageWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mImageHeight:I

    new-instance v8, Lcom/meizu/video/client/ui/module/search/SearchAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v10}, Lcom/meizu/video/client/ui/module/search/SearchAdapter$1;-><init>(Lcom/meizu/video/client/ui/module/search/SearchAdapter;Ljava/lang/String;)V

    move/from16 v2, p3

    invoke-virtual/range {v1 .. v8}, Lcom/meizu/video/client/util/AsyncImageLoader;->loadBitmap(ILjava/lang/String;Lcom/meizu/video/client/common/Constant$InterfaceType;Ljava/lang/String;IILcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 291
    if-eqz v9, :cond_11

    .line 292
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->mSearchImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 298
    .end local v5           #imageUrl:Ljava/lang/String;
    .end local v9           #cachedImage:Landroid/graphics/Bitmap;
    .end local v10           #id_tag:Ljava/lang/String;
    .end local v11           #j:I
    .end local v13           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_11
    return-void
.end method

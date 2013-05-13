.class public Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;
.super Landroid/widget/BaseAdapter;
.source "FavoriteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

.field private mChanelName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFavoritesListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/FavoriteEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mGridView:Landroid/widget/GridView;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mListView:Landroid/widget/ListView;

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .parameter "mContext"
    .parameter
    .parameter "chanelName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/FavoriteEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, favoritesListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/FavoriteEntity;>;"
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mGridView:Landroid/widget/GridView;

    .line 31
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mListView:Landroid/widget/ListView;

    .line 32
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mChanelName:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mFavoritesListEntity:Ljava/util/ArrayList;

    .line 45
    iput-object p3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mChanelName:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/meizu/video/client/util/AsyncImageLoader;

    invoke-direct {v0}, Lcom/meizu/video/client/util/AsyncImageLoader;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mRes:Landroid/content/res/Resources;

    .line 52
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mImageWidth:I

    .line 53
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mImageHeight:I

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mListView:Landroid/widget/ListView;

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
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mFavoritesListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mFavoritesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 87
    :cond_0
    return v0
.end method

.method public getItem(I)Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mFavoritesListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mFavoritesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    .line 98
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/FavoriteEntity;

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
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v8, 0x7f02006d

    const/4 v7, 0x0

    const/4 v6, 0x0

    const v5, 0x7f020051

    const/16 v4, 0x8

    .line 108
    if-eqz p2, :cond_0

    instance-of v2, p2, Lcom/meizu/video/client/common/LoadingMoreFootView;

    if-eqz v2, :cond_2

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04002a

    invoke-virtual {v2, v3, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 110
    new-instance v1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;)V

    .line 111
    .local v1, vHolder:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;
    invoke-virtual {p0, v1, p2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->initViewHolder(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;Landroid/view/View;)V

    .line 112
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    :goto_0
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText1:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText2LinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText3:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText4:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText5:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mImageView1:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mImageView3:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mImageView4:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mImageView5:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    move-result-object v0

    .line 130
    .local v0, entity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mRes:Landroid/content/res/Resources;

    if-nez v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mRes:Landroid/content/res/Resources;

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 134
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 135
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 151
    :goto_1
    invoke-virtual {p0, v1, p1, v0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->updateViewData(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;ILcom/meizu/video/client/ui/entity/FavoriteEntity;)V

    .line 153
    return-object p2

    .line 114
    .end local v0           #entity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    .end local v1           #vHolder:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;

    .restart local v1       #vHolder:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;
    goto :goto_0

    .line 138
    .restart local v0       #entity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    :cond_3
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 141
    :cond_4
    iget-object v2, v1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 142
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 143
    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 144
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1

    .line 146
    :cond_5
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p1, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1
.end method

.method public initViewHolder(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;Landroid/view/View;)V
    .locals 2
    .parameter "viewHolder"
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 157
    const v0, 0x7f0d0089

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mFavoriteImage:Landroid/widget/ImageView;

    .line 158
    const v0, 0x7f0d0020

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText1:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f0d0021

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText2LinearLayout:Landroid/widget/LinearLayout;

    .line 161
    const v0, 0x7f0d0022

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText21:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f0d0023

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mImageView1:Landroid/widget/ImageView;

    .line 163
    const v0, 0x7f0d0024

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mImageView2:Landroid/widget/ImageView;

    .line 164
    const v0, 0x7f0d0025

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mImageView3:Landroid/widget/ImageView;

    .line 165
    const v0, 0x7f0d0026

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mImageView4:Landroid/widget/ImageView;

    .line 166
    const v0, 0x7f0d0027

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mImageView5:Landroid/widget/ImageView;

    .line 167
    const v0, 0x7f0d0028

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText22:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f0d0029

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText3:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f0d002a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText4:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f0d002b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText5:Landroid/widget/TextView;

    .line 173
    const v0, 0x1020001

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mCheck:Landroid/widget/CheckBox;

    .line 175
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 176
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 177
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 178
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 180
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
            "Lcom/meizu/video/client/ui/entity/FavoriteEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/FavoriteEntity;>;"
    if-eqz p1, :cond_0

    .line 184
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mFavoritesListEntity:Ljava/util/ArrayList;

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mFavoritesListEntity:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setView(Landroid/widget/ListView;Landroid/widget/GridView;)V
    .locals 0
    .parameter "listView"
    .parameter "gridView"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mListView:Landroid/widget/ListView;

    .line 58
    iput-object p2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mGridView:Landroid/widget/GridView;

    .line 59
    return-void
.end method

.method public updateViewData(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;ILcom/meizu/video/client/ui/entity/FavoriteEntity;)V
    .locals 19
    .parameter "vHolder"
    .parameter "position"
    .parameter "favoritesEntity"

    .prologue
    .line 200
    if-eqz p1, :cond_10

    .line 201
    if-eqz p3, :cond_10

    .line 202
    invoke-virtual/range {p3 .. p3}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getVid()Ljava/lang/String;

    move-result-object v11

    .line 203
    .local v11, id_tag:Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v13, lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getLabel1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual/range {p3 .. p3}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getLabel2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual/range {p3 .. p3}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getLabel3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual/range {p3 .. p3}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getLabel4()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText1:Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getChanelProgramName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText1:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    :cond_0
    if-eqz v13, :cond_10

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 213
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_f

    .line 214
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 215
    .local v12, lableEntity:Ljava/lang/String;
    if-eqz v12, :cond_6

    .line 216
    const-string v1, "\\"

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 217
    const-string v1, "\\"

    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 218
    .local v16, pos:I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText21:Landroid/widget/TextView;

    const/4 v2, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText22:Landroid/widget/TextView;

    add-int/lit8 v2, v16, 0x1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    add-int/lit8 v1, v16, 0x1

    :try_start_0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    .line 222
    .local v17, score:D
    const-wide/high16 v1, 0x4000

    div-double v1, v17, v1

    double-to-int v14, v1

    .line 223
    .local v14, num:I
    const-wide/high16 v1, 0x4000

    rem-double v1, v17, v1

    double-to-int v15, v1

    .line 224
    .local v15, numItem:I
    const/4 v1, 0x1

    if-ge v14, v1, :cond_1

    .line 225
    const/4 v1, 0x1

    if-ne v15, v1, :cond_7

    .line 226
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mImageView1:Landroid/widget/ImageView;

    const v2, 0x7f02004f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    const/4 v15, 0x0

    .line 232
    :cond_1
    :goto_1
    const/4 v1, 0x2

    if-ge v14, v1, :cond_2

    .line 233
    const/4 v1, 0x1

    if-ne v15, v1, :cond_8

    .line 234
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mImageView2:Landroid/widget/ImageView;

    const v2, 0x7f02004f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    const/4 v15, 0x0

    .line 240
    :cond_2
    :goto_2
    const/4 v1, 0x3

    if-ge v14, v1, :cond_3

    .line 241
    const/4 v1, 0x1

    if-ne v15, v1, :cond_9

    .line 242
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mImageView3:Landroid/widget/ImageView;

    const v2, 0x7f02004f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    const/4 v15, 0x0

    .line 248
    :cond_3
    :goto_3
    const/4 v1, 0x4

    if-ge v14, v1, :cond_4

    .line 249
    const/4 v1, 0x1

    if-ne v15, v1, :cond_a

    .line 250
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mImageView4:Landroid/widget/ImageView;

    const v2, 0x7f02004f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    const/4 v15, 0x0

    .line 256
    :cond_4
    :goto_4
    const/4 v1, 0x5

    if-ge v14, v1, :cond_5

    .line 257
    const/4 v1, 0x1

    if-ne v15, v1, :cond_b

    .line 258
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mImageView5:Landroid/widget/ImageView;

    const v2, 0x7f02004f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    const/4 v15, 0x0

    .line 264
    :cond_5
    :goto_5
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText2LinearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 213
    .end local v14           #num:I
    .end local v15           #numItem:I
    .end local v16           #pos:I
    .end local v17           #score:D
    :cond_6
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 229
    .restart local v14       #num:I
    .restart local v15       #numItem:I
    .restart local v16       #pos:I
    .restart local v17       #score:D
    :cond_7
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mImageView1:Landroid/widget/ImageView;

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 265
    .end local v14           #num:I
    .end local v15           #numItem:I
    .end local v17           #score:D
    :catch_0
    move-exception v1

    goto :goto_6

    .line 237
    .restart local v14       #num:I
    .restart local v15       #numItem:I
    .restart local v17       #score:D
    :cond_8
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mImageView2:Landroid/widget/ImageView;

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 245
    :cond_9
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mImageView3:Landroid/widget/ImageView;

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 253
    :cond_a
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mImageView4:Landroid/widget/ImageView;

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 261
    :cond_b
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mImageView5:Landroid/widget/ImageView;

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 268
    .end local v14           #num:I
    .end local v15           #numItem:I
    .end local v16           #pos:I
    .end local v17           #score:D
    :cond_c
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText3:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_d

    .line 269
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText3:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText3:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 271
    :cond_d
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText4:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_e

    .line 272
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText4:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText4:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 274
    :cond_e
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText5:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    .line 275
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText5:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mLabelText5:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 283
    .end local v12           #lableEntity:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mFavoriteImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 285
    const/4 v9, 0x0

    .line 286
    .local v9, cachedImage:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mImageWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mImageHeight:I

    new-instance v8, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v11}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$1;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;Ljava/lang/String;)V

    move/from16 v2, p2

    invoke-virtual/range {v1 .. v8}, Lcom/meizu/video/client/util/AsyncImageLoader;->loadBitmap(ILjava/lang/String;Lcom/meizu/video/client/common/Constant$InterfaceType;Ljava/lang/String;IILcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 311
    if-eqz v9, :cond_10

    .line 312
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->mFavoriteImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 318
    .end local v9           #cachedImage:Landroid/graphics/Bitmap;
    .end local v10           #i:I
    .end local v11           #id_tag:Ljava/lang/String;
    .end local v13           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_10
    return-void
.end method

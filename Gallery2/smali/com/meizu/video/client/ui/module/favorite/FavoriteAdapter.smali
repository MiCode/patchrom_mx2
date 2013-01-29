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
.field private asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

.field private chanelName:Ljava/lang/String;

.field private favoritesListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/FavoriteEntity;",
            ">;"
        }
    .end annotation
.end field

.field private gridView:Landroid/widget/GridView;

.field private listView:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
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

    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mContext:Landroid/content/Context;

    .line 32
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->gridView:Landroid/widget/GridView;

    .line 33
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->listView:Landroid/widget/ListView;

    .line 34
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->chanelName:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->favoritesListEntity:Ljava/util/ArrayList;

    .line 42
    iput-object p3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->chanelName:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/meizu/video/client/util/AsyncImageLoader;

    invoke-direct {v0}, Lcom/meizu/video/client/util/AsyncImageLoader;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 48
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->gridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->listView:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, count:I
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->favoritesListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->favoritesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 80
    :cond_0
    return v0
.end method

.method public getItem(I)Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->favoritesListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->favoritesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    .line 91
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 96
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const-wide/high16 v10, 0x4016

    const/4 v9, 0x0

    const v8, 0x7f020055

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 101
    if-eqz p2, :cond_0

    instance-of v4, p2, Lcom/meizu/video/client/common/LoadingMoreFootView;

    if-eqz v4, :cond_2

    .line 102
    :cond_0
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040029

    invoke-virtual {v4, v5, v9, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 103
    new-instance v3, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;)V

    .line 104
    .local v3, vHolder:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;
    invoke-virtual {p0, v3, p2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->initViewHolder(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;Landroid/view/View;)V

    .line 105
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    :goto_0
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText1:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText2LinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText3:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText4:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText5:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->favoriteImage:Landroid/widget/ImageView;

    const v5, 0x7f020117

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->imageView1:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->imageView3:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->imageView4:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->imageView5:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    move-result-object v1

    .line 124
    .local v1, entity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    const/4 v2, 0x0

    .line 125
    .local v2, topSpace:I
    const/4 v0, 0x0

    .line 126
    .local v0, colNum:I
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 127
    const/4 v0, 0x2

    .line 128
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v10, v11}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    add-int/lit8 v2, v4, 0x62

    .line 129
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 130
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 132
    const v4, 0x7f020070

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 133
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->gridView:Landroid/widget/GridView;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 151
    :goto_1
    div-int v4, p1, v0

    if-eqz v4, :cond_1

    .line 152
    const/4 v2, 0x0

    .line 154
    :cond_1
    invoke-virtual {p2, v6, v2, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 156
    invoke-virtual {p0, v3, p1, v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->updateViewData(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;ILcom/meizu/video/client/ui/entity/FavoriteEntity;)V

    .line 158
    return-object p2

    .line 107
    .end local v0           #colNum:I
    .end local v1           #entity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    .end local v2           #topSpace:I
    .end local v3           #vHolder:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;

    .restart local v3       #vHolder:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;
    goto/16 :goto_0

    .line 135
    .restart local v0       #colNum:I
    .restart local v1       #entity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    .restart local v2       #topSpace:I
    :cond_3
    invoke-virtual {p2, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->gridView:Landroid/widget/GridView;

    invoke-virtual {v4, p1, v6}, Landroid/widget/GridView;->setItemChecked(IZ)V

    goto :goto_1

    .line 139
    :cond_4
    const/4 v0, 0x1

    .line 140
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v10, v11}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    add-int/lit8 v2, v4, 0x62

    .line 141
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 142
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 143
    const v4, 0x7f020070

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 144
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->listView:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1

    .line 146
    :cond_5
    invoke-virtual {p2, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, p1, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1
.end method

.method public initViewHolder(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;Landroid/view/View;)V
    .locals 2
    .parameter "viewHolder"
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 162
    const v0, 0x7f0d0084

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->favoriteImage:Landroid/widget/ImageView;

    .line 163
    const v0, 0x7f0d001c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText1:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f0d001d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText2LinearLayout:Landroid/widget/LinearLayout;

    .line 166
    const v0, 0x7f0d001e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText2_1:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f0d001f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->imageView1:Landroid/widget/ImageView;

    .line 168
    const v0, 0x7f0d0020

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    .line 169
    const v0, 0x7f0d0021

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->imageView3:Landroid/widget/ImageView;

    .line 170
    const v0, 0x7f0d0022

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->imageView4:Landroid/widget/ImageView;

    .line 171
    const v0, 0x7f0d0023

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->imageView5:Landroid/widget/ImageView;

    .line 172
    const v0, 0x7f0d0024

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText2_2:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f0d0025

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText3:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f0d0026

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText4:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f0d0027

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText5:Landroid/widget/TextView;

    .line 178
    const v0, 0x1020001

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 180
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 181
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 182
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 183
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 184
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
    .line 187
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/FavoriteEntity;>;"
    if-eqz p1, :cond_0

    .line 188
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->favoritesListEntity:Ljava/util/ArrayList;

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->favoritesListEntity:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setPositionCheck(IZ)V
    .locals 1
    .parameter "position"
    .parameter "check"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->favoritesListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->favoritesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    invoke-virtual {v0, p2}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setSelected(Z)V

    .line 340
    :cond_0
    return-void
.end method

.method public setView(Landroid/widget/ListView;Landroid/widget/GridView;)V
    .locals 0
    .parameter "listView"
    .parameter "gridView"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->listView:Landroid/widget/ListView;

    .line 52
    iput-object p2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->gridView:Landroid/widget/GridView;

    .line 53
    return-void
.end method

.method public updateViewData(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;ILcom/meizu/video/client/ui/entity/FavoriteEntity;)V
    .locals 19
    .parameter "vHolder"
    .parameter "position"
    .parameter "favoritesEntity"

    .prologue
    .line 204
    if-eqz p1, :cond_10

    .line 205
    if-eqz p3, :cond_10

    .line 206
    invoke-virtual/range {p3 .. p3}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getVid()Ljava/lang/String;

    move-result-object v11

    .line 207
    .local v11, id_tag:Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v13, lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getLabel1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual/range {p3 .. p3}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getLabel2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual/range {p3 .. p3}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getLabel3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual/range {p3 .. p3}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getLabel4()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText1:Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getChanelProgramName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText1:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :cond_0
    if-eqz v13, :cond_10

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 217
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_f

    .line 218
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 219
    .local v12, lableEntity:Ljava/lang/String;
    if-eqz v12, :cond_6

    .line 220
    const-string v1, "\\"

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 221
    const-string v1, "\\"

    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 222
    .local v16, pos:I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText2_1:Landroid/widget/TextView;

    const/4 v2, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText2_2:Landroid/widget/TextView;

    add-int/lit8 v2, v16, 0x1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
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

    .line 226
    .local v17, score:D
    const-wide/high16 v1, 0x4000

    div-double v1, v17, v1

    double-to-int v14, v1

    .line 227
    .local v14, num:I
    const-wide/high16 v1, 0x4000

    rem-double v1, v17, v1

    double-to-int v15, v1

    .line 228
    .local v15, num_item:I
    const/4 v1, 0x1

    if-ge v14, v1, :cond_1

    .line 229
    const/4 v1, 0x1

    if-ne v15, v1, :cond_7

    .line 230
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->imageView1:Landroid/widget/ImageView;

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    const/4 v15, 0x0

    .line 236
    :cond_1
    :goto_1
    const/4 v1, 0x2

    if-ge v14, v1, :cond_2

    .line 237
    const/4 v1, 0x1

    if-ne v15, v1, :cond_8

    .line 238
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    const/4 v15, 0x0

    .line 244
    :cond_2
    :goto_2
    const/4 v1, 0x3

    if-ge v14, v1, :cond_3

    .line 245
    const/4 v1, 0x1

    if-ne v15, v1, :cond_9

    .line 246
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->imageView3:Landroid/widget/ImageView;

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    const/4 v15, 0x0

    .line 252
    :cond_3
    :goto_3
    const/4 v1, 0x4

    if-ge v14, v1, :cond_4

    .line 253
    const/4 v1, 0x1

    if-ne v15, v1, :cond_a

    .line 254
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->imageView4:Landroid/widget/ImageView;

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    const/4 v15, 0x0

    .line 260
    :cond_4
    :goto_4
    const/4 v1, 0x5

    if-ge v14, v1, :cond_5

    .line 261
    const/4 v1, 0x1

    if-ne v15, v1, :cond_b

    .line 262
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->imageView5:Landroid/widget/ImageView;

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    const/4 v15, 0x0

    .line 268
    :cond_5
    :goto_5
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText2LinearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    .end local v14           #num:I
    .end local v15           #num_item:I
    .end local v16           #pos:I
    .end local v17           #score:D
    :cond_6
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 233
    .restart local v14       #num:I
    .restart local v15       #num_item:I
    .restart local v16       #pos:I
    .restart local v17       #score:D
    :cond_7
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->imageView1:Landroid/widget/ImageView;

    const v2, 0x7f020054

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 269
    .end local v14           #num:I
    .end local v15           #num_item:I
    .end local v17           #score:D
    :catch_0
    move-exception v1

    goto :goto_6

    .line 241
    .restart local v14       #num:I
    .restart local v15       #num_item:I
    .restart local v17       #score:D
    :cond_8
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    const v2, 0x7f020054

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 249
    :cond_9
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->imageView3:Landroid/widget/ImageView;

    const v2, 0x7f020054

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 257
    :cond_a
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->imageView4:Landroid/widget/ImageView;

    const v2, 0x7f020054

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 265
    :cond_b
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->imageView5:Landroid/widget/ImageView;

    const v2, 0x7f020054

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 272
    .end local v14           #num:I
    .end local v15           #num_item:I
    .end local v16           #pos:I
    .end local v17           #score:D
    :cond_c
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText3:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_d

    .line 273
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText3:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText3:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 275
    :cond_d
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText4:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_e

    .line 276
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText4:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText4:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 278
    :cond_e
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText5:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    .line 279
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText5:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->labelText5:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 287
    .end local v12           #lableEntity:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->favoriteImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x72

    invoke-static {v1, v2}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v6

    .line 289
    .local v6, imageWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x98

    invoke-static {v1, v2}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v7

    .line 290
    .local v7, imageHeight:I
    const/4 v9, 0x0

    .line 291
    .local v9, cachedImage:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v11}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$1;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;Ljava/lang/String;)V

    move/from16 v2, p2

    invoke-virtual/range {v1 .. v8}, Lcom/meizu/video/client/util/AsyncImageLoader;->loadBitmap(ILjava/lang/String;Lcom/meizu/video/client/common/Constant$InterfaceType;Ljava/lang/String;IILcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 322
    if-eqz v9, :cond_11

    .line 323
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->favoriteImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 324
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->favoriteImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 332
    .end local v6           #imageWidth:I
    .end local v7           #imageHeight:I
    .end local v9           #cachedImage:Landroid/graphics/Bitmap;
    .end local v10           #i:I
    .end local v11           #id_tag:Ljava/lang/String;
    .end local v13           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_10
    :goto_7
    return-void

    .line 326
    .restart local v6       #imageWidth:I
    .restart local v7       #imageHeight:I
    .restart local v9       #cachedImage:Landroid/graphics/Bitmap;
    .restart local v10       #i:I
    .restart local v11       #id_tag:Ljava/lang/String;
    .restart local v13       #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_11
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter$ViewHolder;->favoriteImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_7
.end method

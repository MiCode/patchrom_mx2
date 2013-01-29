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
.field private asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

.field private chanelName:Ljava/lang/String;

.field private footerView:Landroid/view/View;

.field private gridView:Landroid/widget/GridView;

.field private mContext:Landroid/content/Context;

.field private mLastFlag:Z

.field private searchListEntity:Ljava/util/ArrayList;
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

    .line 33
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->gridView:Landroid/widget/GridView;

    .line 36
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->chanelName:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mLastFlag:Z

    .line 44
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->searchListEntity:Ljava/util/ArrayList;

    .line 46
    iput-object p3, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->gridView:Landroid/widget/GridView;

    .line 47
    iput-object p4, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->chanelName:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/meizu/video/client/util/AsyncImageLoader;

    invoke-direct {v0}, Lcom/meizu/video/client/util/AsyncImageLoader;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 53
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/search/SearchAdapter;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->gridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/video/client/ui/module/search/SearchAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, count:I
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->searchListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->searchListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 78
    iget-boolean v1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mLastFlag:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->footerView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 84
    :cond_0
    return v0
.end method

.method public getItem(I)Lcom/meizu/video/client/ui/entity/SearchEntity;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 88
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->searchListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->searchListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/SearchEntity;

    .line 95
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/SearchEntity;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 100
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f020055

    const/16 v7, 0x8

    .line 105
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->searchListEntity:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->searchListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_0

    .line 106
    iget-boolean v4, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mLastFlag:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->footerView:Landroid/view/View;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_0

    .line 108
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->footerView:Landroid/view/View;

    .line 154
    :goto_0
    return-object v4

    .line 113
    :cond_0
    if-eqz p2, :cond_1

    instance-of v4, p2, Lcom/meizu/video/client/common/LoadingMoreFootView;

    if-eqz v4, :cond_2

    .line 114
    :cond_1
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040074

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 115
    new-instance v3, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;-><init>(Lcom/meizu/video/client/ui/module/search/SearchAdapter;)V

    .line 116
    .local v3, vHolder:Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;
    invoke-virtual {p0, v3, p2}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->initViewHolder(Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;Landroid/view/View;)V

    .line 117
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    :goto_1
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText1:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText2LinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText3:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText4:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText5:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->searchImage:Landroid/widget/ImageView;

    const v5, 0x7f020117

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->imageView1:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->imageView3:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->imageView4:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iget-object v4, v3, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->imageView5:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->getItem(I)Lcom/meizu/video/client/ui/entity/SearchEntity;

    move-result-object v1

    .line 136
    .local v1, searchEntity:Lcom/meizu/video/client/ui/entity/SearchEntity;
    invoke-virtual {p0, p2, v3, p1, v1}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->updateViewData(Landroid/view/View;Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;ILcom/meizu/video/client/ui/entity/SearchEntity;)V

    .line 138
    const/4 v2, 0x0

    .line 139
    .local v2, topSpace:I
    const/4 v0, 0x0

    .line 140
    .local v0, colNum:I
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 141
    const/4 v0, 0x2

    .line 142
    const/16 v2, 0x62

    .line 147
    :goto_2
    div-int v4, p1, v0

    if-nez v4, :cond_4

    .line 148
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v4

    add-int/lit8 v2, v4, 0x62

    .line 152
    :goto_3
    invoke-virtual {p2, v9, v2, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    move-object v4, p2

    .line 154
    goto/16 :goto_0

    .line 119
    .end local v0           #colNum:I
    .end local v1           #searchEntity:Lcom/meizu/video/client/ui/entity/SearchEntity;
    .end local v2           #topSpace:I
    .end local v3           #vHolder:Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;

    .restart local v3       #vHolder:Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;
    goto :goto_1

    .line 144
    .restart local v0       #colNum:I
    .restart local v1       #searchEntity:Lcom/meizu/video/client/ui/entity/SearchEntity;
    .restart local v2       #topSpace:I
    :cond_3
    const/4 v0, 0x1

    .line 145
    const/16 v2, 0x62

    goto :goto_2

    .line 150
    :cond_4
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public initViewHolder(Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;Landroid/view/View;)V
    .locals 2
    .parameter "viewHolder"
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 158
    const v0, 0x7f0d0168

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->searchImage:Landroid/widget/ImageView;

    .line 159
    const v0, 0x7f0d001c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText1:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f0d001d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText2LinearLayout:Landroid/widget/LinearLayout;

    .line 162
    const v0, 0x7f0d001e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText2_1:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0d001f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->imageView1:Landroid/widget/ImageView;

    .line 164
    const v0, 0x7f0d0020

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    .line 165
    const v0, 0x7f0d0021

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->imageView3:Landroid/widget/ImageView;

    .line 166
    const v0, 0x7f0d0022

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->imageView4:Landroid/widget/ImageView;

    .line 167
    const v0, 0x7f0d0023

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->imageView5:Landroid/widget/ImageView;

    .line 168
    const v0, 0x7f0d0024

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText2_2:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f0d0025

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText3:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f0d0026

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText4:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f0d0027

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText5:Landroid/widget/TextView;

    .line 174
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 175
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 176
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 177
    iget-object v0, p1, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 178
    return-void
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 4
    .parameter "footer"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->footerView:Landroid/view/View;

    .line 197
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->footerView:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
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
    .line 182
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/SearchEntity;>;"
    if-eqz p1, :cond_0

    .line 184
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->searchListEntity:Ljava/util/ArrayList;

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->searchListEntity:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setMLastFlag(Z)V
    .locals 0
    .parameter "mLastFlag"

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mLastFlag:Z

    .line 352
    return-void
.end method

.method public updateViewData(Landroid/view/View;Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;ILcom/meizu/video/client/ui/entity/SearchEntity;)V
    .locals 25
    .parameter "view"
    .parameter "vHolder"
    .parameter "position"
    .parameter "searchEntity"

    .prologue
    .line 202
    if-eqz p2, :cond_14

    .line 203
    if-eqz p4, :cond_14

    .line 204
    invoke-virtual/range {p4 .. p4}, Lcom/meizu/video/client/ui/entity/SearchEntity;->getVid()Ljava/lang/String;

    move-result-object v17

    .line 205
    .local v17, id_tag:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/meizu/video/client/ui/entity/SearchEntity;->getLableListEntity()Ljava/util/ArrayList;

    move-result-object v20

    .line 206
    .local v20, lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    if-eqz v20, :cond_14

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 207
    const-string v6, ""

    .line 208
    .local v6, imageUrl:Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, j:I
    :goto_0
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_13

    .line 209
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/meizu/video/client/ui/entity/LableEntity;

    .line 210
    .local v19, lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    if-eqz v19, :cond_b

    .line 211
    const-string v2, "image"

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-virtual/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 214
    :cond_0
    if-nez p2, :cond_1

    .line 215
    const-string v2, "wangyong"

    const-string v3, "vHolder is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText1:Landroid/widget/TextView;

    if-nez v2, :cond_2

    .line 218
    const-string v2, "wangyong"

    const-string v3, "vHolder.labelText1 is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_2
    invoke-virtual/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 221
    const-string v2, "wangyong"

    const-string v3, "lableEntity.getType() is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText1:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "text-title"

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 224
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText1:Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText1:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    invoke-virtual/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/SearchEntity;->setChanelProgramName(Ljava/lang/String;)V

    .line 228
    :cond_4
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText2LinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "text-image"

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 229
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText2_1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText2_2:Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    .line 233
    .local v23, score:D
    const-wide/high16 v2, 0x4000

    div-double v2, v23, v2

    double-to-int v0, v2

    move/from16 v21, v0

    .line 234
    .local v21, num:I
    const-wide/high16 v2, 0x4000

    rem-double v2, v23, v2

    double-to-int v0, v2

    move/from16 v22, v0

    .line 235
    .local v22, num_item:I
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ge v0, v2, :cond_5

    .line 236
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_c

    .line 237
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->imageView1:Landroid/widget/ImageView;

    const v3, 0x7f020053

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    const/16 v22, 0x0

    .line 244
    :cond_5
    :goto_1
    const/4 v2, 0x2

    move/from16 v0, v21

    if-ge v0, v2, :cond_6

    .line 245
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_d

    .line 246
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    const v3, 0x7f020053

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    const/16 v22, 0x0

    .line 252
    :cond_6
    :goto_2
    const/4 v2, 0x3

    move/from16 v0, v21

    if-ge v0, v2, :cond_7

    .line 253
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_e

    .line 254
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->imageView3:Landroid/widget/ImageView;

    const v3, 0x7f020053

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    const/16 v22, 0x0

    .line 260
    :cond_7
    :goto_3
    const/4 v2, 0x4

    move/from16 v0, v21

    if-ge v0, v2, :cond_8

    .line 261
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_f

    .line 262
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->imageView4:Landroid/widget/ImageView;

    const v3, 0x7f020053

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    const/16 v22, 0x0

    .line 268
    :cond_8
    :goto_4
    const/4 v2, 0x5

    move/from16 v0, v21

    if-ge v0, v2, :cond_9

    .line 269
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_10

    .line 270
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->imageView5:Landroid/widget/ImageView;

    const v3, 0x7f020053

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    const/16 v22, 0x0

    .line 276
    :cond_9
    :goto_5
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText2LinearLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v21           #num:I
    .end local v22           #num_item:I
    .end local v23           #score:D
    :cond_a
    :goto_6
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText3:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "text"

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 282
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText3:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText3:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    :cond_b
    :goto_7
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 240
    .restart local v21       #num:I
    .restart local v22       #num_item:I
    .restart local v23       #score:D
    :cond_c
    :try_start_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->imageView1:Landroid/widget/ImageView;

    const v3, 0x7f020054

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 277
    .end local v21           #num:I
    .end local v22           #num_item:I
    .end local v23           #score:D
    :catch_0
    move-exception v2

    goto :goto_6

    .line 249
    .restart local v21       #num:I
    .restart local v22       #num_item:I
    .restart local v23       #score:D
    :cond_d
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->imageView2:Landroid/widget/ImageView;

    const v3, 0x7f020054

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 257
    :cond_e
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->imageView3:Landroid/widget/ImageView;

    const v3, 0x7f020054

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 265
    :cond_f
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->imageView4:Landroid/widget/ImageView;

    const v3, 0x7f020054

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 273
    :cond_10
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->imageView5:Landroid/widget/ImageView;

    const v3, 0x7f020054

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 284
    .end local v21           #num:I
    .end local v22           #num_item:I
    .end local v23           #score:D
    :cond_11
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText4:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "text"

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 285
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText4:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText4:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 287
    :cond_12
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText5:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "text"

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 288
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText5:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->labelText5:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 295
    .end local v19           #lableEntity:Lcom/meizu/video/client/ui/entity/LableEntity;
    :cond_13
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->searchImage:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x72

    invoke-static {v2, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v7

    .line 297
    .local v7, imageWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x98

    invoke-static {v2, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v8

    .line 298
    .local v8, imageHeight:I
    const/16 v16, 0x0

    .line 301
    .local v16, cachedImage:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v9, Lcom/meizu/video/client/ui/module/search/SearchAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v9, v0, v1}, Lcom/meizu/video/client/ui/module/search/SearchAdapter$1;-><init>(Lcom/meizu/video/client/ui/module/search/SearchAdapter;Ljava/lang/String;)V

    move/from16 v3, p3

    invoke-virtual/range {v2 .. v9}, Lcom/meizu/video/client/util/AsyncImageLoader;->loadBitmap(ILjava/lang/String;Lcom/meizu/video/client/common/Constant$InterfaceType;Ljava/lang/String;IILcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 319
    if-eqz v16, :cond_15

    .line 320
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->searchImage:Landroid/widget/ImageView;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 321
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->searchImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 326
    :goto_8
    invoke-virtual/range {p4 .. p4}, Lcom/meizu/video/client/ui/entity/SearchEntity;->getChanelProgramName()Ljava/lang/String;

    move-result-object v11

    .line 327
    .local v11, chanelProgramName:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/meizu/video/client/ui/entity/SearchEntity;->getCid()Ljava/lang/String;

    move-result-object v12

    .line 328
    .local v12, cid:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/meizu/video/client/ui/entity/SearchEntity;->getVid()Ljava/lang/String;

    move-result-object v13

    .line 329
    .local v13, vid:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/meizu/video/client/ui/entity/SearchEntity;->getMediaDataType()Ljava/lang/String;

    move-result-object v14

    .line 330
    .local v14, mediaDataType:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/meizu/video/client/ui/entity/SearchEntity;->getIntro()Ljava/lang/String;

    move-result-object v15

    .line 331
    .local v15, intro:Ljava/lang/String;
    new-instance v9, Lcom/meizu/video/client/ui/module/search/SearchAdapter$2;

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v15}, Lcom/meizu/video/client/ui/module/search/SearchAdapter$2;-><init>(Lcom/meizu/video/client/ui/module/search/SearchAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    .end local v6           #imageUrl:Ljava/lang/String;
    .end local v7           #imageWidth:I
    .end local v8           #imageHeight:I
    .end local v11           #chanelProgramName:Ljava/lang/String;
    .end local v12           #cid:Ljava/lang/String;
    .end local v13           #vid:Ljava/lang/String;
    .end local v14           #mediaDataType:Ljava/lang/String;
    .end local v15           #intro:Ljava/lang/String;
    .end local v16           #cachedImage:Landroid/graphics/Bitmap;
    .end local v17           #id_tag:Ljava/lang/String;
    .end local v18           #j:I
    .end local v20           #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_14
    return-void

    .line 323
    .restart local v6       #imageUrl:Ljava/lang/String;
    .restart local v7       #imageWidth:I
    .restart local v8       #imageHeight:I
    .restart local v16       #cachedImage:Landroid/graphics/Bitmap;
    .restart local v17       #id_tag:Ljava/lang/String;
    .restart local v18       #j:I
    .restart local v20       #lableListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/LableEntity;>;"
    :cond_15
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter$ViewHolder;->searchImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_8
.end method

.class public Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChanelProgramDetailEpisodesAdapter.java"


# instance fields
.field private asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

.field private channelProgramDetailCommentListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/CommentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private channelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/EpisodesEntity;",
            ">;"
        }
    .end annotation
.end field

.field private channelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;",
            ">;"
        }
    .end annotation
.end field

.field private freshViewType:I

.field private listView:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field private viewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/video/client/util/AsyncImageLoader;I)V
    .locals 2
    .parameter "mContext"
    .parameter "asyncImageLoader"
    .parameter "viewType"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    .line 37
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->freshViewType:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->viewType:I

    .line 45
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->listView:Landroid/widget/ListView;

    .line 59
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 61
    iput p3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->viewType:I

    .line 62
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, count:I
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->freshViewType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->freshViewType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->channelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->channelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->channelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 83
    :cond_1
    :goto_0
    return v0

    .line 74
    :cond_2
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->freshViewType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 75
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->channelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->channelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->channelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 78
    :cond_3
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->freshViewType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 79
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->channelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->channelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->channelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, obj:Ljava/lang/Object;
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->freshViewType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->freshViewType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->channelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->channelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 107
    .end local v0           #obj:Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v0

    .line 94
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_2
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->freshViewType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 95
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->channelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->channelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_3
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->freshViewType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 101
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->channelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->channelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 112
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 117
    iget v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->freshViewType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 119
    if-nez p2, :cond_2

    .line 120
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040016

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 121
    const v6, 0x7f0d0041

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 122
    .local v5, tv1:Landroid/widget/TextView;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 123
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    :goto_0
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 128
    .local v3, obj:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 129
    .local v2, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    if-eqz v3, :cond_0

    instance-of v6, v3, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    if-eqz v6, :cond_0

    move-object v2, v3

    .line 130
    check-cast v2, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 131
    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_0
    const v6, 0x1020001

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 134
    .local v0, check:Landroid/widget/CheckBox;
    iget v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->viewType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 135
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 136
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isLastPlayPosition()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 137
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08001d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    .end local v0           #check:Landroid/widget/CheckBox;
    .end local v2           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .end local v3           #obj:Ljava/lang/Object;
    .end local v5           #tv1:Landroid/widget/TextView;
    :cond_1
    :goto_1
    return-object p2

    .line 125
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .restart local v5       #tv1:Landroid/widget/TextView;
    goto :goto_0

    .line 139
    .restart local v0       #check:Landroid/widget/CheckBox;
    .restart local v2       #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_3
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08001c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 142
    :cond_4
    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->listView:Landroid/widget/ListView;

    if-eqz v6, :cond_1

    .line 143
    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 144
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->listView:Landroid/widget/ListView;

    const/4 v7, 0x1

    invoke-virtual {v6, p1, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 148
    :goto_2
    const/4 v4, 0x0

    .line 149
    .local v4, topSpace:I
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 150
    const/16 v4, 0x62

    .line 154
    :goto_3
    if-nez p1, :cond_7

    .line 159
    :goto_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p2, v6, v4, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 146
    .end local v4           #topSpace:I
    :cond_5
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->listView:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_2

    .line 152
    .restart local v4       #topSpace:I
    :cond_6
    const/16 v4, 0x62

    goto :goto_3

    .line 157
    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    .line 162
    .end local v0           #check:Landroid/widget/CheckBox;
    .end local v2           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .end local v3           #obj:Ljava/lang/Object;
    .end local v4           #topSpace:I
    .end local v5           #tv1:Landroid/widget/TextView;
    :cond_8
    iget v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->freshViewType:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_11

    .line 164
    if-nez p2, :cond_b

    .line 165
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040014

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 166
    const v6, 0x7f0d0036

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 167
    .restart local v5       #tv1:Landroid/widget/TextView;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 168
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 173
    :goto_5
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 174
    .restart local v3       #obj:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 175
    .restart local v2       #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    if-eqz v3, :cond_9

    instance-of v6, v3, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    if-eqz v6, :cond_9

    move-object v2, v3

    .line 176
    check-cast v2, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 177
    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getProgression()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_9
    iget v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->viewType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_f

    .line 181
    const/4 v4, 0x0

    .line 182
    .restart local v4       #topSpace:I
    const/4 v1, 0x0

    .line 183
    .local v1, colNum:I
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_c

    .line 184
    const/16 v1, 0x8

    .line 185
    const/16 v4, 0x62

    .line 190
    :goto_6
    div-int v6, p1, v1

    if-nez v6, :cond_d

    .line 191
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    const/16 v7, 0x19

    invoke-static {v6, v7}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v6

    add-int/lit8 v4, v6, 0x62

    .line 195
    :goto_7
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p2, v6, v4, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 197
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 198
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08001f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 202
    :goto_8
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getDownload_address()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    const-string v6, ""

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getDownload_address()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 203
    :cond_a
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_1

    .line 170
    .end local v1           #colNum:I
    .end local v2           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .end local v3           #obj:Ljava/lang/Object;
    .end local v4           #topSpace:I
    .end local v5           #tv1:Landroid/widget/TextView;
    :cond_b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .restart local v5       #tv1:Landroid/widget/TextView;
    goto/16 :goto_5

    .line 187
    .restart local v1       #colNum:I
    .restart local v2       #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .restart local v3       #obj:Ljava/lang/Object;
    .restart local v4       #topSpace:I
    :cond_c
    const/4 v1, 0x5

    .line 188
    const/16 v4, 0x62

    goto :goto_6

    .line 193
    :cond_d
    const/4 v4, 0x0

    goto :goto_7

    .line 200
    :cond_e
    const v6, 0x7f020086

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_8

    .line 206
    .end local v1           #colNum:I
    .end local v4           #topSpace:I
    :cond_f
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isLastPlayPosition()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getProgression()Ljava/lang/String;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 207
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08001f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 209
    :cond_10
    const v6, 0x7f020086

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 212
    .end local v2           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .end local v3           #obj:Ljava/lang/Object;
    .end local v5           #tv1:Landroid/widget/TextView;
    :cond_11
    iget v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->freshViewType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 214
    iget v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->freshViewType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    goto/16 :goto_1
.end method

.method public setEpisodesList(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/EpisodesEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/EpisodesEntity;>;"
    if-eqz p1, :cond_0

    .line 225
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->channelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->channelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setFreshType(I)V
    .locals 0
    .parameter "freshType"

    .prologue
    .line 258
    iput p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->freshViewType:I

    .line 259
    return-void
.end method

.method public setView(Landroid/widget/ListView;)V
    .locals 0
    .parameter "listView"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->listView:Landroid/widget/ListView;

    .line 66
    return-void
.end method

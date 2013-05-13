.class public Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChanelProgramDetailEpisodesAdapter.java"


# instance fields
.field private mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

.field private mChannelProgramDetailCommentListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/CommentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/EpisodesEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFreshViewType:I

.field private mListView:Landroid/widget/ListView;

.field private mViewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/video/client/util/AsyncImageLoader;I)V
    .locals 2
    .parameter "mContext"
    .parameter "asyncImageLoader"
    .parameter "viewType"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    .line 23
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mFreshViewType:I

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mViewType:I

    .line 31
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mListView:Landroid/widget/ListView;

    .line 38
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 40
    iput p3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mViewType:I

    .line 41
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, count:I
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mFreshViewType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mFreshViewType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mChannelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mChannelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mChannelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 62
    :cond_1
    :goto_0
    return v0

    .line 53
    :cond_2
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mFreshViewType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 54
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mChannelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mChannelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mChannelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 57
    :cond_3
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mFreshViewType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 58
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mChannelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mChannelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mChannelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, obj:Ljava/lang/Object;
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mFreshViewType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mFreshViewType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mChannelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mChannelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 86
    .end local v0           #obj:Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v0

    .line 73
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_2
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mFreshViewType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 74
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mChannelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mChannelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_3
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mFreshViewType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 80
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mChannelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mChannelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 91
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x2

    const v9, 0x7f080014

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 96
    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mFreshViewType:I

    if-ne v4, v7, :cond_9

    .line 98
    if-nez p2, :cond_2

    .line 99
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040018

    invoke-virtual {v4, v5, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 100
    const v4, 0x7f0d0045

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 101
    .local v3, tv1:Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 102
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    :goto_0
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 107
    .local v2, obj:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 108
    .local v1, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    if-eqz v2, :cond_0

    instance-of v4, v2, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    if-eqz v4, :cond_0

    move-object v1, v2

    .line 109
    check-cast v1, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 110
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    const v4, 0x1020001

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 113
    .local v0, check:Landroid/widget/CheckBox;
    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mViewType:I

    if-ne v4, v7, :cond_4

    .line 114
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 115
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isLastPlayPosition()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 116
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    .end local v0           #check:Landroid/widget/CheckBox;
    .end local v1           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .end local v2           #obj:Ljava/lang/Object;
    .end local v3           #tv1:Landroid/widget/TextView;
    :cond_1
    :goto_1
    return-object p2

    .line 104
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .restart local v3       #tv1:Landroid/widget/TextView;
    goto :goto_0

    .line 118
    .restart local v0       #check:Landroid/widget/CheckBox;
    .restart local v1       #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .restart local v2       #obj:Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 121
    :cond_4
    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getDownload_address()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v4, ""

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getDownload_address()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 123
    :cond_5
    invoke-virtual {p2, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 126
    :cond_6
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isExistOrDownload()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 127
    invoke-virtual {p2, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 129
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 131
    :cond_7
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 132
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 133
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080026

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 134
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 136
    :cond_8
    invoke-virtual {p2, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 143
    .end local v0           #check:Landroid/widget/CheckBox;
    .end local v1           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .end local v2           #obj:Ljava/lang/Object;
    .end local v3           #tv1:Landroid/widget/TextView;
    :cond_9
    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mFreshViewType:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_12

    .line 145
    if-nez p2, :cond_c

    .line 146
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040016

    invoke-virtual {v4, v5, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 147
    const v4, 0x7f0d003a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 148
    .local v3, tv1:Landroid/widget/Button;
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEllipsisSmall(Z)V

    .line 149
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 153
    :goto_2
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setFocusable(Z)V

    .line 156
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 159
    .restart local v2       #obj:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 160
    .restart local v1       #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    if-eqz v2, :cond_a

    instance-of v4, v2, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    if-eqz v4, :cond_a

    move-object v1, v2

    .line 161
    check-cast v1, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 162
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getProgression()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_a
    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mViewType:I

    if-ne v4, v10, :cond_10

    .line 166
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 167
    const v4, 0x7f02002a

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 172
    :goto_3
    if-eqz v1, :cond_1

    .line 173
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getDownload_address()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v4, ""

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getDownload_address()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 174
    :cond_b
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 151
    .end local v1           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .end local v2           #obj:Ljava/lang/Object;
    .end local v3           #tv1:Landroid/widget/Button;
    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .restart local v3       #tv1:Landroid/widget/Button;
    goto :goto_2

    .line 169
    .restart local v1       #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .restart local v2       #obj:Ljava/lang/Object;
    :cond_d
    const v4, 0x7f020028

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3

    .line 176
    :cond_e
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isExistOrDownload()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 177
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 179
    :cond_f
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 185
    :cond_10
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->isLastPlayPosition()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getProgression()Ljava/lang/String;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 186
    const v4, 0x7f02002a

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 188
    :cond_11
    const v4, 0x7f020028

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 191
    .end local v1           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .end local v2           #obj:Ljava/lang/Object;
    .end local v3           #tv1:Landroid/widget/Button;
    :cond_12
    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mFreshViewType:I

    if-eq v4, v10, :cond_1

    .line 193
    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mFreshViewType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

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
    .line 202
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/EpisodesEntity;>;"
    if-eqz p1, :cond_0

    .line 204
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mChannelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mChannelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setFreshType(I)V
    .locals 0
    .parameter "freshType"

    .prologue
    .line 237
    iput p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mFreshViewType:I

    .line 238
    return-void
.end method

.method public setView(Landroid/widget/ListView;)V
    .locals 0
    .parameter "listView"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->mListView:Landroid/widget/ListView;

    .line 45
    return-void
.end method

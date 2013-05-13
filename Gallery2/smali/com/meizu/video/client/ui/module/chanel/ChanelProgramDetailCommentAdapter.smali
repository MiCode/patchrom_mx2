.class public Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChanelProgramDetailCommentAdapter.java"


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


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/video/client/util/AsyncImageLoader;)V
    .locals 1
    .parameter "mContext"
    .parameter "asyncImageLoader"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mContext:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mFreshViewType:I

    .line 34
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 36
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, count:I
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mFreshViewType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mFreshViewType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mChannelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mChannelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mChannelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 57
    :cond_1
    :goto_0
    return v0

    .line 48
    :cond_2
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mFreshViewType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 49
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mChannelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mChannelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mChannelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 52
    :cond_3
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mFreshViewType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 53
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mChannelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mChannelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mChannelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, obj:Ljava/lang/Object;
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mFreshViewType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mFreshViewType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mChannelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mChannelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 81
    .end local v0           #obj:Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v0

    .line 68
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_2
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mFreshViewType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 69
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mChannelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mChannelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_3
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mFreshViewType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 75
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mChannelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mChannelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 86
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 90
    if-nez p2, :cond_1

    .line 91
    new-instance p2, Landroid/widget/LinearLayout;

    .end local p2
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 96
    .restart local p2
    :goto_0
    if-eqz p2, :cond_0

    .line 98
    iget v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mFreshViewType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 127
    :cond_0
    :goto_1
    return-object p2

    :cond_1
    move-object v7, p2

    .line 93
    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0

    .line 100
    :cond_2
    iget v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mFreshViewType:I

    const/16 v8, 0xa

    if-eq v7, v8, :cond_0

    .line 102
    iget v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mFreshViewType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 103
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040014

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 105
    .local v5, convertItemView:Landroid/view/View;
    const v7, 0x7f0d0033

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 106
    .local v2, chanelProgramDetailCommentTitle:Landroid/widget/TextView;
    const v7, 0x7f0d0034

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    .local v0, chanelProgramDetailCommentAuthor:Landroid/widget/TextView;
    const v7, 0x7f0d0035

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 108
    .local v1, chanelProgramDetailCommentScore:Landroid/widget/TextView;
    const v7, 0x7f0d0036

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 110
    .local v3, chanelProgramDetailIntroductionContent:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .line 111
    .local v6, obj:Ljava/lang/Object;
    if-eqz v6, :cond_3

    instance-of v7, v6, Lcom/meizu/video/client/ui/entity/CommentEntity;

    if-eqz v7, :cond_3

    move-object v4, v6

    .line 112
    check-cast v4, Lcom/meizu/video/client/ui/entity/CommentEntity;

    .line 113
    .local v4, commentEntity:Lcom/meizu/video/client/ui/entity/CommentEntity;
    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/CommentEntity;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/CommentEntity;->getAuthor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/CommentEntity;->getScore()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/CommentEntity;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v4           #commentEntity:Lcom/meizu/video/client/ui/entity/CommentEntity;
    :cond_3
    move-object v7, p2

    .line 118
    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 119
    .end local v0           #chanelProgramDetailCommentAuthor:Landroid/widget/TextView;
    .end local v1           #chanelProgramDetailCommentScore:Landroid/widget/TextView;
    .end local v2           #chanelProgramDetailCommentTitle:Landroid/widget/TextView;
    .end local v3           #chanelProgramDetailIntroductionContent:Landroid/widget/TextView;
    .end local v5           #convertItemView:Landroid/view/View;
    .end local v6           #obj:Ljava/lang/Object;
    :cond_4
    iget v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mFreshViewType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    goto :goto_1
.end method

.method public setCommentList(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/CommentEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/CommentEntity;>;"
    if-eqz p1, :cond_0

    .line 162
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mChannelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mChannelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setFreshType(I)V
    .locals 0
    .parameter "freshType"

    .prologue
    .line 171
    iput p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mFreshViewType:I

    .line 172
    return-void
.end method

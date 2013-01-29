.class public Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChanelProgramDetailCommentAdapter.java"


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

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/video/client/util/AsyncImageLoader;)V
    .locals 1
    .parameter "mContext"
    .parameter "asyncImageLoader"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mContext:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->freshViewType:I

    .line 36
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 38
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, count:I
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->freshViewType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->freshViewType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->channelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->channelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->channelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 59
    :cond_1
    :goto_0
    return v0

    .line 50
    :cond_2
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->freshViewType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 51
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->channelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->channelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->channelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 54
    :cond_3
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->freshViewType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 55
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->channelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->channelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->channelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, obj:Ljava/lang/Object;
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->freshViewType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->freshViewType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->channelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->channelProgramDetailEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 83
    .end local v0           #obj:Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v0

    .line 70
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_2
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->freshViewType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 71
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->channelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->channelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_3
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->freshViewType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 77
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->channelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->channelProgramDetailSimilarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 88
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 92
    if-nez p2, :cond_1

    .line 93
    new-instance p2, Landroid/widget/LinearLayout;

    .end local p2
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 98
    .restart local p2
    :goto_0
    if-eqz p2, :cond_0

    .line 100
    iget v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->freshViewType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 129
    :cond_0
    :goto_1
    return-object p2

    :cond_1
    move-object v7, p2

    .line 95
    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0

    .line 102
    :cond_2
    iget v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->freshViewType:I

    const/16 v8, 0xa

    if-eq v7, v8, :cond_0

    .line 104
    iget v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->freshViewType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 105
    iget-object v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040012

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 107
    .local v5, convertItemView:Landroid/view/View;
    const v7, 0x7f0d002f

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 108
    .local v2, chanelProgramDetailCommentTitle:Landroid/widget/TextView;
    const v7, 0x7f0d0030

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    .local v0, chanelProgramDetailCommentAuthor:Landroid/widget/TextView;
    const v7, 0x7f0d0031

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 110
    .local v1, chanelProgramDetailCommentScore:Landroid/widget/TextView;
    const v7, 0x7f0d0032

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 112
    .local v3, chanelProgramDetailIntroductionContent:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .line 113
    .local v6, obj:Ljava/lang/Object;
    if-eqz v6, :cond_3

    instance-of v7, v6, Lcom/meizu/video/client/ui/entity/CommentEntity;

    if-eqz v7, :cond_3

    move-object v4, v6

    .line 114
    check-cast v4, Lcom/meizu/video/client/ui/entity/CommentEntity;

    .line 115
    .local v4, commentEntity:Lcom/meizu/video/client/ui/entity/CommentEntity;
    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/CommentEntity;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/CommentEntity;->getAuthor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/CommentEntity;->getScore()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/CommentEntity;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v4           #commentEntity:Lcom/meizu/video/client/ui/entity/CommentEntity;
    :cond_3
    move-object v7, p2

    .line 120
    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 121
    .end local v0           #chanelProgramDetailCommentAuthor:Landroid/widget/TextView;
    .end local v1           #chanelProgramDetailCommentScore:Landroid/widget/TextView;
    .end local v2           #chanelProgramDetailCommentTitle:Landroid/widget/TextView;
    .end local v3           #chanelProgramDetailIntroductionContent:Landroid/widget/TextView;
    .end local v5           #convertItemView:Landroid/view/View;
    .end local v6           #obj:Ljava/lang/Object;
    :cond_4
    iget v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->freshViewType:I

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
    .line 162
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/CommentEntity;>;"
    if-eqz p1, :cond_0

    .line 164
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->channelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->channelProgramDetailCommentListEntity:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setFreshType(I)V
    .locals 0
    .parameter "freshType"

    .prologue
    .line 173
    iput p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->freshViewType:I

    .line 174
    return-void
.end method

.class public Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;
.super Landroid/app/Activity;
.source "ChanelProgramDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;,
        Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;,
        Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;
    }
.end annotation


# instance fields
.field private final EPISODES_TV:I

.field private final EPISODES_VARIETY:I

.field private final FRESH_CURRENT_ACTIONBAR_STYLE:I

.field private final FRESH_CURRENT_PAGE_ALL:I

.field private final FRESH_CURRENT_PAGE_COMMENT:I

.field private final FRESH_CURRENT_PAGE_EPISODES:I

.field private final LOAD_COMMENT_DATA:I

.field private final LOAD_DETAIL_DATA:I

.field private final LOAD_EPISODES_DATA:I

.field private TAG:Ljava/lang/String;

.field private asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

.field bar:Landroid/app/ActionBar;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private chanelName:Ljava/lang/String;

.field private chanelProgramDetailCommentAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;

.field private chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

.field private chanelProgramDetailIntroductionContent:Lcom/meizu/widget/FoldableTextView;

.field private chanelProgramDetailIntroductionTitle:Landroid/widget/TextView;

.field private chanelProgramDetail_Content_ScrollView:Landroid/widget/ScrollView;

.field private chanelProgramDetail_bottom_space:Landroid/widget/LinearLayout;

.field private chanelProgramDetail_progressbar_layout:Landroid/widget/LinearLayout;

.field private chanelProgramDetail_top_space:Landroid/widget/LinearLayout;

.field private chanelProgramName:Ljava/lang/String;

.field private chanelprogramdetail_comment:Landroid/widget/LinearLayout;

.field private chanelprogramdetail_comment_listview:Landroid/widget/ListView;

.field private chanelprogramdetail_comment_other:Landroid/widget/TextView;

.field private chanelprogramdetail_comment_title:Landroid/widget/TextView;

.field private chanelprogramdetail_episodes_tv:Landroid/widget/LinearLayout;

.field private chanelprogramdetail_episodes_variety:Landroid/widget/LinearLayout;

.field private chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

.field private chanelprogramdetail_episodes_variety_operation:Landroid/widget/LinearLayout;

.field private chanelprogramdetail_episodes_variety_title:Landroid/widget/TextView;

.field private chanelprogramdetail_image_introduction:Landroid/widget/LinearLayout;

.field private chanelprogramdetail_similarvideo:Landroid/widget/LinearLayout;

.field private chanelprogramdetail_similarvideo_imagegroup:Landroid/widget/LinearLayout;

.field private chanelprogramdetail_similarvideo_title:Landroid/widget/TextView;

.field private chanelprogramdetail_text_introduction:Landroid/widget/LinearLayout;

.field private channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

.field private channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

.field private channelProgramDetailListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;",
            ">;"
        }
    .end annotation
.end field

.field private cid:Ljava/lang/String;

.field private commentListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/CommentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private configDirect:I

.field private currentCommentPage:I

.field private currentEpisodesPage:I

.field private currentPlayIndex:I

.field private downloandService:Landroid/net/DownloadService;

.field private episodesListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/EpisodesEntity;",
            ">;"
        }
    .end annotation
.end field

.field private episodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

.field private episodesShowListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/EpisodesEntity;",
            ">;"
        }
    .end annotation
.end field

.field private episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

.field private favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

.field private favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

.field handler:Landroid/os/Handler;

.field private head_duration:J

.field private intro:Ljava/lang/String;

.field private isHasComment:Z

.field private isLoadBySimilarVideo:Z

.field private isLoading:Z

.field private lableListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/LableEntity;",
            ">;"
        }
    .end annotation
.end field

.field private loader:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;

.field private mIsFavarite:Z

.field private mediaDataType:Ljava/lang/String;

.field private msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

.field private no_available_network:Landroid/widget/LinearLayout;

.field private no_network_image:Landroid/widget/ImageView;

.field private no_network_title:Landroid/widget/TextView;

.field onClickListener:Landroid/view/View$OnClickListener;

.field private oneFilm:Z

.field private playHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

.field private prePlayIndex:I

.field private remoteVideoPlayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/app/RemoteVideoPlayList;",
            ">;"
        }
    .end annotation
.end field

.field private showTextLines:I

.field private similarVideoListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;",
            ">;"
        }
    .end annotation
.end field

.field private similarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

.field private style:Ljava/lang/String;

.field private tail_duration:J

.field private totalEpisodesPage:I

.field private vid:Ljava/lang/String;

.field private videoQualityType:I

.field private viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    const-string v0, "ChanelProgramDetailActivity"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->TAG:Ljava/lang/String;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelName:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramName:Ljava/lang/String;

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->cid:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->vid:Ljava/lang/String;

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mediaDataType:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->intro:Ljava/lang/String;

    .line 131
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailListEntity:Ljava/util/ArrayList;

    .line 132
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    .line 133
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 135
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    .line 136
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    .line 137
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 138
    iput v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    .line 139
    iput v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I

    .line 141
    iput v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentCommentPage:I

    .line 143
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->commentListEntity:Ljava/util/ArrayList;

    .line 145
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->similarVideoListEntity:Ljava/util/ArrayList;

    .line 146
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->similarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 148
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    .line 149
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailCommentAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;

    .line 151
    iput-boolean v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->isLoading:Z

    .line 153
    iput v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->FRESH_CURRENT_PAGE_ALL:I

    .line 154
    iput v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->FRESH_CURRENT_PAGE_EPISODES:I

    .line 155
    iput v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->FRESH_CURRENT_PAGE_COMMENT:I

    .line 156
    const/4 v0, 0x4

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->FRESH_CURRENT_ACTIONBAR_STYLE:I

    .line 159
    iput v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->LOAD_DETAIL_DATA:I

    .line 161
    iput v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->LOAD_EPISODES_DATA:I

    .line 163
    iput v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->LOAD_COMMENT_DATA:I

    .line 166
    iput v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->EPISODES_TV:I

    .line 167
    iput v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->EPISODES_VARIETY:I

    .line 173
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 183
    iput v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentPlayIndex:I

    .line 184
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->head_duration:J

    .line 185
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->tail_duration:J

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->style:Ljava/lang/String;

    .line 189
    iput-boolean v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->oneFilm:Z

    .line 191
    iput-boolean v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->isHasComment:Z

    .line 192
    iput v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->showTextLines:I

    .line 194
    iput v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->configDirect:I

    .line 195
    iput v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->videoQualityType:I

    .line 199
    iput-boolean v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->isLoadBySimilarVideo:Z

    .line 205
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    .line 207
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    .line 208
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->playHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    .line 210
    iput-boolean v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsFavarite:Z

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->prePlayIndex:I

    .line 603
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->handler:Landroid/os/Handler;

    .line 1317
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->onClickListener:Landroid/view/View$OnClickListener;

    .line 1668
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$11;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$11;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1806
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->downloandService:Landroid/net/DownloadService;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->commentListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->commentListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$102(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    return p1
.end method

.method static synthetic access$108(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    return v0
.end method

.method static synthetic access$110(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    return v0
.end method

.method static synthetic access$1100(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentCommentPage:I

    return v0
.end method

.method static synthetic access$1108(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentCommentPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentCommentPage:I

    return v0
.end method

.method static synthetic access$1200(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetail_progressbar_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->isLoading:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->no_network_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->no_available_network:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadImageIntroduction()V

    return-void
.end method

.method static synthetic access$1700(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadTextIntroduction()V

    return-void
.end method

.method static synthetic access$1800(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadEpisodes()V

    return-void
.end method

.method static synthetic access$1900(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadSimilarvideo()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I

    return v0
.end method

.method static synthetic access$2000(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->initData(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetail_Content_ScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadComment()V

    return-void
.end method

.method static synthetic access$2300(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_similarvideo_imagegroup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->isLoadBySimilarVideo:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->cid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->cid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->intro:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_comment_other:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentPlayIndex:I

    return p1
.end method

.method static synthetic access$3100(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->videoQualityType:I

    return v0
.end method

.method static synthetic access$3300(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/net/DownloadService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->downloandService:Landroid/net/DownloadService;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->style:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;)Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsFavarite:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsFavarite:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    return-object v0
.end method

.method static synthetic access$602(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;)Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    return-object p1
.end method

.method static synthetic access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object v0
.end method

.method static synthetic access$702(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object p1
.end method

.method static synthetic access$800(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mediaDataType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mediaDataType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->vid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->vid:Ljava/lang/String;

    return-object p1
.end method

.method private getDataFromBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 669
    const-string v0, "chanelName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    const-string v0, "chanelName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelName:Ljava/lang/String;

    .line 672
    :cond_0
    const-string v0, "chanelProgramName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    const-string v0, "chanelProgramName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramName:Ljava/lang/String;

    .line 675
    :cond_1
    const-string v0, "cid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 676
    const-string v0, "cid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->cid:Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelName:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, ""

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 683
    :cond_2
    :goto_0
    const-string v0, "vid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 684
    const-string v0, "vid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->vid:Ljava/lang/String;

    .line 686
    :cond_3
    const-string v0, "mediaDataType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 687
    const-string v0, "mediaDataType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mediaDataType:Ljava/lang/String;

    .line 689
    :cond_4
    const-string v0, "intro"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 690
    const-string v0, "intro"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->intro:Ljava/lang/String;

    .line 693
    :cond_5
    return-void

    .line 680
    :cond_6
    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getChannelListEntity()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->cid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/video/client/util/CommonUtil;->getChannelNameByCid(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelName:Ljava/lang/String;

    goto :goto_0
.end method

.method private initData(II)V
    .locals 4
    .parameter "freshType"
    .parameter "loadType"

    .prologue
    const/4 v3, 0x1

    .line 513
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->isLoading:Z

    if-nez v0, :cond_0

    .line 514
    iput-boolean v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->isLoading:Z

    .line 515
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loader:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;

    .line 516
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loader:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 518
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 337
    const v0, 0x7f0d009b

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetail_progressbar_layout:Landroid/widget/LinearLayout;

    .line 338
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->no_available_network:Landroid/widget/LinearLayout;

    .line 339
    const v0, 0x7f0d00ec

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->no_network_image:Landroid/widget/ImageView;

    .line 340
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->no_network_image:Landroid/widget/ImageView;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 341
    const v0, 0x7f0d00ed

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->no_network_title:Landroid/widget/TextView;

    .line 343
    const v0, 0x7f0d0048

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetail_Content_ScrollView:Landroid/widget/ScrollView;

    .line 344
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetail_Content_ScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 347
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    .line 348
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0043

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->chanelProgramDetailImage:Landroid/widget/ImageView;

    .line 349
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText2LinearLayout:Landroid/widget/LinearLayout;

    .line 350
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d001e

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText2_1:Landroid/widget/TextView;

    .line 351
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->imageView1:Landroid/widget/ImageView;

    .line 352
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0020

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->imageView2:Landroid/widget/ImageView;

    .line 353
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0021

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->imageView3:Landroid/widget/ImageView;

    .line 354
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0022

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->imageView4:Landroid/widget/ImageView;

    .line 355
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0023

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->imageView5:Landroid/widget/ImageView;

    .line 356
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0024

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText2_2:Landroid/widget/TextView;

    .line 357
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0025

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText3:Landroid/widget/TextView;

    .line 358
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText4:Landroid/widget/TextView;

    .line 359
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0027

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText5:Landroid/widget/TextView;

    .line 361
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 362
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText4:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 363
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText5:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 365
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0045

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->download:Landroid/widget/Button;

    .line 366
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0046

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->favorite:Landroid/widget/Button;

    .line 368
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->download:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEllipsisSmall(Z)V

    .line 369
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->favorite:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEllipsisSmall(Z)V

    .line 371
    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_text_introduction:Landroid/widget/LinearLayout;

    .line 372
    const v0, 0x7f0d0053

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailIntroductionTitle:Landroid/widget/TextView;

    .line 373
    const v0, 0x7f0d0032

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/FoldableTextView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailIntroductionContent:Lcom/meizu/widget/FoldableTextView;

    .line 375
    const v0, 0x7f0d0033

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_tv:Landroid/widget/LinearLayout;

    .line 376
    const v0, 0x7f0d0037

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety:Landroid/widget/LinearLayout;

    .line 378
    const v0, 0x7f0d0038

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety_title:Landroid/widget/TextView;

    .line 379
    const v0, 0x7f0d003a

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    .line 380
    const v0, 0x7f0d003b

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety_operation:Landroid/widget/LinearLayout;

    .line 382
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    .line 383
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    const v0, 0x7f0d003c

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->latest:Landroid/widget/Button;

    .line 384
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    const v0, 0x7f0d003d

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->prev:Landroid/widget/Button;

    .line 385
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    const v0, 0x7f0d003e

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->next:Landroid/widget/Button;

    .line 386
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    const v0, 0x7f0d003f

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->earliest:Landroid/widget/Button;

    .line 388
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->latest:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEllipsisSmall(Z)V

    .line 389
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->prev:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEllipsisSmall(Z)V

    .line 390
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->next:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEllipsisSmall(Z)V

    .line 391
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->earliest:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEllipsisSmall(Z)V

    .line 393
    const v0, 0x7f0d0034

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    .line 395
    const v0, 0x7f0d002b

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_comment:Landroid/widget/LinearLayout;

    .line 396
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_comment:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    const v0, 0x7f0d002c

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_comment_title:Landroid/widget/TextView;

    .line 398
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_comment_title:Landroid/widget/TextView;

    const-string v1, "\u8c46\u74e3\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    const v0, 0x7f0d002d

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_comment_listview:Landroid/widget/ListView;

    .line 400
    const v0, 0x7f0d002e

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_comment_other:Landroid/widget/TextView;

    .line 402
    const v0, 0x7f0d004f

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_similarvideo_imagegroup:Landroid/widget/LinearLayout;

    .line 403
    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_similarvideo_title:Landroid/widget/TextView;

    .line 405
    const v0, 0x7f0d004c

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_similarvideo:Landroid/widget/LinearLayout;

    .line 407
    const v0, 0x7f0d0042

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_image_introduction:Landroid/widget/LinearLayout;

    .line 409
    const v0, 0x7f0d004a

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetail_top_space:Landroid/widget/LinearLayout;

    .line 410
    const v0, 0x7f0d004b

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetail_bottom_space:Landroid/widget/LinearLayout;

    .line 411
    return-void
.end method

.method private loadComment()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 938
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->commentListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->commentListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 939
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->isHasComment:Z

    .line 940
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_comment_listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 942
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->commentListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit16 v1, v1, 0xad

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 943
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_comment_listview:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 945
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->InitAdapter()V

    .line 946
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailCommentAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->setFreshType(I)V

    .line 947
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailCommentAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->commentListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->setCommentList(Ljava/util/ArrayList;)V

    .line 948
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailCommentAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->notifyDataSetChanged()V

    .line 950
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_comment_other:Landroid/widget/TextView;

    const-string v1, "\u663e\u793a\u5176\u4ed62\u6761\u5f71\u8bc4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_comment:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 957
    :goto_0
    return-void

    .line 954
    :cond_0
    iput-boolean v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->isHasComment:Z

    .line 955
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_comment:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private loadEpisodes()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 871
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    if-eqz v0, :cond_2

    .line 872
    const-string v0, "0"

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getEpisodesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 873
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getEpisodesListEntity()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    .line 876
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 877
    const-string v0, "1"

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getStype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 879
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getStype()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->style:Ljava/lang/String;

    .line 881
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->showEpisodesTVPartListView()V

    .line 883
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_tv:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 904
    :goto_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentPlayIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 905
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentPlayIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getPlay_address()Ljava/lang/String;

    move-result-object v1

    .line 906
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    iget v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentPlayIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 908
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->chanelProgramDetailImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$5;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 932
    :cond_2
    :goto_1
    return-void

    .line 886
    :cond_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v4, :cond_4

    .line 887
    iput-boolean v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->oneFilm:Z

    .line 888
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_tv:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 889
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 891
    :cond_4
    iput-boolean v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->oneFilm:Z

    .line 892
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety_operation:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 893
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getEpisodesMsgEntity()Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 894
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    if-eqz v0, :cond_5

    .line 895
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety_title:Landroid/widget/TextView;

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 897
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->showEpisodesVarietyPartListView()V

    .line 899
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_tv:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 900
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 918
    :cond_6
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_tv:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 919
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 922
    :cond_7
    const-string v0, "-1"

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getEpisodesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 924
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_tv:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 925
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 928
    :cond_8
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_tv:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private loadImageIntroduction()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 699
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    if-eqz v0, :cond_12

    .line 700
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getLableListEntity()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->lableListEntity:Ljava/util/ArrayList;

    .line 701
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->lableListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->lableListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    if-eqz v0, :cond_14

    .line 703
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setImageIntroductionSpace()V

    .line 705
    const-string v4, ""

    .line 707
    new-instance v0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    invoke-direct {v0}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    .line 708
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->vid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setVid(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->cid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setCid(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setChanelProgramName(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mediaDataType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setMediaDataType(Ljava/lang/String;)V

    move v2, v1

    .line 714
    :goto_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->lableListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_f

    .line 715
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->lableListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/LableEntity;

    .line 716
    if-eqz v0, :cond_7

    .line 717
    const-string v3, "image"

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 718
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 719
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    invoke-virtual {v3, v4}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setImageUrl(Ljava/lang/String;)V

    .line 721
    :cond_0
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText2LinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "text-image"

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 722
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText2_1:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText2_2:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    :try_start_0
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 726
    div-double v7, v5, v10

    double-to-int v7, v7

    .line 727
    rem-double/2addr v5, v10

    double-to-int v3, v5

    .line 728
    if-ge v7, v9, :cond_1

    .line 729
    if-ne v3, v9, :cond_8

    .line 730
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->imageView1:Landroid/widget/ImageView;

    const v5, 0x7f020053

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move v3, v1

    .line 736
    :cond_1
    :goto_1
    const/4 v5, 0x2

    if-ge v7, v5, :cond_2

    .line 737
    if-ne v3, v9, :cond_9

    .line 738
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->imageView2:Landroid/widget/ImageView;

    const v5, 0x7f020053

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move v3, v1

    .line 744
    :cond_2
    :goto_2
    const/4 v5, 0x3

    if-ge v7, v5, :cond_3

    .line 745
    if-ne v3, v9, :cond_a

    .line 746
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->imageView3:Landroid/widget/ImageView;

    const v5, 0x7f020053

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move v3, v1

    .line 752
    :cond_3
    :goto_3
    const/4 v5, 0x4

    if-ge v7, v5, :cond_4

    .line 753
    if-ne v3, v9, :cond_b

    .line 754
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->imageView4:Landroid/widget/ImageView;

    const v5, 0x7f020053

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move v3, v1

    .line 760
    :cond_4
    :goto_4
    const/4 v5, 0x5

    if-ge v7, v5, :cond_5

    .line 761
    if-ne v3, v9, :cond_c

    .line 762
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->imageView5:Landroid/widget/ImageView;

    const v5, 0x7f020053

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 768
    :cond_5
    :goto_5
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText2LinearLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 769
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setLabel1(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :cond_6
    :goto_6
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText3:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "text"

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 775
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText3:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText3:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 777
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setLabel2(Ljava/lang/String;)V

    .line 714
    :cond_7
    :goto_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 733
    :cond_8
    :try_start_1
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v5, v5, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->imageView1:Landroid/widget/ImageView;

    const v6, 0x7f020054

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 770
    :catch_0
    move-exception v3

    goto/16 :goto_6

    .line 741
    :cond_9
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v5, v5, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->imageView2:Landroid/widget/ImageView;

    const v6, 0x7f020054

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 749
    :cond_a
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v5, v5, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->imageView3:Landroid/widget/ImageView;

    const v6, 0x7f020054

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 757
    :cond_b
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v5, v5, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->imageView4:Landroid/widget/ImageView;

    const v6, 0x7f020054

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 765
    :cond_c
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->imageView5:Landroid/widget/ImageView;

    const v5, 0x7f020054

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 778
    :cond_d
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText4:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "text"

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 779
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText4:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText4:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 781
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setLabel3(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 782
    :cond_e
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText5:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "text"

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 783
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText5:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText5:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 785
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/meizu/video/client/util/CommonUtil;->getLabelString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setLabel4(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 790
    :cond_f
    const/16 v0, 0x72

    invoke-static {p0, v0}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v5

    .line 791
    const/16 v0, 0x98

    invoke-static {p0, v0}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v6

    .line 792
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v7, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$4;

    invoke-direct {v7, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$4;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/video/client/util/AsyncImageLoader;->loadBitmap(ILjava/lang/String;Lcom/meizu/video/client/common/Constant$InterfaceType;Ljava/lang/String;IILcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 805
    if-eqz v0, :cond_10

    .line 806
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->chanelProgramDetailImage:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 807
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->chanelProgramDetailImage:Landroid/widget/ImageView;

    const v2, 0x7f02008c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 811
    :cond_10
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    if-nez v0, :cond_11

    .line 812
    new-instance v0, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    .line 814
    :cond_11
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->queryFavoritesByCidAndVid(Lcom/meizu/video/client/ui/entity/FavoriteEntity;)I

    move-result v0

    .line 815
    if-lez v0, :cond_13

    .line 816
    iput-boolean v9, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsFavarite:Z

    .line 817
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->favorite:Landroid/widget/Button;

    const v1, 0x7f0a0011

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 826
    :cond_12
    :goto_8
    return-void

    .line 819
    :cond_13
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsFavarite:Z

    .line 820
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->favorite:Landroid/widget/Button;

    const v1, 0x7f0a000a

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 823
    :cond_14
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_image_introduction:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8
.end method

.method private loadSimilarvideo()V
    .locals 18

    .prologue
    .line 963
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    if-eqz v1, :cond_8

    .line 965
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_similarvideo_imagegroup:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 966
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_similarvideo_imagegroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 969
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->similarVideoListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->similarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 970
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getSimilarVideoListEntity()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->similarVideoListEntity:Ljava/util/ArrayList;

    .line 973
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->similarVideoListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->similarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 977
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_similarvideo:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_similarvideo_title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 979
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->configDirect:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 980
    const/16 v3, 0x1e

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    add-int/lit8 v3, v3, -0x14

    const/4 v4, 0x0

    const/16 v5, 0x1e

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v5

    add-int/lit8 v5, v5, -0x14

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 984
    const/16 v3, 0x25

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 986
    const/4 v4, 0x4

    .line 987
    const-wide/high16 v5, 0x4022

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    move/from16 v16, v3

    move/from16 v17, v4

    .line 998
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_similarvideo:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 999
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_similarvideo_title:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getSimilarVideoMsgEntity()Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->similarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 1002
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->similarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    if-eqz v1, :cond_3

    .line 1003
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_similarvideo_title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->similarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    :cond_3
    const/16 v1, 0x4e

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v6

    .line 1007
    const/16 v1, 0x68

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v7

    .line 1009
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->similarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    move/from16 v0, v17

    if-ge v2, v0, :cond_8

    .line 1010
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->similarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;

    .line 1011
    if-eqz v9, :cond_4

    .line 1013
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f04001a

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/LinearLayout;

    .line 1016
    const v1, 0x7f0d0050

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/ImageView;

    .line 1017
    const v1, 0x7f0d0051

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1018
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 1020
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1021
    invoke-virtual {v15, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1023
    invoke-virtual {v9}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    invoke-virtual {v9}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getImage()Ljava/lang/String;

    move-result-object v5

    .line 1026
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v8, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v10}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$6;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;)V

    invoke-virtual/range {v1 .. v8}, Lcom/meizu/video/client/util/AsyncImageLoader;->loadBitmap(ILjava/lang/String;Lcom/meizu/video/client/common/Constant$InterfaceType;Ljava/lang/String;IILcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1041
    if-eqz v1, :cond_6

    .line 1042
    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1043
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1048
    :goto_2
    invoke-virtual {v9}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getCid()Ljava/lang/String;

    move-result-object v11

    .line 1049
    invoke-virtual {v9}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getVid()Ljava/lang/String;

    move-result-object v12

    .line 1050
    invoke-virtual {v9}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getMediaDataType()Ljava/lang/String;

    move-result-object v13

    .line 1051
    invoke-virtual {v9}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 1052
    new-instance v8, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1065
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v1, v3, v0, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_similarvideo_imagegroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1009
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 989
    :cond_5
    const/16 v3, 0x28

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    add-int/lit8 v3, v3, -0x14

    const/4 v4, 0x0

    const/16 v5, 0x28

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v5

    add-int/lit8 v5, v5, -0x14

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 993
    const/16 v3, 0x30

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 995
    const/4 v4, 0x6

    .line 996
    const-wide v5, 0x4032800000000000L

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    move/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_0

    .line 1045
    :cond_6
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    .line 1070
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_similarvideo:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1074
    :cond_8
    return-void
.end method

.method private loadTextIntroduction()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0a0010

    const/16 v7, 0x28

    const/16 v6, 0x1e

    const/4 v5, 0x0

    .line 832
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getDescriptionMsgEntity()Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v2

    .line 835
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_text_introduction:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 836
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailIntroductionTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 837
    iget v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->configDirect:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 838
    invoke-static {p0, v6}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    add-int/lit8 v3, v3, -0x14

    invoke-static {p0, v6}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v4

    add-int/lit8 v4, v4, -0x14

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 841
    const/16 v3, 0x27

    invoke-static {p0, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 848
    :goto_0
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_text_introduction:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 849
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailIntroductionTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 851
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    if-eqz v0, :cond_2

    .line 852
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailIntroductionTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 853
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailIntroductionContent:Lcom/meizu/widget/FoldableTextView;

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->showTextLines:I

    invoke-virtual {v0, v1, v9}, Lcom/meizu/widget/FoldableTextView;->setFolding(ILcom/meizu/widget/FoldableTextView$FoldingListener;)V

    .line 854
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailIntroductionContent:Lcom/meizu/widget/FoldableTextView;

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    :cond_0
    :goto_1
    return-void

    .line 843
    :cond_1
    invoke-static {p0, v7}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    add-int/lit8 v3, v3, -0x14

    invoke-static {p0, v7}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v4

    add-int/lit8 v4, v4, -0x14

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 846
    const/16 v3, 0x24

    invoke-static {p0, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 856
    :cond_2
    const-string v0, ""

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->intro:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 857
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_text_introduction:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 859
    :cond_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailIntroductionTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 860
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailIntroductionContent:Lcom/meizu/widget/FoldableTextView;

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->showTextLines:I

    invoke-virtual {v0, v1, v9}, Lcom/meizu/widget/FoldableTextView;->setFolding(ILcom/meizu/widget/FoldableTextView$FoldingListener;)V

    .line 861
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailIntroductionContent:Lcom/meizu/widget/FoldableTextView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->intro:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public InitAdapter()V
    .locals 3

    .prologue
    .line 658
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    if-nez v0, :cond_0

    .line 659
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;-><init>(Landroid/content/Context;Lcom/meizu/video/client/util/AsyncImageLoader;I)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    .line 660
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailCommentAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;

    if-nez v0, :cond_1

    .line 663
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    invoke-direct {v0, p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;-><init>(Landroid/content/Context;Lcom/meizu/video/client/util/AsyncImageLoader;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailCommentAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;

    .line 664
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_comment_listview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailCommentAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 666
    :cond_1
    return-void
.end method

.method public bindService()V
    .locals 2

    .prologue
    .line 1809
    new-instance v0, Landroid/net/DownloadService;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/DownloadService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->downloandService:Landroid/net/DownloadService;

    .line 1810
    return-void
.end method

.method public checkDataAndUpdateView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1654
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->isLoadBySimilarVideo:Z

    if-eqz v0, :cond_1

    .line 1655
    :cond_0
    iput-boolean v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->isLoadBySimilarVideo:Z

    .line 1656
    invoke-static {p0}, Lcom/meizu/video/client/util/CommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1657
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetail_progressbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1658
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->no_available_network:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1659
    invoke-direct {p0, v1, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->initData(II)V

    .line 1666
    :cond_1
    :goto_0
    return-void

    .line 1661
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetail_progressbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1662
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->no_network_title:Landroid/widget/TextView;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1663
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->no_available_network:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public checkDownloadAddress()V
    .locals 6

    .prologue
    .line 1922
    const/4 v2, 0x0

    .line 1923
    .local v2, flag:Z
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 1924
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1925
    .local v0, downloadEpisodesListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/EpisodesEntity;>;"
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 1926
    .local v1, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->videoQualityType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 1927
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getDownload_address_other()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, ""

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getDownload_address_other()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1928
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1930
    :cond_1
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getDownload_address()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, ""

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getDownload_address()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1931
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1935
    :cond_2
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getDownload_address()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v4, ""

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getDownload_address()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1936
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1938
    :cond_3
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getDownload_address_other()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, ""

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getDownload_address_other()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1939
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1944
    .end local v1           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :cond_4
    invoke-static {v0}, Lcom/meizu/video/client/common/Constant;->setEpisodesListEntity(Ljava/util/ArrayList;)V

    .line 1945
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 1946
    const/4 v2, 0x1

    .line 1949
    .end local v0           #downloadEpisodesListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/EpisodesEntity;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v4, v4, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->download:Landroid/widget/Button;

    if-eqz v4, :cond_6

    .line 1950
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v4, v4, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->download:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1952
    :cond_6
    return-void
.end method

.method public controlVarietyButtonView(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1689
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " controlVarietyButtonView  currentPage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " totalPage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    if-ne p2, v3, :cond_1

    .line 1691
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->latest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1692
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->prev:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1693
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->next:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1694
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->earliest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1725
    :cond_0
    :goto_0
    return-void

    .line 1695
    :cond_1
    if-ne p2, v5, :cond_3

    .line 1696
    if-ne p1, v3, :cond_2

    .line 1697
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->latest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1698
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->prev:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1699
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->next:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1700
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->earliest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    goto :goto_0

    .line 1702
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->latest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1703
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->prev:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1704
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->next:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1705
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->earliest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    goto :goto_0

    .line 1707
    :cond_3
    if-le p2, v5, :cond_0

    .line 1708
    if-ne p1, v3, :cond_4

    .line 1709
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->latest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1710
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->prev:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1711
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->next:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1712
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->earliest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    goto :goto_0

    .line 1713
    :cond_4
    if-ne p1, p2, :cond_5

    .line 1714
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->latest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1715
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->prev:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1716
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->next:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1717
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->earliest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    goto :goto_0

    .line 1719
    :cond_5
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->latest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1720
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->prev:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1721
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->next:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1722
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->earliest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    goto/16 :goto_0
.end method

.method public destroyBrocast()V
    .locals 1

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1686
    return-void
.end method

.method public getConfigurationDirect()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1748
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 1749
    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->configDirect:I

    .line 1753
    :goto_0
    return-void

    .line 1751
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->configDirect:I

    goto :goto_0
.end method

.method public getCurrentPlayPage(Z)V
    .locals 9
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x5

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1841
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->playHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    if-nez v0, :cond_0

    .line 1842
    new-instance v0, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->playHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    .line 1844
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->playHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->cid:Ljava/lang/String;

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->vid:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->getCurrentDetailPlayItemVid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1848
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1849
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getEpisodesListEntity()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    .line 1850
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/meizu/video/client/common/Constant;->setEpisodesListEntity(Ljava/util/ArrayList;)V

    .line 1852
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 1853
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v2

    .line 1854
    :goto_0
    if-ge v1, v6, :cond_e

    .line 1855
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 1856
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getVid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1861
    :goto_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setLastPlayPosition(Z)V

    .line 1862
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->prePlayIndex:I

    const/4 v7, -0x1

    if-eq v0, v7, :cond_3

    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->prePlayIndex:I

    if-eq v0, v1, :cond_3

    .line 1863
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    iget v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->prePlayIndex:I

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setLastPlayPosition(Z)V

    .line 1865
    :cond_3
    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->prePlayIndex:I

    .line 1866
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentPlayIndex:I

    move v2, v6

    .line 1869
    :goto_2
    if-lez v2, :cond_5

    if-eqz p1, :cond_5

    .line 1872
    const-string v0, "1"

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v6}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getStype()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1873
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->configDirect:I

    if-ne v0, v8, :cond_7

    .line 1874
    const/4 v5, 0x4

    .line 1881
    :goto_3
    mul-int v0, v5, v3

    if-gt v2, v0, :cond_8

    move v0, v4

    .line 1889
    :cond_4
    :goto_4
    if-ne v0, v4, :cond_9

    .line 1890
    iput v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    .line 1916
    :cond_5
    :goto_5
    return-void

    .line 1854
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    move v3, v5

    .line 1878
    goto :goto_3

    .line 1884
    :cond_8
    mul-int v0, v5, v3

    sub-int v0, v2, v0

    mul-int v1, v5, v3

    add-int/lit8 v1, v1, -0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1885
    mul-int v1, v5, v3

    sub-int v1, v2, v1

    mul-int v2, v5, v3

    add-int/lit8 v2, v2, -0x4

    rem-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 1886
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1892
    :cond_9
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentPlayIndex:I

    mul-int v2, v5, v3

    add-int/lit8 v2, v2, -0x2

    add-int/lit8 v6, v0, -0x2

    mul-int v7, v5, v3

    add-int/lit8 v7, v7, -0x4

    mul-int/2addr v6, v7

    add-int/2addr v2, v6

    if-le v1, v2, :cond_a

    .line 1893
    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    goto :goto_5

    .line 1895
    :cond_a
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentPlayIndex:I

    mul-int v1, v5, v3

    add-int/lit8 v1, v1, -0x2

    if-gt v0, v1, :cond_b

    .line 1896
    iput v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    goto :goto_5

    .line 1898
    :cond_b
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentPlayIndex:I

    mul-int v1, v5, v3

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v0, v1

    mul-int v1, v5, v3

    add-int/lit8 v1, v1, -0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    .line 1899
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentPlayIndex:I

    mul-int v1, v5, v3

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v0, v1

    mul-int v1, v5, v3

    add-int/lit8 v1, v1, -0x4

    rem-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 1900
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    goto :goto_5

    .line 1906
    :cond_c
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->configDirect:I

    if-ne v0, v8, :cond_d

    .line 1907
    const/4 v0, 0x6

    .line 1913
    :goto_6
    mul-int/lit8 v0, v0, 0x1

    div-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    goto :goto_5

    :cond_d
    move v0, v3

    .line 1911
    goto :goto_6

    :cond_e
    move v1, v2

    goto/16 :goto_1

    :cond_f
    move v1, v2

    goto/16 :goto_2
.end method

.method public getEpisodesShowTVList(IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 1116
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 1117
    mul-int v1, p1, p2

    .line 1118
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_2

    .line 1119
    iput v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I

    .line 1127
    :cond_0
    :goto_0
    iget v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I

    if-le p3, v2, :cond_1

    .line 1128
    iget p3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I

    .line 1129
    iput p3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    .line 1132
    :cond_1
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 1133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    .line 1141
    :goto_1
    iget v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I

    if-ne v2, v4, :cond_4

    .line 1142
    if-ne p3, v4, :cond_7

    move v1, v0

    .line 1143
    :goto_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 1145
    :try_start_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1147
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1121
    :cond_2
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v3, v1, -0x4

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I

    .line 1122
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v3, v1, -0x4

    rem-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 1123
    iget v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I

    goto :goto_0

    .line 1135
    :cond_3
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 1148
    :catch_0
    move-exception v0

    .line 1150
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_3

    .line 1154
    :cond_4
    iget v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I

    if-ne v2, v5, :cond_a

    .line 1155
    if-ne p3, v4, :cond_8

    .line 1158
    add-int/lit8 v2, v1, -0x1

    move v1, v0

    .line 1159
    :goto_4
    if-ge v1, v2, :cond_6

    .line 1160
    :try_start_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1162
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_5

    .line 1163
    const-string v3, "..."

    invoke-virtual {v0, v3}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1164
    const-string v3, "1"

    invoke-virtual {v0, v3}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setFlag(Ljava/lang/String;)V

    .line 1166
    :cond_5
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 1169
    :cond_6
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1171
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1270
    :cond_7
    :goto_5
    return-void

    .line 1172
    :catch_1
    move-exception v0

    .line 1173
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_5

    .line 1175
    :cond_8
    if-ne p3, v5, :cond_7

    .line 1177
    :try_start_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1178
    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1179
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    add-int/lit8 v2, v1, -0x3

    .line 1182
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 1183
    :goto_6
    if-ge v1, v3, :cond_7

    .line 1184
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1186
    if-ne v1, v2, :cond_9

    .line 1187
    const-string v4, "..."

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1188
    const-string v4, "0"

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setFlag(Ljava/lang/String;)V

    .line 1190
    :cond_9
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1183
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1192
    :catch_2
    move-exception v0

    .line 1193
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_5

    .line 1198
    :cond_a
    if-ne p3, v4, :cond_d

    .line 1201
    add-int/lit8 v2, v1, -0x1

    move v1, v0

    .line 1202
    :goto_7
    if-ge v1, v2, :cond_c

    .line 1203
    :try_start_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1205
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_b

    .line 1206
    const-string v3, "..."

    invoke-virtual {v0, v3}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1207
    const-string v3, "1"

    invoke-virtual {v0, v3}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setFlag(Ljava/lang/String;)V

    .line 1209
    :cond_b
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1202
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1212
    :cond_c
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1214
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_5

    .line 1215
    :catch_3
    move-exception v0

    .line 1216
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto/16 :goto_5

    .line 1218
    :cond_d
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I

    if-ne p3, v0, :cond_f

    .line 1220
    :try_start_4
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1221
    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1222
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1224
    add-int/lit8 v0, p3, -0x1

    add-int/lit8 v1, v1, -0x4

    mul-int/2addr v0, v1

    add-int/lit8 v2, v0, 0x1

    .line 1225
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 1226
    :goto_8
    if-ge v1, v3, :cond_7

    .line 1227
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1229
    if-ne v1, v2, :cond_e

    .line 1230
    const-string v4, "..."

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1231
    const-string v4, "0"

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setFlag(Ljava/lang/String;)V

    .line 1233
    :cond_e
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1226
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 1235
    :catch_4
    move-exception v0

    .line 1236
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto/16 :goto_5

    .line 1240
    :cond_f
    :try_start_5
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1241
    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1242
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    add-int/lit8 v0, p3, -0x1

    add-int/lit8 v2, v1, -0x4

    mul-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    .line 1245
    add-int/lit8 v0, p3, -0x1

    add-int/lit8 v3, v1, -0x4

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x2

    add-int v3, v0, v1

    move v1, v2

    .line 1246
    :goto_9
    if-ge v1, v3, :cond_12

    .line 1247
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1249
    if-ne v1, v2, :cond_10

    .line 1250
    const-string v4, "..."

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1251
    const-string v4, "0"

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setFlag(Ljava/lang/String;)V

    .line 1253
    :cond_10
    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_11

    .line 1254
    const-string v4, "..."

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1255
    const-string v4, "1"

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setFlag(Ljava/lang/String;)V

    .line 1257
    :cond_11
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 1260
    :cond_12
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1262
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_5

    .line 1264
    :catch_5
    move-exception v0

    .line 1265
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto/16 :goto_5
.end method

.method public getEpisodesShowVarietyList(IIII)V
    .locals 8
    .parameter "rowNum"
    .parameter "colNum"
    .parameter "page"
    .parameter "type"

    .prologue
    .line 1283
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 1284
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int v7, p1, p2

    div-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I

    .line 1285
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int v7, p1, p2

    rem-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 1286
    iget v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I

    .line 1289
    :cond_0
    iget v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I

    if-le p3, v6, :cond_1

    .line 1290
    iget p3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I

    .line 1291
    iput p3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    .line 1294
    :cond_1
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    if-nez v6, :cond_2

    .line 1295
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    .line 1299
    :goto_0
    mul-int v4, p1, p2

    .line 1300
    .local v4, showMaxNum:I
    add-int/lit8 v6, p3, -0x1

    mul-int/2addr v6, v4

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1301
    .local v5, startPosition:I
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1302
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int v7, v5, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1303
    .local v1, endPosition:I
    move v3, v5

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1306
    :try_start_0
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v6}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v2

    .line 1307
    .local v2, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1303
    .end local v2           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1297
    .end local v1           #endPosition:I
    .end local v3           #i:I
    .end local v4           #showMaxNum:I
    .end local v5           #startPosition:I
    :cond_2
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1308
    .restart local v1       #endPosition:I
    .restart local v3       #i:I
    .restart local v4       #showMaxNum:I
    .restart local v5       #startPosition:I
    :catch_0
    move-exception v0

    .line 1309
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_2

    .line 1315
    .end local v0           #e:Ljava/lang/CloneNotSupportedException;
    .end local v1           #endPosition:I
    .end local v3           #i:I
    .end local v4           #showMaxNum:I
    .end local v5           #startPosition:I
    :cond_3
    return-void
.end method

.method public getIntroductionShowLines()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 1728
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 1729
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->isHasComment:Z

    if-eqz v0, :cond_0

    .line 1730
    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->showTextLines:I

    .line 1745
    :goto_0
    return-void

    .line 1732
    :cond_0
    iput v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->showTextLines:I

    goto :goto_0

    .line 1735
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->isHasComment:Z

    if-eqz v0, :cond_2

    .line 1736
    iput v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->showTextLines:I

    goto :goto_0

    .line 1738
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->cid:Ljava/lang/String;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1739
    const/4 v0, 0x5

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->showTextLines:I

    goto :goto_0

    .line 1741
    :cond_3
    const/4 v0, 0x6

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->showTextLines:I

    goto :goto_0
.end method

.method public getRemotePlayList()V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0x64

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1558
    .line 1559
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->remoteVideoPlayList:Ljava/util/ArrayList;

    if-nez v1, :cond_6

    .line 1560
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->remoteVideoPlayList:Ljava/util/ArrayList;

    .line 1575
    :cond_0
    :goto_0
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 1577
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentPlayIndex:I

    add-int/lit8 v0, v0, -0x32

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1578
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentPlayIndex:I

    add-int/lit8 v0, v0, 0x32

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1579
    sub-int v3, v0, v1

    if-eq v3, v4, :cond_b

    .line 1580
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_9

    .line 1581
    if-nez v1, :cond_8

    .line 1582
    add-int/lit8 v0, v1, 0x64

    move v8, v0

    move v0, v1

    move v1, v8

    .line 1591
    :goto_1
    iget v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentPlayIndex:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentPlayIndex:I

    .line 1592
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getRemotePlayList startposition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " endposition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " episodesListEntity.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 1593
    :goto_2
    if-ge v2, v1, :cond_a

    .line 1594
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 1595
    if-eqz v0, :cond_5

    .line 1596
    new-instance v3, Lcom/android/gallery3d/app/RemoteVideoPlayList;

    invoke-direct {v3}, Lcom/android/gallery3d/app/RemoteVideoPlayList;-><init>()V

    .line 1597
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->setRemoteVideoMediaId(Ljava/lang/String;)V

    .line 1598
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->setRemoteVideoTitle(Ljava/lang/String;)V

    .line 1600
    :try_start_0
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getHead_duration()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->head_duration:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1605
    :goto_3
    iget-wide v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->head_duration:J

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->setRemoteVideoHeadDuration(J)V

    .line 1607
    :try_start_1
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getTail_duration()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->tail_duration:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1612
    :goto_4
    iget-wide v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->tail_duration:J

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->setRemoteVideoTailDuration(J)V

    .line 1613
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getPlay_address()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->setRemoteVideoStandardPlayURL(Ljava/lang/String;)V

    .line 1614
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getPlay_address_other()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->setRemoteVideoHignPlayURL(Ljava/lang/String;)V

    .line 1617
    invoke-virtual {v3}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoHignPlayURL()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoHignPlayURL()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1618
    :cond_1
    invoke-virtual {v3}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoStandardPlayURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->setRemoteVideoHignPlayURL(Ljava/lang/String;)V

    .line 1620
    :cond_2
    invoke-virtual {v3}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoStandardPlayURL()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoStandardPlayURL()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1621
    :cond_3
    invoke-virtual {v3}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoHignPlayURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->setRemoteVideoStandardPlayURL(Ljava/lang/String;)V

    .line 1624
    :cond_4
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getLmid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->setRemoteVideoStandardMmsid(Ljava/lang/String;)V

    .line 1625
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getHmid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->setRemoteVideoHighMmsid(Ljava/lang/String;)V

    .line 1627
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->remoteVideoPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1593
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    .line 1563
    :cond_6
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_7

    .line 1564
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->remoteVideoPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1567
    :cond_7
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->remoteVideoPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 1570
    goto/16 :goto_0

    .line 1584
    :cond_8
    add-int/lit8 v1, v0, -0x64

    move v8, v0

    move v0, v1

    move v1, v8

    goto/16 :goto_1

    .line 1588
    :cond_9
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    move v0, v2

    goto/16 :goto_1

    .line 1601
    :catch_0
    move-exception v4

    .line 1603
    iput-wide v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->head_duration:J

    goto/16 :goto_3

    .line 1608
    :catch_1
    move-exception v4

    .line 1610
    iput-wide v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->tail_duration:J

    goto/16 :goto_4

    .line 1631
    :cond_a
    return-void

    :cond_b
    move v8, v0

    move v0, v1

    move v1, v8

    goto/16 :goto_1
.end method

.method public initListeners()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->latest:Landroid/widget/Button;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->prev:Landroid/widget/Button;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->next:Landroid/widget/Button;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->earliest:Landroid/widget/Button;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 467
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    new-instance v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$2;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 502
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_comment_other:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->download:Landroid/widget/Button;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->favorite:Landroid/widget/Button;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0a000d

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1635
    packed-switch p1, :pswitch_data_0

    .line 1651
    :cond_0
    :goto_0
    return-void

    .line 1637
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1638
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1639
    const-string v1, "selectdownNum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1640
    const-string v1, "selectdownNum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1641
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult selectdownNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v8}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    invoke-virtual {p0, v8}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1635
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x4

    .line 317
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 319
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 322
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setTopAndBottomHeight()V

    .line 324
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getConfigurationDirect()V

    .line 325
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setImageIntroductionSpace()V

    .line 326
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getIntroductionShowLines()V

    .line 327
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadTextIntroduction()V

    .line 328
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadEpisodes()V

    .line 329
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadSimilarvideo()V

    .line 330
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 216
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 218
    const v1, 0x7f040018

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setContentView(I)V

    .line 219
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 220
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getDataFromBundle(Landroid/os/Bundle;)V

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->initView()V

    .line 224
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->initListeners()V

    .line 225
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->bindService()V

    .line 227
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->bar:Landroid/app/ActionBar;

    .line 228
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->bar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->useMzTitleLayout(Z)V

    .line 229
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->bar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setEnabledBackWhenOverlay(Z)V

    .line 231
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->bar:Landroid/app/ActionBar;

    invoke-static {p0, v1, v2}, Lcom/meizu/video/client/util/CommonUtil;->setActionbarStyle(Landroid/app/Activity;Landroid/app/ActionBar;I)V

    .line 233
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setTopAndBottomHeight()V

    .line 235
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    if-nez v1, :cond_1

    .line 236
    new-instance v1, Lcom/meizu/video/client/util/AsyncImageLoader;

    invoke-direct {v1}, Lcom/meizu/video/client/util/AsyncImageLoader;-><init>()V

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->asyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 239
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 247
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailListEntity:Ljava/util/ArrayList;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    if-eqz v0, :cond_1

    .line 250
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 254
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 258
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->remoteVideoPlayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 261
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->remoteVideoPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 262
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->remoteVideoPlayList:Ljava/util/ArrayList;

    .line 264
    :cond_4
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->lableListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 265
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->lableListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 266
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->lableListEntity:Ljava/util/ArrayList;

    .line 268
    :cond_5
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->similarVideoListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 269
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->similarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 270
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->similarVideoListEntity:Ljava/util/ArrayList;

    .line 272
    :cond_6
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    if-eqz v0, :cond_7

    .line 273
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    invoke-virtual {v0}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->close()V

    .line 275
    :cond_7
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->playHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    if-eqz v0, :cond_8

    .line 276
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->playHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    invoke-virtual {v0}, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->close()V

    .line 278
    :cond_8
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loader:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loader:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_9

    .line 279
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loader:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->cancel(Z)Z

    .line 282
    :cond_9
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->unBindService()V

    .line 284
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 285
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 289
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 290
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->destroyBrocast()V

    .line 291
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->reLoadPage()V

    .line 296
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->registerBrocast()V

    .line 297
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 298
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 303
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 307
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 308
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 313
    return-void
.end method

.method public playVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1517
    invoke-static {p0}, Lcom/meizu/video/client/util/CommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1518
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x1030317

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1519
    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1520
    const v1, 0x1040010

    new-instance v2, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$9;

    invoke-direct {v2, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$9;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1526
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1527
    new-instance v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$10;

    invoke-direct {v1, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$10;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1533
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1555
    :goto_0
    return-void

    .line 1538
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getRemotePlayList()V

    .line 1540
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/app/MovieActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1542
    const-string v1, "remoteVideoIndex"

    iget v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentPlayIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1543
    const-string v1, "remoteVideoCid"

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1544
    const-string v1, "remoteVideoVid"

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->vid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1545
    const-string v1, "remoteVideoPalyList"

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->remoteVideoPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1547
    const-string v1, "video_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1548
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1550
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1551
    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9A334 Safari/7534.48.3"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1553
    const-string v2, "http_headers"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1554
    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public reLoadPage()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1770
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->isLoadBySimilarVideo:Z

    if-eqz v0, :cond_6

    .line 1771
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetail_Content_ScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1772
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText2LinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1773
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1774
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1775
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->labelText5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1776
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1779
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1780
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1782
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->similarVideoListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1783
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->similarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1785
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->remoteVideoPlayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1786
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->remoteVideoPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1788
    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    .line 1789
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->prePlayIndex:I

    .line 1795
    :goto_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1796
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->bar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1798
    :cond_4
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelName:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1799
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->bar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1802
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getIntroductionShowLines()V

    .line 1803
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->checkDataAndUpdateView()V

    .line 1804
    return-void

    .line 1791
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getCurrentPlayPage(Z)V

    .line 1792
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadEpisodes()V

    goto :goto_0
.end method

.method public registerBrocast()V
    .locals 2

    .prologue
    .line 1679
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1680
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1681
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1682
    return-void
.end method

.method public setEnabled(Landroid/widget/Button;Z)V
    .locals 0
    .parameter "button"
    .parameter "flag"

    .prologue
    .line 1817
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1818
    return-void
.end method

.method public setImageIntroductionSpace()V
    .locals 7

    .prologue
    const/16 v6, 0x28

    const/16 v5, 0x1e

    const/16 v3, 0xe

    const/4 v4, 0x0

    .line 1756
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_image_introduction:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1757
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->configDirect:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1758
    invoke-static {p0, v5}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v5}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1766
    :goto_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_image_introduction:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1767
    return-void

    .line 1762
    :cond_0
    invoke-static {p0, v6}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v6}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public setTopAndBottomHeight()V
    .locals 7

    .prologue
    const/16 v6, 0x62

    const/16 v5, 0xe

    const/4 v4, 0x0

    .line 1821
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetail_top_space:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1822
    .local v0, params1:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetail_bottom_space:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1823
    .local v1, params2:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1824
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1825
    invoke-static {p0, v5}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1830
    :goto_0
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetail_top_space:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1831
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetail_bottom_space:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1832
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetail_top_space:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1833
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetail_bottom_space:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1834
    return-void

    .line 1827
    :cond_0
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1828
    invoke-static {p0, v5}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x62

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public showEpisodesTVPartListView()V
    .locals 13

    .prologue
    const/4 v6, 0x1

    const-wide v11, 0x4041400000000000L

    const-wide/high16 v9, 0x402f

    const/4 v8, 0x0

    const/16 v7, 0xa

    .line 1458
    const/4 v3, 0x5

    .line 1459
    .local v3, row:I
    const/4 v0, 0x5

    .line 1461
    .local v0, col:I
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1462
    .local v1, linearParams:Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->configDirect:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1463
    const/4 v3, 0x4

    .line 1464
    const/16 v0, 0x8

    .line 1466
    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    invoke-virtual {p0, v3, v0, v4, v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getEpisodesShowTVList(IIII)V

    .line 1468
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int v2, v4, v0

    .line 1469
    .local v2, rol:I
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v4, v0

    if-eqz v4, :cond_0

    .line 1470
    add-int/lit8 v2, v2, 0x1

    .line 1472
    :cond_0
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1473
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-static {p0, v7}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 1474
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    const/16 v5, 0xd

    invoke-static {p0, v5}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 1476
    invoke-static {p0, v11, v12}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    invoke-static {p0, v9, v10}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    invoke-static {p0, v11, v12}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    invoke-virtual {v1, v4, v5, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1480
    const/16 v4, 0x20

    invoke-static {p0, v4}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v4

    mul-int/2addr v4, v2

    add-int/lit8 v5, v2, -0x1

    invoke-static {p0, v7}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v6

    mul-int/2addr v5, v6

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1506
    :goto_0
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1508
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->InitAdapter()V

    .line 1509
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1510
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    invoke-virtual {v4, v7}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->setFreshType(I)V

    .line 1511
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->setEpisodesList(Ljava/util/ArrayList;)V

    .line 1512
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->notifyDataSetChanged()V

    .line 1513
    return-void

    .line 1483
    .end local v2           #rol:I
    :cond_1
    const/4 v3, 0x5

    .line 1484
    const/4 v0, 0x5

    .line 1486
    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    invoke-virtual {p0, v3, v0, v4, v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getEpisodesShowTVList(IIII)V

    .line 1488
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int v2, v4, v0

    .line 1489
    .restart local v2       #rol:I
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 1490
    add-int/lit8 v2, v2, 0x1

    .line 1493
    :cond_2
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1494
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-static {p0, v7}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 1495
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    const/16 v5, 0xd

    invoke-static {p0, v5}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 1497
    const/16 v4, 0x18

    invoke-static {p0, v4}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, v9, v10}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    const/16 v6, 0x18

    invoke-static {p0, v6}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v1, v4, v5, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1501
    const/16 v4, 0x20

    invoke-static {p0, v4}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v4

    mul-int/2addr v4, v2

    add-int/lit8 v5, v2, -0x1

    invoke-static {p0, v7}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v6

    mul-int/2addr v5, v6

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public showEpisodesVarietyPartListView()V
    .locals 12

    .prologue
    const/16 v8, 0x19

    const/4 v11, 0x2

    const-wide/high16 v6, 0x403e

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1413
    const/16 v4, 0x8

    .line 1414
    .local v4, row:I
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1416
    .local v1, linearParams1:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety_title:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1418
    .local v0, layoutParams2:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1420
    .local v2, linearParams3:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety_operation:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1422
    .local v3, linearParams4:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v11, :cond_0

    .line 1423
    const/4 v4, 0x6

    .line 1424
    const/16 v5, 0x28

    invoke-static {p0, v5}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v5

    add-int/lit8 v5, v5, -0x14

    const/16 v6, 0x28

    invoke-static {p0, v6}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v6

    add-int/lit8 v6, v6, -0x14

    invoke-virtual {v1, v5, v9, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1425
    invoke-static {p0, v8}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1426
    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v8, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1433
    :goto_0
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1434
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety_title:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1436
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety_operation:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1438
    iget v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    invoke-virtual {p0, v4, v10, v5, v11}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getEpisodesShowVarietyList(IIII)V

    .line 1440
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x3c

    invoke-static {p0, v6}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v6

    const-wide/high16 v7, 0x3fe0

    invoke-static {p0, v7, v8}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v7

    add-int/2addr v6, v7

    mul-int/2addr v5, v6

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1441
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety_listview:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1443
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->InitAdapter()V

    .line 1444
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    invoke-virtual {v5, v10}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->setFreshType(I)V

    .line 1445
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->episodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->setEpisodesList(Ljava/util/ArrayList;)V

    .line 1446
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->channelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    invoke-virtual {v5}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->notifyDataSetChanged()V

    .line 1448
    iget v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I

    if-gt v5, v10, :cond_1

    .line 1449
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety_operation:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1455
    :goto_1
    return-void

    .line 1428
    :cond_0
    const/16 v4, 0x8

    .line 1429
    invoke-static {p0, v6, v7}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    add-int/lit8 v5, v5, -0x14

    invoke-static {p0, v6, v7}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    add-int/lit8 v6, v6, -0x14

    invoke-virtual {v1, v5, v9, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1430
    invoke-static {p0, v8}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1431
    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/lit8 v5, v5, 0x5

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/lit8 v7, v7, 0x5

    iget v8, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 1451
    :cond_1
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->chanelprogramdetail_episodes_variety_operation:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1452
    iget v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->currentEpisodesPage:I

    iget v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->totalEpisodesPage:I

    invoke-virtual {p0, v5, v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->controlVarietyButtonView(II)V

    goto :goto_1
.end method

.method public unBindService()V
    .locals 1

    .prologue
    .line 1813
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->downloandService:Landroid/net/DownloadService;

    .line 1814
    return-void
.end method

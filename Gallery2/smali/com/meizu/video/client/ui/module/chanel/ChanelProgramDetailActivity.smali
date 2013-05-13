.class public Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;
.super Landroid/app/Activity;
.source "ChanelProgramDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$NetworkDialogListener;,
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

.field private mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

.field private mBar:Landroid/app/ActionBar;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mChanelName:Ljava/lang/String;

.field private mChanelProgramDetailBottomSpace:Landroid/widget/LinearLayout;

.field private mChanelProgramDetailCommentAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;

.field private mChanelProgramDetailContentScrollView:Landroid/widget/ScrollView;

.field private mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

.field private mChanelProgramDetailIntroductionContent:Lcom/meizu/widget/FoldableTextView;

.field private mChanelProgramDetailIntroductionTitle:Landroid/widget/TextView;

.field private mChanelProgramDetailProgressbarLayout:Landroid/widget/LinearLayout;

.field private mChanelProgramDetailTopSpace:Landroid/widget/LinearLayout;

.field private mChanelProgramName:Ljava/lang/String;

.field private mChanelprogramdetailComment:Landroid/widget/LinearLayout;

.field private mChanelprogramdetailCommentListview:Landroid/widget/ListView;

.field private mChanelprogramdetailCommentOther:Landroid/widget/TextView;

.field private mChanelprogramdetailCommentTitle:Landroid/widget/TextView;

.field private mChanelprogramdetailEpisodesTv:Landroid/widget/LinearLayout;

.field private mChanelprogramdetailEpisodesVariety:Landroid/widget/LinearLayout;

.field private mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

.field private mChanelprogramdetailEpisodesVarietyOperation:Landroid/widget/LinearLayout;

.field private mChanelprogramdetailEpisodesVarietyTitle:Landroid/widget/TextView;

.field private mChanelprogramdetailImageIntroduction:Landroid/widget/LinearLayout;

.field private mChanelprogramdetailSimilarvideo:Landroid/widget/LinearLayout;

.field private mChanelprogramdetailSimilarvideoImagegroup:Landroid/widget/LinearLayout;

.field private mChanelprogramdetailSimilarvideoTitle:Landroid/widget/TextView;

.field private mChanelprogramdetailTextIntroduction:Landroid/widget/LinearLayout;

.field private mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

.field private mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

.field private mChannelProgramDetailListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mCid:Ljava/lang/String;

.field private mCommentListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/CommentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigDirect:I

.field private mCurrentCommentPage:I

.field private mCurrentEpisodesPage:I

.field private mCurrentPlayIndex:I

.field private mDownloadDataChange:Z

.field private mDownloadObserver:Landroid/database/ContentObserver;

.field private mDownloandService:Landroid/net/DownloadService;

.field private mEpisodesListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/EpisodesEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mEpisodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

.field private mEpisodesShowListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/EpisodesEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

.field private mFavoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

.field private mFavoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

.field mHandler:Landroid/os/Handler;

.field private mHasDownloadAddress:Z

.field private mHeadDuration:J

.field private mIntro:Ljava/lang/String;

.field private mIsFavarite:Z

.field private mIsHasComment:Z

.field private mIsLoadBySimilarVideo:Z

.field private mIsLoading:Z

.field private mLableListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/LableEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mLoader:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;

.field private mMediaDataType:Ljava/lang/String;

.field private mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

.field private mNoAvailableNetwork:Landroid/widget/LinearLayout;

.field private mNoNetworkImage:Landroid/widget/ImageView;

.field private mNoNetworkTitle:Landroid/widget/TextView;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOneFilm:Z

.field private mPlayHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

.field private mPrePlayIndex:I

.field private mRemoteVideoPlayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/app/RemoteVideoPlayList;",
            ">;"
        }
    .end annotation
.end field

.field private mRes:Landroid/content/res/Resources;

.field private mShowTextLines:I

.field private mSimilarVideoListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mSimilarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

.field private mStyle:Ljava/lang/String;

.field private mTailDuration:J

.field private mTotalEpisodesPage:I

.field private mVid:Ljava/lang/String;

.field private mVideoDataChange:Z

.field private mVideoObserver:Landroid/database/ContentObserver;

.field private mVideoQualityType:I

.field private mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    const-string v0, "ChanelProgramDetailActivity"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->TAG:Ljava/lang/String;

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelName:Ljava/lang/String;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramName:Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCid:Ljava/lang/String;

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mVid:Ljava/lang/String;

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mMediaDataType:Ljava/lang/String;

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIntro:Ljava/lang/String;

    .line 147
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailListEntity:Ljava/util/ArrayList;

    .line 148
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    .line 149
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 151
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    .line 152
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    .line 153
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 154
    iput v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I

    .line 155
    iput v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTotalEpisodesPage:I

    .line 157
    iput v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentCommentPage:I

    .line 159
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCommentListEntity:Ljava/util/ArrayList;

    .line 161
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mSimilarVideoListEntity:Ljava/util/ArrayList;

    .line 162
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mSimilarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 164
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    .line 165
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailCommentAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;

    .line 167
    iput-boolean v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsLoading:Z

    .line 169
    iput v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->FRESH_CURRENT_PAGE_ALL:I

    .line 170
    iput v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->FRESH_CURRENT_PAGE_EPISODES:I

    .line 171
    iput v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->FRESH_CURRENT_PAGE_COMMENT:I

    .line 172
    const/4 v0, 0x4

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->FRESH_CURRENT_ACTIONBAR_STYLE:I

    .line 175
    iput v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->LOAD_DETAIL_DATA:I

    .line 177
    iput v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->LOAD_EPISODES_DATA:I

    .line 179
    iput v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->LOAD_COMMENT_DATA:I

    .line 182
    iput v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->EPISODES_TV:I

    .line 183
    iput v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->EPISODES_VARIETY:I

    .line 189
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 199
    iput v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentPlayIndex:I

    .line 200
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mHeadDuration:J

    .line 201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTailDuration:J

    .line 203
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mStyle:Ljava/lang/String;

    .line 205
    iput-boolean v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mOneFilm:Z

    .line 207
    iput-boolean v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsHasComment:Z

    .line 208
    iput v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mShowTextLines:I

    .line 210
    iput v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mConfigDirect:I

    .line 211
    iput v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mVideoQualityType:I

    .line 215
    iput-boolean v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsLoadBySimilarVideo:Z

    .line 221
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    .line 223
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    .line 224
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mPlayHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    .line 226
    iput-boolean v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsFavarite:Z

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mPrePlayIndex:I

    .line 232
    iput-boolean v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mHasDownloadAddress:Z

    .line 617
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$3;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mHandler:Landroid/os/Handler;

    .line 1331
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$8;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1756
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$9;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$9;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1897
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mDownloandService:Landroid/net/DownloadService;

    .line 2231
    iput-boolean v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mVideoDataChange:Z

    .line 2232
    iput-boolean v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mDownloadDataChange:Z

    .line 2234
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$12;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$12;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mVideoObserver:Landroid/database/ContentObserver;

    .line 2247
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$13;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$13;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mDownloadObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCommentListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCommentListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$102(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I

    return p1
.end method

.method static synthetic access$108(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I

    return v0
.end method

.method static synthetic access$110(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I

    return v0
.end method

.method static synthetic access$1100(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentCommentPage:I

    return v0
.end method

.method static synthetic access$1108(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentCommentPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentCommentPage:I

    return v0
.end method

.method static synthetic access$1200(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailProgressbarLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mNoNetworkTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadImageIntroduction()V

    return-void
.end method

.method static synthetic access$1700(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadTextIntroduction()V

    return-void
.end method

.method static synthetic access$1800(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadEpisodes()V

    return-void
.end method

.method static synthetic access$1900(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadSimilarvideo()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTotalEpisodesPage:I

    return v0
.end method

.method static synthetic access$2000(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->initData(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailContentScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadComment()V

    return-void
.end method

.method static synthetic access$2300(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailSimilarvideoImagegroup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsLoadBySimilarVideo:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIntro:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailCommentOther:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentPlayIndex:I

    return p1
.end method

.method static synthetic access$3100(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mVideoQualityType:I

    return v0
.end method

.method static synthetic access$3300(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mStyle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;)Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsFavarite:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsFavarite:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Landroid/view/MenuItem;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setOrGetWifiSetting(Landroid/view/MenuItem;Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Landroid/view/MenuItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->onMenuItemSelect(Landroid/view/MenuItem;)V

    return-void
.end method

.method static synthetic access$3902(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mVideoDataChange:Z

    return p1
.end method

.method static synthetic access$4002(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mDownloadDataChange:Z

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    return-object v0
.end method

.method static synthetic access$602(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;)Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    return-object p1
.end method

.method static synthetic access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object v0
.end method

.method static synthetic access$702(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object p1
.end method

.method static synthetic access$800(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mMediaDataType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mMediaDataType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mVid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mVid:Ljava/lang/String;

    return-object p1
.end method

.method private checkFileExistOrDownloading()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2127
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mHasDownloadAddress:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 2128
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 2129
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mVideoQualityType:I

    invoke-static {v1, v4}, Lcom/meizu/video/client/util/CommonUtil;->getEpisodesVideoDownLoadUrl(Lcom/meizu/video/client/ui/entity/EpisodesEntity;I)Ljava/lang/String;

    move-result-object v1

    .line 2130
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2131
    :cond_0
    invoke-static {v0, v2}, Lcom/meizu/video/client/util/CommonUtil;->getEpisodesVideoDownLoadUrl(Lcom/meizu/video/client/ui/entity/EpisodesEntity;I)Ljava/lang/String;

    move-result-object v1

    .line 2133
    :cond_1
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 2134
    const-string v5, "?"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 2136
    if-eq v4, v6, :cond_4

    if-eq v5, v6, :cond_4

    if-ge v4, v5, :cond_4

    .line 2137
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2141
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2142
    invoke-direct {p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    .line 2143
    if-nez v0, :cond_2

    .line 2144
    invoke-direct {p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->isFileDownloading(Ljava/lang/String;)Z

    move-result v0

    .line 2147
    :cond_2
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v4, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mDownload:Landroid/widget/Button;

    if-nez v0, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2148
    if-eqz v0, :cond_6

    .line 2149
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mDownload:Landroid/widget/Button;

    const v1, 0x7f0a001d

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2155
    :cond_3
    :goto_2
    return-void

    .line 2139
    :cond_4
    const-string v1, ".mp4"

    goto :goto_0

    :cond_5
    move v1, v3

    .line 2147
    goto :goto_1

    .line 2151
    :cond_6
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mDownload:Landroid/widget/Button;

    const v1, 0x7f0a0009

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private getDataFromBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 688
    const-string v0, "chanelName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    const-string v0, "chanelName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelName:Ljava/lang/String;

    .line 691
    :cond_0
    const-string v0, "chanelProgramName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    const-string v0, "chanelProgramName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramName:Ljava/lang/String;

    .line 694
    :cond_1
    const-string v0, "cid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 695
    const-string v0, "cid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCid:Ljava/lang/String;

    .line 696
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelName:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, ""

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 702
    :cond_2
    :goto_0
    const-string v0, "vid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 703
    const-string v0, "vid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mVid:Ljava/lang/String;

    .line 705
    :cond_3
    const-string v0, "mediaDataType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 706
    const-string v0, "mediaDataType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mMediaDataType:Ljava/lang/String;

    .line 708
    :cond_4
    const-string v0, "intro"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 709
    const-string v0, "intro"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIntro:Ljava/lang/String;

    .line 712
    :cond_5
    return-void

    .line 699
    :cond_6
    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getChannelListEntity()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/video/client/util/CommonUtil;->getChannelNameByCid(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelName:Ljava/lang/String;

    goto :goto_0
.end method

.method private initData(II)V
    .locals 4
    .parameter "freshType"
    .parameter "loadType"

    .prologue
    const/4 v3, 0x1

    .line 528
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsLoading:Z

    if-nez v0, :cond_0

    .line 529
    iput-boolean v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsLoading:Z

    .line 530
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mLoader:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;

    .line 531
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mLoader:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;

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

    .line 533
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 378
    const v0, 0x7f0d00a0

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailProgressbarLayout:Landroid/widget/LinearLayout;

    .line 379
    const v0, 0x7f0d00ed

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    .line 380
    const v0, 0x7f0d00ee

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mNoNetworkImage:Landroid/widget/ImageView;

    .line 382
    const v0, 0x7f0d00ef

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mNoNetworkTitle:Landroid/widget/TextView;

    .line 384
    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailContentScrollView:Landroid/widget/ScrollView;

    .line 385
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailContentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 388
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    .line 389
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0047

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mChanelProgramDetailImage:Landroid/widget/ImageView;

    .line 390
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0021

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText2LinearLayout:Landroid/widget/LinearLayout;

    .line 391
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0022

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText21:Landroid/widget/TextView;

    .line 392
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0023

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mImageView1:Landroid/widget/ImageView;

    .line 393
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0024

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mImageView2:Landroid/widget/ImageView;

    .line 394
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0025

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mImageView3:Landroid/widget/ImageView;

    .line 395
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mImageView4:Landroid/widget/ImageView;

    .line 396
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0027

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mImageView5:Landroid/widget/ImageView;

    .line 397
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0028

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText22:Landroid/widget/TextView;

    .line 398
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d0029

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText3:Landroid/widget/TextView;

    .line 399
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d002a

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText4:Landroid/widget/TextView;

    .line 400
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d002b

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText5:Landroid/widget/TextView;

    .line 402
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 403
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText4:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 404
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText5:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 406
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d004a

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mDownload:Landroid/widget/Button;

    .line 407
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    const v0, 0x7f0d004b

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mFavorite:Landroid/widget/Button;

    .line 409
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mDownload:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEllipsisSmall(Z)V

    .line 410
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mFavorite:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEllipsisSmall(Z)V

    .line 412
    const v0, 0x7f0d0057

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailTextIntroduction:Landroid/widget/LinearLayout;

    .line 413
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailIntroductionTitle:Landroid/widget/TextView;

    .line 414
    const v0, 0x7f0d0036

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/FoldableTextView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailIntroductionContent:Lcom/meizu/widget/FoldableTextView;

    .line 416
    const v0, 0x7f0d0037

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesTv:Landroid/widget/LinearLayout;

    .line 417
    const v0, 0x7f0d003b

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVariety:Landroid/widget/LinearLayout;

    .line 419
    const v0, 0x7f0d003c

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVarietyTitle:Landroid/widget/TextView;

    .line 420
    const v0, 0x7f0d003e

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    .line 421
    const v0, 0x7f0d003f

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVarietyOperation:Landroid/widget/LinearLayout;

    .line 423
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    .line 424
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    const v0, 0x7f0d0040

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mLatest:Landroid/widget/Button;

    .line 425
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    const v0, 0x7f0d0041

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mPrev:Landroid/widget/Button;

    .line 426
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    const v0, 0x7f0d0042

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mNext:Landroid/widget/Button;

    .line 427
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    const v0, 0x7f0d0043

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mEarliest:Landroid/widget/Button;

    .line 429
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mLatest:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEllipsisSmall(Z)V

    .line 430
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mPrev:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEllipsisSmall(Z)V

    .line 431
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mNext:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEllipsisSmall(Z)V

    .line 432
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mEarliest:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEllipsisSmall(Z)V

    .line 434
    const v0, 0x7f0d0038

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    .line 436
    const v0, 0x7f0d002f

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailComment:Landroid/widget/LinearLayout;

    .line 437
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailComment:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 438
    const v0, 0x7f0d0030

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailCommentTitle:Landroid/widget/TextView;

    .line 439
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailCommentTitle:Landroid/widget/TextView;

    const-string v1, "\u8c46\u74e3\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    const v0, 0x7f0d0031

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailCommentListview:Landroid/widget/ListView;

    .line 441
    const v0, 0x7f0d0032

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailCommentOther:Landroid/widget/TextView;

    .line 443
    const v0, 0x7f0d0054

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailSimilarvideoImagegroup:Landroid/widget/LinearLayout;

    .line 444
    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailSimilarvideoTitle:Landroid/widget/TextView;

    .line 446
    const v0, 0x7f0d0051

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailSimilarvideo:Landroid/widget/LinearLayout;

    .line 448
    const v0, 0x7f0d0046

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailImageIntroduction:Landroid/widget/LinearLayout;

    .line 450
    const v0, 0x7f0d004f

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailTopSpace:Landroid/widget/LinearLayout;

    .line 451
    const v0, 0x7f0d0050

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailBottomSpace:Landroid/widget/LinearLayout;

    .line 452
    return-void
.end method

.method private isFileDownloading(Ljava/lang/String;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2201
    .line 2204
    :try_start_0
    sget-object v1, Lcom/meizu/video/client/common/Constant$DataSourceUri;->sDownloadUri:Landroid/net/Uri;

    .line 2205
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    .line 2206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hint = \'file:///mnt/sdcard/Video/Download/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' AND status != \'200\' AND status < \'400\' "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2207
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2208
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2209
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-lez v0, :cond_3

    move v0, v8

    .line 2214
    :goto_0
    if-eqz v1, :cond_0

    .line 2215
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2218
    :cond_0
    :goto_1
    return v0

    .line 2212
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 2214
    :goto_2
    if-eqz v0, :cond_1

    .line 2215
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v6

    .line 2217
    goto :goto_1

    .line 2214
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_2

    .line 2215
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2214
    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_3

    .line 2212
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2159
    .line 2160
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2161
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "isFileExist name is null or []"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 2195
    :cond_1
    :goto_0
    return v0

    .line 2165
    :cond_2
    :try_start_0
    sget-object v1, Lcom/meizu/video/client/common/Constant$DataSourceUri;->sVideoUri:Landroid/net/Uri;

    .line 2167
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    .line 2168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/Download/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data like \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_display_name"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " =\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2172
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2173
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2174
    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 2175
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2176
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2177
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2178
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2179
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_3

    move v0, v8

    .line 2189
    :goto_1
    if-eqz v1, :cond_1

    .line 2190
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2187
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 2189
    :goto_2
    if-eqz v0, :cond_4

    .line 2190
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v6

    .line 2192
    goto/16 :goto_0

    .line 2189
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_5

    .line 2190
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2189
    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_3

    .line 2187
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_6
    move v0, v6

    goto :goto_1
.end method

.method private loadComment()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 956
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCommentListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCommentListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 957
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsHasComment:Z

    .line 958
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailCommentListview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 960
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCommentListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit16 v1, v1, 0xad

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 961
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailCommentListview:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 963
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->InitAdapter()V

    .line 964
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailCommentAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->setFreshType(I)V

    .line 965
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailCommentAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCommentListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->setCommentList(Ljava/util/ArrayList;)V

    .line 966
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailCommentAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;->notifyDataSetChanged()V

    .line 968
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailCommentOther:Landroid/widget/TextView;

    const-string v1, "\u663e\u793a\u5176\u4ed62\u6761\u5f71\u8bc4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 970
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailComment:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 975
    :goto_0
    return-void

    .line 972
    :cond_0
    iput-boolean v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsHasComment:Z

    .line 973
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailComment:Landroid/widget/LinearLayout;

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

    .line 890
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    if-eqz v0, :cond_2

    .line 891
    const-string v0, "0"

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getEpisodesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 892
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getEpisodesListEntity()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 896
    const-string v0, "1"

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getStype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 898
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getStype()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mStyle:Ljava/lang/String;

    .line 900
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->showEpisodesTVPartListView()V

    .line 902
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVariety:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 903
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesTv:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 923
    :goto_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentPlayIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 924
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentPlayIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getPlay_address()Ljava/lang/String;

    move-result-object v1

    .line 925
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    iget v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentPlayIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 927
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mChanelProgramDetailImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$5;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 950
    :cond_2
    :goto_1
    return-void

    .line 905
    :cond_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v4, :cond_4

    .line 906
    iput-boolean v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mOneFilm:Z

    .line 907
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesTv:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 908
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVariety:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 910
    :cond_4
    iput-boolean v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mOneFilm:Z

    .line 911
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVarietyOperation:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 912
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getEpisodesMsgEntity()Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 913
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    if-eqz v0, :cond_5

    .line 914
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVarietyTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 916
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->showEpisodesVarietyPartListView()V

    .line 918
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesTv:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 919
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVariety:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 936
    :cond_6
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesTv:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 937
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVariety:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 940
    :cond_7
    const-string v0, "-1"

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getEpisodesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 942
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesTv:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 943
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVariety:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 946
    :cond_8
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesTv:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 947
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVariety:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private loadImageIntroduction()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 718
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    if-eqz v0, :cond_12

    .line 719
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getLableListEntity()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mLableListEntity:Ljava/util/ArrayList;

    .line 720
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mLableListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mLableListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    if-eqz v0, :cond_14

    .line 722
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setImageIntroductionSpace()V

    .line 724
    const-string v4, ""

    .line 726
    new-instance v0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    invoke-direct {v0}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    .line 727
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mVid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setVid(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setCid(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setChanelProgramName(Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mMediaDataType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setMediaDataType(Ljava/lang/String;)V

    move v2, v1

    .line 733
    :goto_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mLableListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_f

    .line 734
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mLableListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/LableEntity;

    .line 735
    if-eqz v0, :cond_7

    .line 736
    const-string v3, "image"

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 737
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 738
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    invoke-virtual {v3, v4}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->setImageUrl(Ljava/lang/String;)V

    .line 740
    :cond_0
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText2LinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "text-image"

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 741
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText21:Landroid/widget/TextView;

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

    .line 742
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText22:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    :try_start_0
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 745
    div-double v7, v5, v10

    double-to-int v7, v7

    .line 746
    rem-double/2addr v5, v10

    double-to-int v3, v5

    .line 747
    if-ge v7, v9, :cond_1

    .line 748
    if-ne v3, v9, :cond_8

    .line 749
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mImageView1:Landroid/widget/ImageView;

    const v5, 0x7f02004f

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move v3, v1

    .line 755
    :cond_1
    :goto_1
    const/4 v5, 0x2

    if-ge v7, v5, :cond_2

    .line 756
    if-ne v3, v9, :cond_9

    .line 757
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mImageView2:Landroid/widget/ImageView;

    const v5, 0x7f02004f

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move v3, v1

    .line 763
    :cond_2
    :goto_2
    const/4 v5, 0x3

    if-ge v7, v5, :cond_3

    .line 764
    if-ne v3, v9, :cond_a

    .line 765
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mImageView3:Landroid/widget/ImageView;

    const v5, 0x7f02004f

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move v3, v1

    .line 771
    :cond_3
    :goto_3
    const/4 v5, 0x4

    if-ge v7, v5, :cond_4

    .line 772
    if-ne v3, v9, :cond_b

    .line 773
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mImageView4:Landroid/widget/ImageView;

    const v5, 0x7f02004f

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move v3, v1

    .line 779
    :cond_4
    :goto_4
    const/4 v5, 0x5

    if-ge v7, v5, :cond_5

    .line 780
    if-ne v3, v9, :cond_c

    .line 781
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mImageView5:Landroid/widget/ImageView;

    const v5, 0x7f02004f

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 787
    :cond_5
    :goto_5
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText2LinearLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 788
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

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

    .line 793
    :cond_6
    :goto_6
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText3:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "text"

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 794
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText3:Landroid/widget/TextView;

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

    .line 795
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText3:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 796
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

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

    .line 733
    :cond_7
    :goto_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 752
    :cond_8
    :try_start_1
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v5, v5, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mImageView1:Landroid/widget/ImageView;

    const v6, 0x7f020050

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 789
    :catch_0
    move-exception v3

    goto/16 :goto_6

    .line 760
    :cond_9
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v5, v5, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mImageView2:Landroid/widget/ImageView;

    const v6, 0x7f020050

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 768
    :cond_a
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v5, v5, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mImageView3:Landroid/widget/ImageView;

    const v6, 0x7f020050

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 776
    :cond_b
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v5, v5, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mImageView4:Landroid/widget/ImageView;

    const v6, 0x7f020050

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 784
    :cond_c
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mImageView5:Landroid/widget/ImageView;

    const v5, 0x7f020050

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 797
    :cond_d
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText4:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "text"

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 798
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText4:Landroid/widget/TextView;

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

    .line 799
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText4:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 800
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

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

    .line 801
    :cond_e
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText5:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "text"

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 802
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText5:Landroid/widget/TextView;

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

    .line 803
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v3, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText5:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 804
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

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

    .line 809
    :cond_f
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090072

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 810
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090073

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 811
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v7, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$4;

    invoke-direct {v7, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$4;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/video/client/util/AsyncImageLoader;->loadBitmap(ILjava/lang/String;Lcom/meizu/video/client/common/Constant$InterfaceType;Ljava/lang/String;IILcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 823
    if-eqz v0, :cond_10

    .line 824
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v2, v2, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mChanelProgramDetailImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 828
    :cond_10
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    if-nez v0, :cond_11

    .line 829
    new-instance v0, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    .line 831
    :cond_11
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->queryFavoritesByCidAndVid(Lcom/meizu/video/client/ui/entity/FavoriteEntity;)I

    move-result v0

    .line 832
    if-lez v0, :cond_13

    .line 833
    iput-boolean v9, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsFavarite:Z

    .line 834
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mFavorite:Landroid/widget/Button;

    const v1, 0x7f0a0011

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 835
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mFavorite:Landroid/widget/Button;

    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 845
    :cond_12
    :goto_8
    return-void

    .line 837
    :cond_13
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsFavarite:Z

    .line 838
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mFavorite:Landroid/widget/Button;

    const v1, 0x7f0a000a

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mFavorite:Landroid/widget/Button;

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_8

    .line 842
    :cond_14
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailImageIntroduction:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8
.end method

.method private loadSimilarvideo()V
    .locals 18

    .prologue
    .line 981
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    if-eqz v1, :cond_9

    .line 983
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailSimilarvideoImagegroup:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 984
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailSimilarvideoImagegroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 987
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mSimilarVideoListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mSimilarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 988
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getSimilarVideoListEntity()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mSimilarVideoListEntity:Ljava/util/ArrayList;

    .line 991
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mSimilarVideoListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mSimilarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 995
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailSimilarvideo:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailSimilarvideoTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 997
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mConfigDirect:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 998
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0900bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0900c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090114

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0900c0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0900c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f090116

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0900c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0900c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1004
    const/4 v4, 0x4

    .line 1005
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0900cc

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move/from16 v16, v3

    move/from16 v17, v4

    .line 1016
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesTv:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVariety:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1017
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090094

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1019
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailSimilarvideo:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailSimilarvideoTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getSimilarVideoMsgEntity()Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mSimilarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 1023
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mSimilarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    if-eqz v1, :cond_4

    .line 1024
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailSimilarvideoTitle:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mSimilarVideoMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0900bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1028
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0900bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1030
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mSimilarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    move/from16 v0, v17

    if-ge v2, v0, :cond_9

    .line 1031
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mSimilarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;

    .line 1032
    if-eqz v9, :cond_6

    .line 1034
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f04001c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/LinearLayout;

    .line 1037
    const v1, 0x7f0d0055

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/meizu/video/client/common/MaskedImageView;

    .line 1038
    const v1, 0x7f0d0056

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1039
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsisSmall(Z)V

    .line 1041
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

    .line 1042
    invoke-virtual {v15, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1043
    invoke-virtual {v9}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    invoke-virtual {v9}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getImage()Ljava/lang/String;

    move-result-object v5

    .line 1046
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v8, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v10}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$6;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;)V

    invoke-virtual/range {v1 .. v8}, Lcom/meizu/video/client/util/AsyncImageLoader;->loadBitmap(ILjava/lang/String;Lcom/meizu/video/client/common/Constant$InterfaceType;Ljava/lang/String;IILcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1058
    if-eqz v1, :cond_5

    .line 1059
    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1062
    :cond_5
    invoke-virtual {v9}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getCid()Ljava/lang/String;

    move-result-object v11

    .line 1063
    invoke-virtual {v9}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getVid()Ljava/lang/String;

    move-result-object v12

    .line 1064
    invoke-virtual {v9}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getMediaDataType()Ljava/lang/String;

    move-result-object v13

    .line 1065
    invoke-virtual {v9}, Lcom/meizu/video/client/ui/entity/SimilarVideoEntity;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 1066
    new-instance v8, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$7;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1079
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v1, v3, v0, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailSimilarvideoImagegroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1030
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1007
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0900c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0900c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090114

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0900c2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0900c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0900c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0900c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090116

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1013
    const/4 v4, 0x6

    .line 1014
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0900cd

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_0

    .line 1084
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailSimilarvideo:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1088
    :cond_9
    return-void
.end method

.method private loadTextIntroduction()V
    .locals 10

    .prologue
    const v9, 0x7f0a0010

    const v8, 0x7f09008e

    const v7, 0x7f09008d

    const v5, 0x7f09008c

    const/4 v6, 0x0

    .line 851
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getDescriptionMsgEntity()Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v2

    .line 854
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailTextIntroduction:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 855
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailIntroductionTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 856
    iget v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mConfigDirect:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 857
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090086

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090087

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v6, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 860
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 867
    :goto_0
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailTextIntroduction:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailIntroductionTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 870
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    if-eqz v0, :cond_2

    .line 871
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailIntroductionTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    .line 872
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailIntroductionContent:Lcom/meizu/widget/FoldableTextView;

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mShowTextLines:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/meizu/widget/FoldableTextView;->setFolding(ILcom/meizu/widget/FoldableTextView$FoldingListener;)V

    .line 873
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailIntroductionContent:Lcom/meizu/widget/FoldableTextView;

    invoke-virtual {v2}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    :cond_0
    :goto_1
    return-void

    .line 862
    :cond_1
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f09008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v6, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 865
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f09008b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 875
    :cond_2
    const-string v0, ""

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIntro:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 876
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailTextIntroduction:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 878
    :cond_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailIntroductionTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    .line 879
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailIntroductionContent:Lcom/meizu/widget/FoldableTextView;

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mShowTextLines:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/FoldableTextView;->setFolding(ILcom/meizu/widget/FoldableTextView$FoldingListener;)V

    .line 880
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailIntroductionContent:Lcom/meizu/widget/FoldableTextView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIntro:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private onMenuItemSelect(Landroid/view/MenuItem;)V
    .locals 2
    .parameter "mitem"

    .prologue
    .line 2105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 2106
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 2111
    :goto_0
    return-void

    .line 2108
    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setOrGetWifiSetting(Landroid/view/MenuItem;Z)V

    goto :goto_0

    .line 2106
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d01d0
        :pswitch_0
    .end packed-switch
.end method

.method private registerObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2222
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/meizu/video/client/common/Constant$DataSourceUri;->sVideoUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mVideoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2223
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/meizu/video/client/common/Constant$DataSourceUri;->sDownloadUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2224
    return-void
.end method

.method private setOrGetWifiSetting(Landroid/view/MenuItem;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2114
    const-string v0, "onlinesetting"

    invoke-virtual {p0, v0, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2115
    const-string v3, "onlyusewifi"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2116
    if-eqz p2, :cond_2

    .line 2117
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "onlyusewifi"

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2118
    if-nez v3, :cond_1

    :goto_1
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 2122
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 2117
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2118
    goto :goto_1

    .line 2120
    :cond_2
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private unregisterObserver()V
    .locals 2

    .prologue
    .line 2227
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mVideoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2228
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2229
    return-void
.end method


# virtual methods
.method public InitAdapter()V
    .locals 3

    .prologue
    .line 677
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    if-nez v0, :cond_0

    .line 678
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;-><init>(Landroid/content/Context;Lcom/meizu/video/client/util/AsyncImageLoader;I)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    .line 679
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailCommentAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;

    if-nez v0, :cond_1

    .line 682
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    invoke-direct {v0, p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;-><init>(Landroid/content/Context;Lcom/meizu/video/client/util/AsyncImageLoader;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailCommentAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;

    .line 683
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailCommentListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailCommentAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailCommentAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 685
    :cond_1
    return-void
.end method

.method public bindService()V
    .locals 2

    .prologue
    .line 1900
    new-instance v0, Landroid/net/DownloadService;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/DownloadService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mDownloandService:Landroid/net/DownloadService;

    .line 1901
    return-void
.end method

.method public checkDataAndUpdateView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1741
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsLoadBySimilarVideo:Z

    if-eqz v0, :cond_1

    .line 1742
    :cond_0
    iput-boolean v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsLoadBySimilarVideo:Z

    .line 1743
    invoke-static {p0}, Lcom/meizu/video/client/util/CommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1744
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailProgressbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1745
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1746
    invoke-direct {p0, v1, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->initData(II)V

    .line 1754
    :cond_1
    :goto_0
    return-void

    .line 1748
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailProgressbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1749
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mNoNetworkTitle:Landroid/widget/TextView;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1750
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setNoNetWorkStyle()V

    .line 1751
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public checkDownloadAddress()V
    .locals 6

    .prologue
    .line 2025
    const/4 v2, 0x0

    .line 2026
    .local v2, flag:Z
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 2027
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2028
    .local v0, downloadEpisodesListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/EpisodesEntity;>;"
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

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

    .line 2029
    .local v1, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mVideoQualityType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 2030
    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getDownload_address_other()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, ""

    invoke-virtual {v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getDownload_address_other()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2031
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2033
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

    .line 2034
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2038
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

    .line 2039
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2041
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

    .line 2042
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2047
    .end local v1           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :cond_4
    invoke-static {v0}, Lcom/meizu/video/client/common/Constant;->setEpisodesListEntity(Ljava/util/ArrayList;)V

    .line 2048
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 2049
    const/4 v2, 0x1

    .line 2052
    .end local v0           #downloadEpisodesListEntity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/meizu/video/client/ui/entity/EpisodesEntity;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v4, v4, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mDownload:Landroid/widget/Button;

    if-eqz v4, :cond_6

    .line 2053
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v4, v4, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mDownload:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2055
    :cond_6
    iput-boolean v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mHasDownloadAddress:Z

    .line 2056
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->checkFileExistOrDownloading()V

    .line 2057
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

    .line 1777
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

    .line 1778
    if-ne p2, v3, :cond_1

    .line 1779
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mLatest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1780
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mPrev:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1781
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mNext:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1782
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mEarliest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1813
    :cond_0
    :goto_0
    return-void

    .line 1783
    :cond_1
    if-ne p2, v5, :cond_3

    .line 1784
    if-ne p1, v3, :cond_2

    .line 1785
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mLatest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1786
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mPrev:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1787
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mNext:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1788
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mEarliest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    goto :goto_0

    .line 1790
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mLatest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1791
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mPrev:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1792
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mNext:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1793
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mEarliest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    goto :goto_0

    .line 1795
    :cond_3
    if-le p2, v5, :cond_0

    .line 1796
    if-ne p1, v3, :cond_4

    .line 1797
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mLatest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1798
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mPrev:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1799
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mNext:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1800
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mEarliest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    goto :goto_0

    .line 1801
    :cond_4
    if-ne p1, p2, :cond_5

    .line 1802
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mLatest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1803
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mPrev:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1804
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mNext:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1805
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mEarliest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    goto :goto_0

    .line 1807
    :cond_5
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mLatest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1808
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mPrev:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1809
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mNext:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    .line 1810
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mEarliest:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setEnabled(Landroid/widget/Button;Z)V

    goto/16 :goto_0
.end method

.method public destroyBrocast()V
    .locals 1

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1774
    return-void
.end method

.method public downloadVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "url"

    .prologue
    .line 1540
    invoke-static {p0}, Lcom/meizu/video/client/util/CommonUtil;->checkAlertDialogType(Landroid/content/Context;)I

    move-result v0

    .line 1541
    .local v0, aleartDialogType:I
    if-nez v0, :cond_0

    .line 1542
    invoke-virtual {p0, p1, p2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->goToDownloadVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    :goto_0
    return-void

    .line 1544
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->showNetworkAlertDialog(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getConfigurationDirect()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1836
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 1837
    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mConfigDirect:I

    .line 1841
    :goto_0
    return-void

    .line 1839
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mConfigDirect:I

    goto :goto_0
.end method

.method public declared-synchronized getCurrentPageByIndexAndTotal(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x8

    const/4 v2, 0x5

    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 1970
    monitor-enter p0

    .line 1972
    :try_start_0
    const-string v3, "1"

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getStype()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1973
    iget v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mConfigDirect:I

    if-ne v3, v5, :cond_3

    .line 1974
    const/4 v2, 0x4

    .line 1975
    sget-object v3, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1976
    const/4 v0, 0x7

    move v3, v2

    move v2, v0

    .line 1985
    :goto_0
    mul-int v0, v3, v2

    if-gt p2, v0, :cond_4

    move v0, v1

    .line 1993
    :cond_0
    :goto_1
    if-ne v0, v1, :cond_5

    .line 1994
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2019
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    :cond_2
    move v3, v2

    move v2, v0

    .line 1978
    goto :goto_0

    :cond_3
    move v3, v2

    .line 1982
    goto :goto_0

    .line 1988
    :cond_4
    mul-int v0, v3, v2

    sub-int v0, p2, v0

    mul-int v4, v3, v2

    add-int/lit8 v4, v4, -0x4

    :try_start_1
    div-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    .line 1989
    mul-int v4, v3, v2

    sub-int v4, p2, v4

    mul-int v5, v3, v2

    add-int/lit8 v5, v5, -0x4

    rem-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 1990
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1996
    :cond_5
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentPlayIndex:I

    mul-int v4, v3, v2

    add-int/lit8 v4, v4, -0x2

    add-int/lit8 v5, v0, -0x2

    mul-int v6, v3, v2

    add-int/lit8 v6, v6, -0x4

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    if-le v1, v4, :cond_6

    .line 1997
    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1970
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1999
    :cond_6
    :try_start_2
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentPlayIndex:I

    mul-int v1, v3, v2

    add-int/lit8 v1, v1, -0x2

    if-gt v0, v1, :cond_7

    .line 2000
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I

    goto :goto_2

    .line 2002
    :cond_7
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentPlayIndex:I

    mul-int v1, v3, v2

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v0, v1

    mul-int v1, v3, v2

    add-int/lit8 v1, v1, -0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I

    .line 2003
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentPlayIndex:I

    mul-int v1, v3, v2

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v0, v1

    mul-int v1, v3, v2

    add-int/lit8 v1, v1, -0x4

    rem-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2004
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I

    goto :goto_2

    .line 2010
    :cond_8
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mConfigDirect:I

    if-ne v1, v5, :cond_9

    .line 2011
    const/4 v0, 0x6

    .line 2017
    :cond_9
    mul-int/lit8 v0, v0, 0x1

    div-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public getCurrentPlayPage(Z)V
    .locals 8
    .parameter "resetCurrentPage"

    .prologue
    .line 1936
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mPlayHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    if-nez v5, :cond_0

    .line 1937
    new-instance v5, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mPlayHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    .line 1939
    :cond_0
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mPlayHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCid:Ljava/lang/String;

    iget-object v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mVid:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->getCurrentDetailPlayItemVid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1941
    .local v3, itemVid:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1942
    .local v2, index:I
    const/4 v4, 0x0

    .line 1943
    .local v4, total:I
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 1944
    :cond_1
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    invoke-virtual {v5}, Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;->getEpisodesListEntity()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    .line 1945
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/meizu/video/client/common/Constant;->setEpisodesListEntity(Ljava/util/ArrayList;)V

    .line 1947
    :cond_2
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 1948
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1949
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 1950
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 1951
    .local v0, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getVid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1952
    move v2, v1

    .line 1956
    .end local v0           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :cond_3
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setLastPlayPosition(Z)V

    .line 1957
    iget v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mPrePlayIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    iget v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mPrePlayIndex:I

    if-eq v5, v2, :cond_4

    .line 1958
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    iget v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mPrePlayIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setLastPlayPosition(Z)V

    .line 1960
    :cond_4
    iput v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mPrePlayIndex:I

    .line 1961
    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentPlayIndex:I

    .line 1964
    .end local v1           #i:I
    :cond_5
    if-lez v4, :cond_6

    if-eqz p1, :cond_6

    .line 1965
    invoke-virtual {p0, v2, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getCurrentPageByIndexAndTotal(II)V

    .line 1967
    :cond_6
    return-void

    .line 1949
    .restart local v0       #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    .restart local v1       #i:I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
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

    .line 1130
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 1131
    mul-int v1, p1, p2

    .line 1132
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_2

    .line 1133
    iput v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTotalEpisodesPage:I

    .line 1141
    :cond_0
    :goto_0
    iget v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTotalEpisodesPage:I

    if-le p3, v2, :cond_1

    .line 1142
    iget p3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTotalEpisodesPage:I

    .line 1143
    iput p3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I

    .line 1146
    :cond_1
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 1147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    .line 1155
    :goto_1
    iget v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTotalEpisodesPage:I

    if-ne v2, v4, :cond_4

    .line 1156
    if-ne p3, v4, :cond_7

    move v1, v0

    .line 1157
    :goto_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 1159
    :try_start_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1160
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

    .line 1161
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1135
    :cond_2
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v3, v1, -0x4

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTotalEpisodesPage:I

    .line 1136
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v3, v1, -0x4

    rem-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 1137
    iget v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTotalEpisodesPage:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTotalEpisodesPage:I

    goto :goto_0

    .line 1149
    :cond_3
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 1162
    :catch_0
    move-exception v0

    .line 1164
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_3

    .line 1168
    :cond_4
    iget v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTotalEpisodesPage:I

    if-ne v2, v5, :cond_a

    .line 1169
    if-ne p3, v4, :cond_8

    .line 1172
    add-int/lit8 v2, v1, -0x1

    move v1, v0

    .line 1173
    :goto_4
    if-ge v1, v2, :cond_6

    .line 1174
    :try_start_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1175
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

    .line 1176
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_5

    .line 1177
    const-string v3, "..."

    invoke-virtual {v0, v3}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1178
    const-string v3, "1"

    invoke-virtual {v0, v3}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setFlag(Ljava/lang/String;)V

    .line 1180
    :cond_5
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 1183
    :cond_6
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1185
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1284
    :cond_7
    :goto_5
    return-void

    .line 1186
    :catch_1
    move-exception v0

    .line 1187
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_5

    .line 1189
    :cond_8
    if-ne p3, v5, :cond_7

    .line 1191
    :try_start_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1192
    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1193
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    add-int/lit8 v2, v1, -0x3

    .line 1196
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 1197
    :goto_6
    if-ge v1, v3, :cond_7

    .line 1198
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1199
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

    .line 1200
    if-ne v1, v2, :cond_9

    .line 1201
    const-string v4, "..."

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1202
    const-string v4, "0"

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setFlag(Ljava/lang/String;)V

    .line 1204
    :cond_9
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1197
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1206
    :catch_2
    move-exception v0

    .line 1207
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_5

    .line 1212
    :cond_a
    if-ne p3, v4, :cond_d

    .line 1215
    add-int/lit8 v2, v1, -0x1

    move v1, v0

    .line 1216
    :goto_7
    if-ge v1, v2, :cond_c

    .line 1217
    :try_start_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1218
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

    .line 1219
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_b

    .line 1220
    const-string v3, "..."

    invoke-virtual {v0, v3}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1221
    const-string v3, "1"

    invoke-virtual {v0, v3}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setFlag(Ljava/lang/String;)V

    .line 1223
    :cond_b
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1216
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1226
    :cond_c
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1228
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_5

    .line 1229
    :catch_3
    move-exception v0

    .line 1230
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto/16 :goto_5

    .line 1232
    :cond_d
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTotalEpisodesPage:I

    if-ne p3, v0, :cond_f

    .line 1234
    :try_start_4
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1235
    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1236
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    add-int/lit8 v0, p3, -0x1

    add-int/lit8 v1, v1, -0x4

    mul-int/2addr v0, v1

    add-int/lit8 v2, v0, 0x1

    .line 1239
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 1240
    :goto_8
    if-ge v1, v3, :cond_7

    .line 1241
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1242
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

    .line 1243
    if-ne v1, v2, :cond_e

    .line 1244
    const-string v4, "..."

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1245
    const-string v4, "0"

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setFlag(Ljava/lang/String;)V

    .line 1247
    :cond_e
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1240
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 1249
    :catch_4
    move-exception v0

    .line 1250
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto/16 :goto_5

    .line 1254
    :cond_f
    :try_start_5
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1255
    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1256
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    add-int/lit8 v0, p3, -0x1

    add-int/lit8 v2, v1, -0x4

    mul-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    .line 1259
    add-int/lit8 v0, p3, -0x1

    add-int/lit8 v3, v1, -0x4

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x2

    add-int v3, v0, v1

    move v1, v2

    .line 1260
    :goto_9
    if-ge v1, v3, :cond_12

    .line 1261
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1262
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

    .line 1263
    if-ne v1, v2, :cond_10

    .line 1264
    const-string v4, "..."

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1265
    const-string v4, "0"

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setFlag(Ljava/lang/String;)V

    .line 1267
    :cond_10
    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_11

    .line 1268
    const-string v4, "..."

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1269
    const-string v4, "1"

    invoke-virtual {v0, v4}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setFlag(Ljava/lang/String;)V

    .line 1271
    :cond_11
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 1274
    :cond_12
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v0

    .line 1275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->setProgression(Ljava/lang/String;)V

    .line 1276
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_5

    .line 1278
    :catch_5
    move-exception v0

    .line 1279
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
    .line 1297
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 1298
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int v7, p1, p2

    div-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTotalEpisodesPage:I

    .line 1299
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int v7, p1, p2

    rem-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 1300
    iget v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTotalEpisodesPage:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTotalEpisodesPage:I

    .line 1303
    :cond_0
    iget v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTotalEpisodesPage:I

    if-le p3, v6, :cond_1

    .line 1304
    iget p3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTotalEpisodesPage:I

    .line 1305
    iput p3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I

    .line 1308
    :cond_1
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    if-nez v6, :cond_2

    .line 1309
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    .line 1313
    :goto_0
    mul-int v4, p1, p2

    .line 1314
    .local v4, showMaxNum:I
    add-int/lit8 v6, p3, -0x1

    mul-int/2addr v6, v4

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1315
    .local v5, startPosition:I
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1316
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int v7, v5, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1317
    .local v1, endPosition:I
    move v3, v5

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1320
    :try_start_0
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    invoke-virtual {v6}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->clone()Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    move-result-object v2

    .line 1321
    .local v2, episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    .end local v2           #episodesEntity:Lcom/meizu/video/client/ui/entity/EpisodesEntity;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1311
    .end local v1           #endPosition:I
    .end local v3           #i:I
    .end local v4           #showMaxNum:I
    .end local v5           #startPosition:I
    :cond_2
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1322
    .restart local v1       #endPosition:I
    .restart local v3       #i:I
    .restart local v4       #showMaxNum:I
    .restart local v5       #startPosition:I
    :catch_0
    move-exception v0

    .line 1323
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_2

    .line 1329
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

    .line 1816
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 1817
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsHasComment:Z

    if-eqz v0, :cond_0

    .line 1818
    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mShowTextLines:I

    .line 1833
    :goto_0
    return-void

    .line 1820
    :cond_0
    iput v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mShowTextLines:I

    goto :goto_0

    .line 1823
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsHasComment:Z

    if-eqz v0, :cond_2

    .line 1824
    iput v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mShowTextLines:I

    goto :goto_0

    .line 1826
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCid:Ljava/lang/String;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1827
    const/4 v0, 0x5

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mShowTextLines:I

    goto :goto_0

    .line 1829
    :cond_3
    const/4 v0, 0x6

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mShowTextLines:I

    goto :goto_0
.end method

.method public getRemotePlayList()V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0x64

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1647
    .line 1648
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRemoteVideoPlayList:Ljava/util/ArrayList;

    if-nez v1, :cond_6

    .line 1649
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRemoteVideoPlayList:Ljava/util/ArrayList;

    .line 1664
    :cond_0
    :goto_0
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 1666
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentPlayIndex:I

    add-int/lit8 v0, v0, -0x32

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1667
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentPlayIndex:I

    add-int/lit8 v0, v0, 0x32

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1668
    sub-int v3, v0, v1

    if-eq v3, v4, :cond_b

    .line 1669
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_9

    .line 1670
    if-nez v1, :cond_8

    .line 1671
    add-int/lit8 v0, v1, 0x64

    move v8, v0

    move v0, v1

    move v1, v8

    .line 1680
    :goto_1
    iget v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentPlayIndex:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentPlayIndex:I

    .line 1681
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

    const-string v4, " mEpisodesListEntity.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 1682
    :goto_2
    if-ge v2, v1, :cond_a

    .line 1683
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/EpisodesEntity;

    .line 1684
    if-eqz v0, :cond_5

    .line 1685
    new-instance v3, Lcom/android/gallery3d/app/RemoteVideoPlayList;

    invoke-direct {v3}, Lcom/android/gallery3d/app/RemoteVideoPlayList;-><init>()V

    .line 1686
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->setRemoteVideoMediaId(Ljava/lang/String;)V

    .line 1687
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->setRemoteVideoTitle(Ljava/lang/String;)V

    .line 1689
    :try_start_0
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getHead_duration()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mHeadDuration:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1693
    :goto_3
    iget-wide v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mHeadDuration:J

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->setRemoteVideoHeadDuration(J)V

    .line 1695
    :try_start_1
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getTail_duration()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTailDuration:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1699
    :goto_4
    iget-wide v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTailDuration:J

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->setRemoteVideoTailDuration(J)V

    .line 1700
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getPlay_address()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->setRemoteVideoStandardPlayURL(Ljava/lang/String;)V

    .line 1701
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getPlay_address_other()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->setRemoteVideoHignPlayURL(Ljava/lang/String;)V

    .line 1704
    invoke-virtual {v3}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoHignPlayURL()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoHignPlayURL()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1705
    :cond_1
    invoke-virtual {v3}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoStandardPlayURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->setRemoteVideoHignPlayURL(Ljava/lang/String;)V

    .line 1707
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

    .line 1708
    :cond_3
    invoke-virtual {v3}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->getRemoteVideoHignPlayURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->setRemoteVideoStandardPlayURL(Ljava/lang/String;)V

    .line 1711
    :cond_4
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getLmid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->setRemoteVideoStandardMmsid(Ljava/lang/String;)V

    .line 1712
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/EpisodesEntity;->getHmid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->setRemoteVideoHighMmsid(Ljava/lang/String;)V

    .line 1714
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRemoteVideoPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1682
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    .line 1652
    :cond_6
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_7

    .line 1653
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRemoteVideoPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1656
    :cond_7
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRemoteVideoPlayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 1659
    goto/16 :goto_0

    .line 1673
    :cond_8
    add-int/lit8 v1, v0, -0x64

    move v8, v0

    move v0, v1

    move v1, v8

    goto/16 :goto_1

    .line 1677
    :cond_9
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    move v0, v2

    goto/16 :goto_1

    .line 1690
    :catch_0
    move-exception v4

    .line 1691
    iput-wide v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mHeadDuration:J

    goto/16 :goto_3

    .line 1696
    :catch_1
    move-exception v4

    .line 1697
    iput-wide v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTailDuration:J

    goto/16 :goto_4

    .line 1718
    :cond_a
    return-void

    :cond_b
    move v8, v0

    move v0, v1

    move v1, v8

    goto/16 :goto_1
.end method

.method public goToDownloadVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mDownloandService:Landroid/net/DownloadService;

    if-eqz v0, :cond_0

    .line 1615
    :try_start_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mDownloandService:Landroid/net/DownloadService;

    invoke-virtual {v0, p2, p1}, Landroid/net/DownloadService;->downloadByPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mDownload:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1617
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mDownload:Landroid/widget/Button;

    const v1, 0x7f0a001d

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1618
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a000d

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1622
    :cond_0
    :goto_0
    return-void

    .line 1619
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public goToPlayVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1625
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getRemotePlayList()V

    .line 1627
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/app/MovieActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1628
    const-string v1, "remoteVideoIndex"

    iget v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentPlayIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1629
    const-string v1, "remoteVideoCid"

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1630
    const-string v1, "remoteVideoVid"

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mVid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1632
    invoke-static {p0}, Lcom/meizu/video/client/util/CommonUtil;->getWifiSetting(Landroid/content/Context;)Z

    move-result v1

    .line 1633
    const-string v2, "setOnlyWifiUse"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1635
    const-string v1, "remoteVideoPalyList"

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRemoteVideoPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1637
    const-string v1, "video_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1638
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1640
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1641
    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9A334 Safari/7534.48.3"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    const-string v2, "http_headers"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1643
    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1644
    return-void
.end method

.method public initListeners()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mLatest:Landroid/widget/Button;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mPrev:Landroid/widget/Button;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mNext:Landroid/widget/Button;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesViewHoder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$EpisodesViewHolder;->mEarliest:Landroid/widget/Button;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$1;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 495
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    new-instance v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$2;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 517
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailCommentOther:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mDownload:Landroid/widget/Button;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mFavorite:Landroid/widget/Button;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
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

    .line 1722
    packed-switch p1, :pswitch_data_0

    .line 1738
    :cond_0
    :goto_0
    return-void

    .line 1724
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1725
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1726
    const-string v1, "selectdownNum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1727
    const-string v1, "selectdownNum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1728
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

    .line 1729
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

    .line 1722
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 347
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 352
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setTopAndBottomHeight()V

    .line 354
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getConfigurationDirect()V

    .line 355
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setImageIntroductionSpace()V

    .line 356
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getIntroductionShowLines()V

    .line 358
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsLoading:Z

    if-nez v0, :cond_1

    .line 359
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadTextIntroduction()V

    .line 360
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mPrePlayIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 361
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mPrePlayIndex:I

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getCurrentPageByIndexAndTotal(II)V

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadEpisodes()V

    .line 364
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadSimilarvideo()V

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 368
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setNoNetWorkStyle()V

    .line 371
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 236
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 238
    const v1, 0x7f04001a

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setContentView(I)V

    .line 239
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    .line 240
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 241
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getDataFromBundle(Landroid/os/Bundle;)V

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->initView()V

    .line 245
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->initListeners()V

    .line 246
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->bindService()V

    .line 248
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mBar:Landroid/app/ActionBar;

    .line 249
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->useMzTitleLayout(Z)V

    .line 250
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setEnabledBackWhenOverlay(Z)V

    .line 252
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mBar:Landroid/app/ActionBar;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 253
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 257
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->setTopAndBottomHeight()V

    .line 259
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    if-nez v1, :cond_1

    .line 260
    new-instance v1, Lcom/meizu/video/client/util/AsyncImageLoader;

    invoke-direct {v1}, Lcom/meizu/video/client/util/AsyncImageLoader;-><init>()V

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mAsyncImageLoader:Lcom/meizu/video/client/util/AsyncImageLoader;

    .line 263
    :cond_1
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->registerObserver()V

    .line 265
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 2075
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2076
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110017

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2077
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 273
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailListEntity:Ljava/util/ArrayList;

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    if-eqz v0, :cond_1

    .line 276
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEntity:Lcom/meizu/video/client/ui/entity/ChanelProgramDetailEntity;

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 280
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 284
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRemoteVideoPlayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 287
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRemoteVideoPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 288
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRemoteVideoPlayList:Ljava/util/ArrayList;

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mLableListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 291
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mLableListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 292
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mLableListEntity:Ljava/util/ArrayList;

    .line 294
    :cond_5
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mSimilarVideoListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 295
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mSimilarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 296
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mSimilarVideoListEntity:Ljava/util/ArrayList;

    .line 298
    :cond_6
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    if-eqz v0, :cond_7

    .line 299
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mFavoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    invoke-virtual {v0}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->close()V

    .line 301
    :cond_7
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mPlayHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    if-eqz v0, :cond_8

    .line 302
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mPlayHistoryDBHelper:Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;

    invoke-virtual {v0}, Lcom/meizu/video/client/db/dbhelper/PlayHistoryDBHelper;->close()V

    .line 304
    :cond_8
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mLoader:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mLoader:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_9

    .line 305
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mLoader:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$LoadChanelProgramDetailTask;->cancel(Z)Z

    .line 308
    :cond_9
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->unBindService()V

    .line 310
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->unregisterObserver()V

    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 313
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 2094
    move-object v0, p1

    .line 2095
    .local v0, mitem:Landroid/view/MenuItem;
    new-instance v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$11;

    invoke-direct {v1, p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$11;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Landroid/view/MenuItem;)V

    .line 2100
    .local v1, r:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2101
    const/4 v2, 0x1

    return v2
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 318
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->destroyBrocast()V

    .line 319
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 2082
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2083
    const v0, 0x7f0d01d0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2084
    new-instance v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$10;

    invoke-direct {v1, p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$10;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Landroid/view/MenuItem;)V

    .line 2089
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2090
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->reLoadPage()V

    .line 326
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->registerBrocast()V

    .line 327
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 328
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 332
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 333
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 337
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 338
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 342
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 343
    return-void
.end method

.method public playVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "url"

    .prologue
    .line 1530
    invoke-static {p0}, Lcom/meizu/video/client/util/CommonUtil;->checkAlertDialogType(Landroid/content/Context;)I

    move-result v0

    .line 1531
    .local v0, aleartDialogType:I
    if-nez v0, :cond_0

    .line 1532
    invoke-virtual {p0, p1, p2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->goToPlayVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    :goto_0
    return-void

    .line 1534
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->showNetworkAlertDialog(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public reLoadPage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x8

    .line 1858
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mIsLoadBySimilarVideo:Z

    if-eqz v0, :cond_7

    .line 1859
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailContentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1860
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText2LinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1861
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1862
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1863
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mViewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    iget-object v0, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->mLabelText5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1864
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1865
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1867
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1868
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1870
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mSimilarVideoListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1871
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mSimilarVideoListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1873
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRemoteVideoPlayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1874
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRemoteVideoPlayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1876
    :cond_3
    iput v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I

    .line 1877
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mPrePlayIndex:I

    .line 1886
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramName:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1887
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1889
    :cond_5
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelName:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1890
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1893
    :cond_6
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getIntroductionShowLines()V

    .line 1894
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->checkDataAndUpdateView()V

    .line 1895
    return-void

    .line 1879
    :cond_7
    invoke-virtual {p0, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getCurrentPlayPage(Z)V

    .line 1880
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadEpisodes()V

    .line 1881
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mVideoDataChange:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mDownloadDataChange:Z

    if-eqz v0, :cond_4

    .line 1882
    :cond_8
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->checkFileExistOrDownloading()V

    goto :goto_0
.end method

.method public registerBrocast()V
    .locals 2

    .prologue
    .line 1767
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1768
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1769
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1770
    return-void
.end method

.method public setEnabled(Landroid/widget/Button;Z)V
    .locals 0
    .parameter "button"
    .parameter "flag"

    .prologue
    .line 1908
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1909
    return-void
.end method

.method public setImageIntroductionSpace()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1844
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailImageIntroduction:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1845
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mConfigDirect:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1846
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090078

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1854
    :goto_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailImageIntroduction:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1855
    return-void

    .line 1850
    :cond_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f09007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f09007b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public setNoNetWorkStyle()V
    .locals 4

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x0

    .line 2060
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 2061
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    .line 2063
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2064
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2065
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2069
    :goto_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mNoNetworkImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2070
    return-void

    .line 2067
    :cond_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public setTopAndBottomHeight()V
    .locals 6

    .prologue
    const v5, 0x7f090076

    const/4 v4, 0x0

    .line 1912
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailTopSpace:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1913
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailBottomSpace:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1914
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1915
    sget v2, Lcom/meizu/video/client/common/Constant;->actionBarSmallHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1916
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1925
    :goto_0
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailTopSpace:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1926
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailBottomSpace:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1927
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailTopSpace:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1928
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailBottomSpace:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1929
    return-void

    .line 1918
    :cond_0
    sget v2, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1919
    sget-object v2, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1920
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1922
    :cond_1
    sget v2, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public showEpisodesTVPartListView()V
    .locals 8

    .prologue
    const v7, 0x7f0900ae

    const v5, 0x7f090094

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1468
    .line 1471
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1472
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mConfigDirect:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1473
    const/4 v2, 0x4

    .line 1474
    sget-object v1, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1475
    const/4 v1, 0x7

    .line 1479
    :goto_0
    iget v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getEpisodesShowTVList(IIII)V

    .line 1481
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/2addr v2, v1

    .line 1482
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v3, v1

    if-eqz v3, :cond_0

    .line 1483
    add-int/lit8 v2, v2, 0x1

    .line 1485
    :cond_0
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1486
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0900b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 1487
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0900b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 1489
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0900b7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0900b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0900b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1493
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0900ba

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/2addr v1, v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0900b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v2, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1519
    :goto_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1521
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->InitAdapter()V

    .line 1522
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1523
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->setFreshType(I)V

    .line 1524
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->setEpisodesList(Ljava/util/ArrayList;)V

    .line 1525
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->notifyDataSetChanged()V

    .line 1526
    return-void

    .line 1477
    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_0

    .line 1499
    :cond_2
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I

    invoke-virtual {p0, v3, v3, v1, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getEpisodesShowTVList(IIII)V

    .line 1501
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v1, v3

    .line 1502
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 1503
    add-int/lit8 v1, v1, 0x1

    .line 1506
    :cond_3
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1507
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 1508
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelProgramDetailEpisodesGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0900af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 1510
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0900b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0900ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0900b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1514
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0900ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v2, v1

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v1, v3

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1
.end method

.method public showEpisodesVarietyPartListView()V
    .locals 14

    .prologue
    const v13, 0x7f090094

    const/16 v5, 0x8

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1422
    .line 1423
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVariety:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1425
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVarietyTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1427
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1429
    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVarietyOperation:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1431
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v12, :cond_0

    .line 1432
    const/4 v4, 0x6

    .line 1433
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f090099

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f09009d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f09009a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f09009e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0, v6, v10, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1434
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f090096

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f09009f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1435
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0900a6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget v7, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0900a7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget v9, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1442
    :goto_0
    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVariety:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1443
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVarietyTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1445
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVarietyOperation:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1447
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I

    invoke-virtual {p0, v4, v11, v0, v12}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->getEpisodesShowVarietyList(IIII)V

    .line 1449
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09009b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f09009c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/2addr v0, v1

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1450
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09009c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1451
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVarietyListview:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1453
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->InitAdapter()V

    .line 1454
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    invoke-virtual {v0, v11}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->setFreshType(I)V

    .line 1455
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mEpisodesShowListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->setEpisodesList(Ljava/util/ArrayList;)V

    .line 1456
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChannelProgramDetailEpisodesAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailEpisodesAdapter;->notifyDataSetChanged()V

    .line 1458
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTotalEpisodesPage:I

    if-gt v0, v11, :cond_1

    .line 1459
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVarietyOperation:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1465
    :goto_1
    return-void

    .line 1438
    :cond_0
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f090097

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f09009d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f090098

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f09009e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v4, v10, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1439
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f090095

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f09009f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v4, v6

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1440
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0900a4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v7, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0900a5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget v8, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    move v4, v5

    goto/16 :goto_0

    .line 1461
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mChanelprogramdetailEpisodesVarietyOperation:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1462
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mCurrentEpisodesPage:I

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mTotalEpisodesPage:I

    invoke-virtual {p0, v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->controlVarietyButtonView(II)V

    goto :goto_1
.end method

.method public showNetworkAlertDialog(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x7f0a000e

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1550
    new-instance v6, Landroid/app/AlertDialog$Builder;

    const v0, 0x1030323

    invoke-direct {v6, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1551
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$NetworkDialogListener;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$NetworkDialogListener;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1552
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1553
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1554
    const v1, 0x7f0a0145

    invoke-virtual {v6, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1555
    if-ne p1, v7, :cond_0

    .line 1556
    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1571
    :goto_0
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1572
    return-void

    .line 1557
    :cond_0
    if-ne p1, v8, :cond_1

    .line 1558
    const v0, 0x7f0a001a

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1559
    const v0, 0x7f0a001b

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1560
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 1561
    if-ne p4, v7, :cond_3

    .line 1562
    const v1, 0x7f0a001c

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1567
    :cond_2
    :goto_1
    const v1, 0x7f0a0153

    invoke-virtual {v6, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1563
    :cond_3
    if-ne p4, v8, :cond_2

    .line 1564
    const v1, 0x7f0a001e

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1565
    const v1, 0x7f0a001f

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1569
    :cond_4
    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public unBindService()V
    .locals 1

    .prologue
    .line 1904
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->mDownloandService:Landroid/net/DownloadService;

    .line 1905
    return-void
.end method

.class public Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;
.super Landroid/app/Fragment;
.source "ChanelDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;
    }
.end annotation


# instance fields
.field private final FRESH_CURRENT_PAGE:I

.field private final FRESH_CURRENT_PAGE_BY_ROTATION_SCREEN:I

.field private TAG:Ljava/lang/String;

.field private mActionbarTopBottomBg:Landroid/widget/FrameLayout;

.field private mChanelDetailGridview:Landroid/widget/GridView;

.field private mChanelDetailProgressbarLayout:Landroid/widget/LinearLayout;

.field private mChanelId:Ljava/lang/String;

.field private mChanelName:Ljava/lang/String;

.field private mChannelDetailAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

.field private mChannelDetailListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelDetailListPartEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelType:I

.field private mCurrentChannelDetailPage:I

.field mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private mListIsScrollBottom:Z

.field private mLoader:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;

.field private mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

.field private mNoAvailableNetwork:Landroid/widget/LinearLayout;

.field private mNoNetworkImage:Landroid/widget/ImageView;

.field private mNoNetworkTitle:Landroid/widget/TextView;

.field private mOldTotalPage:I

.field private mOrderby:Ljava/lang/String;

.field private mRes:Landroid/content/res/Resources;

.field private mTotalNum:I

.field private mTotalPage:I

.field private mTypeTitemListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/LableEntity;",
            ">;"
        }
    .end annotation
.end field

.field onChanelDetailScroll:Landroid/widget/AbsListView$OnScrollListener;

.field onchanelListItemClick:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 48
    const-string v0, "ChanelDetailFragment"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->TAG:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListEntity:Ljava/util/ArrayList;

    .line 62
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListPartEntity:Ljava/util/ArrayList;

    .line 63
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 65
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    .line 67
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mTypeTitemListEntity:Ljava/util/ArrayList;

    .line 69
    iput v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelType:I

    .line 73
    const-string v0, "date"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mOrderby:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelName:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelId:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mListIsScrollBottom:Z

    .line 79
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mIsLoading:Z

    .line 81
    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mTotalNum:I

    .line 82
    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mTotalPage:I

    .line 83
    iput v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mCurrentChannelDetailPage:I

    .line 84
    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mOldTotalPage:I

    .line 86
    iput v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->FRESH_CURRENT_PAGE:I

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->FRESH_CURRENT_PAGE_BY_ROTATION_SCREEN:I

    .line 282
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mHandler:Landroid/os/Handler;

    .line 351
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$2;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->onChanelDetailScroll:Landroid/widget/AbsListView$OnScrollListener;

    .line 380
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$3;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->onchanelListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListPartEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$102(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListPartEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailProgressbarLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mNoNetworkTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mListIsScrollBottom:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mListIsScrollBottom:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->initData(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mOrderby:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mCurrentChannelDetailPage:I

    return v0
.end method

.method static synthetic access$508(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mCurrentChannelDetailPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mCurrentChannelDetailPage:I

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelType:I

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mTotalNum:I

    return v0
.end method

.method static synthetic access$702(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mTotalNum:I

    return p1
.end method

.method static synthetic access$800(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mTotalPage:I

    return v0
.end method

.method static synthetic access$802(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mTotalPage:I

    return p1
.end method

.method static synthetic access$808(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mTotalPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mTotalPage:I

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mOldTotalPage:I

    return v0
.end method

.method static synthetic access$902(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mOldTotalPage:I

    return p1
.end method

.method private getDataFromBundle()V
    .locals 2

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 337
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "chanelName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    const-string v1, "chanelName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelName:Ljava/lang/String;

    .line 340
    :cond_0
    const-string v1, "chanelId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    const-string v1, "chanelId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelId:Ljava/lang/String;

    .line 343
    :cond_1
    const-string v1, "orderby"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    const-string v1, "orderby"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mOrderby:Ljava/lang/String;

    .line 346
    :cond_2
    const-string v1, "channelType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 347
    const-string v1, "channelType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelType:I

    .line 349
    :cond_3
    return-void
.end method

.method private initData(I)V
    .locals 4
    .parameter "freshType"

    .prologue
    const/4 v3, 0x1

    .line 210
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mIsLoading:Z

    if-nez v0, :cond_0

    .line 211
    iput-boolean v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mIsLoading:Z

    .line 212
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mLoader:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;

    .line 213
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mLoader:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 215
    :cond_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 179
    const v1, 0x7f0d00a0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailProgressbarLayout:Landroid/widget/LinearLayout;

    .line 180
    const v1, 0x7f0d00ed

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    .line 181
    const v1, 0x7f0d00ee

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mNoNetworkImage:Landroid/widget/ImageView;

    .line 183
    const v1, 0x7f0d00ef

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mNoNetworkTitle:Landroid/widget/TextView;

    .line 185
    const v1, 0x7f0d002c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailGridview:Landroid/widget/GridView;

    .line 187
    const v1, 0x7f0d001d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mActionbarTopBottomBg:Landroid/widget/FrameLayout;

    .line 189
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailGridview:Landroid/widget/GridView;

    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 191
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->setChannelDetailGridViewSpacing()V

    .line 194
    new-instance v0, Lcom/meizu/video/client/common/LoadingMoreFootView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/video/client/common/LoadingMoreFootView;-><init>(Landroid/content/Context;)V

    .line 195
    .local v0, footView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->InitAdapter()V

    .line 196
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    invoke-virtual {v1, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->setFooterView(Landroid/view/View;)V

    .line 197
    return-void
.end method


# virtual methods
.method public InitAdapter()V
    .locals 5

    .prologue
    .line 329
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListEntity:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailGridview:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/GridView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    .line 331
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 333
    :cond_0
    return-void
.end method

.method public checkDataAndUpdateView()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 404
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->TAG:Ljava/lang/String;

    const-string v1, "checkDataAndUpdateView -> getActivity() is null !"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_1
    :goto_0
    return-void

    .line 409
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/video/client/util/CommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 410
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailProgressbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 412
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->initData(I)V

    goto :goto_0

    .line 414
    :cond_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailProgressbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mNoNetworkTitle:Landroid/widget/TextView;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 416
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->setNoNetWorkStyle()V

    .line 417
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public initListeners()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailGridview:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->onChanelDetailScroll:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 202
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->onchanelListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 204
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x2

    .line 161
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 162
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->TAG:Ljava/lang/String;

    const-string v1, " onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->setChannelDetailGridViewSpacing()V

    .line 165
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->setNoNetWorkStyle()V

    .line 172
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 98
    const v1, 0x7f040011

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, channelDetailView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    .line 100
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getDataFromBundle()V

    .line 101
    invoke-direct {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->initView(Landroid/view/View;)V

    .line 102
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->initListeners()V

    .line 104
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 109
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListEntity:Ljava/util/ArrayList;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListPartEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListPartEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListPartEntity:Ljava/util/ArrayList;

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mTypeTitemListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mTypeTitemListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 119
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mTypeTitemListEntity:Ljava/util/ArrayList;

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mLoader:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mLoader:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_3

    .line 123
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mLoader:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->cancel(Z)Z

    .line 126
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 130
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 133
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChannelDetailListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/video/client/util/CommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailProgressbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    invoke-direct {p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->initData(I)V

    .line 149
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailProgressbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mNoNetworkTitle:Landroid/widget/TextView;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 142
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->setNoNetWorkStyle()V

    .line 143
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 153
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 157
    return-void
.end method

.method public setChannelDetailGridViewSpacing()V
    .locals 8

    .prologue
    const v7, 0x7f090058

    const v5, 0x7f090057

    const/4 v2, 0x2

    const/4 v6, 0x0

    .line 423
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mActionbarTopBottomBg:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 427
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 428
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    .line 429
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailGridview:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 430
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090062

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 431
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 432
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setDockingBottom(I)V

    .line 434
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/meizu/video/client/common/Constant;->actionBarSmallHeight:I

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090061

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 436
    sget v1, Lcom/meizu/video/client/common/Constant;->actionBarSmallHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 447
    :goto_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mActionbarTopBottomBg:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    return-void

    .line 438
    :cond_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailGridview:Landroid/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 439
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 440
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 441
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailGridview:Landroid/widget/GridView;

    sget v2, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setDockingBottom(I)V

    .line 443
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mChanelDetailGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f09005d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 445
    sget v1, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setNoNetWorkStyle()V
    .locals 4

    .prologue
    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 452
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    .line 455
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 456
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 457
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 461
    :goto_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mNoNetworkImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    return-void

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

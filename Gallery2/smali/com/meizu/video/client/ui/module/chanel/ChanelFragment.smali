.class public Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;
.super Landroid/app/Fragment;
.source "ChanelFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;
    }
.end annotation


# instance fields
.field private final FRESH_CURRENT_PAGE:I

.field private final FRESH_CURRENT_PAGE_BY_ROTATION_SCREEN:I

.field private TAG:Ljava/lang/String;

.field private mActionbarTopBottomBg:Landroid/widget/FrameLayout;

.field private mChanelWhole:Landroid/widget/FrameLayout;

.field private mChannelAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

.field private mChannelGridview:Landroid/widget/GridView;

.field private mChannelListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelProgressbarLayout:Landroid/widget/LinearLayout;

.field private mCustomView:Landroid/view/View;

.field mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private mLoader:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;

.field private mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

.field private mNoAvailableNetwork:Landroid/widget/LinearLayout;

.field private mNoNetworkImage:Landroid/widget/ImageView;

.field private mNoNetworkTitle:Landroid/widget/TextView;

.field private mRes:Landroid/content/res/Resources;

.field private mTypeMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    const-string v0, "ChanelFragment"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->TAG:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;

    .line 62
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 63
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mTypeMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 64
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->FRESH_CURRENT_PAGE:I

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->FRESH_CURRENT_PAGE_BY_ROTATION_SCREEN:I

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mIsLoading:Z

    .line 292
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mTypeMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object v0
.end method

.method static synthetic access$402(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mTypeMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object p1
.end method

.method static synthetic access$502(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$600(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelProgressbarLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mNoNetworkTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initData()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 223
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mIsLoading:Z

    if-nez v0, :cond_0

    .line 224
    iput-boolean v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mIsLoading:Z

    .line 225
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$1;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mLoader:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;

    .line 226
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mLoader:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 228
    :cond_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 172
    const v0, 0x7f0d001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelGridview:Landroid/widget/GridView;

    .line 173
    const v0, 0x7f0d001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mActionbarTopBottomBg:Landroid/widget/FrameLayout;

    .line 175
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelGridview:Landroid/widget/GridView;

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(I)V

    .line 177
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->setChannelGridViewSpacing()V

    .line 179
    const v0, 0x7f0d00a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelProgressbarLayout:Landroid/widget/LinearLayout;

    .line 181
    const v0, 0x7f0d00ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    .line 182
    const v0, 0x7f0d00ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mNoNetworkImage:Landroid/widget/ImageView;

    .line 184
    const v0, 0x7f0d00ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mNoNetworkTitle:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f0d001c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChanelWhole:Landroid/widget/FrameLayout;

    .line 188
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040070

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mCustomView:Landroid/view/View;

    .line 190
    return-void
.end method


# virtual methods
.method public InitAdapter()V
    .locals 4

    .prologue
    .line 331
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelGridview:Landroid/widget/GridView;

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/GridView;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    .line 333
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 334
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelGridview:Landroid/widget/GridView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 336
    :cond_0
    return-void
.end method

.method public checkDataAndUpdateView()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 360
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/video/client/util/CommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelProgressbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->initData()V

    .line 372
    :cond_1
    :goto_0
    return-void

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelProgressbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mNoNetworkTitle:Landroid/widget/TextView;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 368
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->setNoNetWorkStyle()V

    .line 369
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public initListeners()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelGridview:Landroid/widget/GridView;

    new-instance v1, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$1;

    invoke-direct {v1, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$1;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 217
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x2

    .line 151
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 153
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/VideoGallery;

    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getmSelectedPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/VideoGallery;

    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getTabChannel()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->setActionBar()V

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->setChannelGridViewSpacing()V

    .line 158
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->setNoNetWorkStyle()V

    .line 165
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 162
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 87
    const v1, 0x7f04000f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, channelView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    .line 89
    invoke-direct {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->initView(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->initListeners()V

    .line 91
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->setActionBar()V

    .line 92
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mLoader:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mLoader:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mLoader:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->cancel(Z)Z

    .line 107
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 108
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 120
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getOrderTypeAreaYearOrderListEntity()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getOrderTypeAreaYearOrderListEntity()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/video/client/util/CommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelProgressbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->initData()V

    .line 137
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelProgressbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mNoNetworkTitle:Landroid/widget/TextView;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->setNoNetWorkStyle()V

    .line 129
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 142
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 147
    return-void
.end method

.method public setActionBar()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 343
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getmActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 345
    .local v0, bar:Landroid/app/ActionBar;
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 346
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 347
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 349
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 351
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mCustomView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0
.end method

.method public setChannelGridViewSpacing()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f090055

    const v5, 0x7f090053

    .line 388
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mActionbarTopBottomBg:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 392
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 393
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 394
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelGridview:Landroid/widget/GridView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 396
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setDockingBottom(I)V

    .line 397
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 398
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 402
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lcom/meizu/video/client/common/Constant;->actionBarSmallHeight:I

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f09003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4, v7}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 404
    sget v1, Lcom/meizu/video/client/common/Constant;->actionBarSmallHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 418
    :goto_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mActionbarTopBottomBg:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    return-void

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelGridview:Landroid/widget/GridView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 408
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelGridview:Landroid/widget/GridView;

    sget v2, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setDockingBottom(I)V

    .line 409
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 410
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 414
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mChannelGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4, v7}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 416
    sget v1, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setNoNetWorkStyle()V
    .locals 4

    .prologue
    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 422
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    .line 425
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 426
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 427
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 431
    :goto_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mNoNetworkImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    return-void

    .line 429
    :cond_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

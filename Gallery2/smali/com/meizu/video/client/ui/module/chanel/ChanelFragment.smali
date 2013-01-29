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

.field private chanel_whole:Landroid/widget/RelativeLayout;

.field private channelAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

.field private channelGridview:Landroid/widget/GridView;

.field private channelListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelEntity;",
            ">;"
        }
    .end annotation
.end field

.field private channel_progressbar_layout:Landroid/widget/LinearLayout;

.field handler:Landroid/os/Handler;

.field private isLoading:Z

.field private loader:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;

.field private mCustomView:Landroid/view/View;

.field private msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

.field private no_available_network:Landroid/widget/LinearLayout;

.field private no_network_image:Landroid/widget/ImageView;

.field private no_network_title:Landroid/widget/TextView;

.field private typeMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 46
    const-string v0, "ChanelFragment"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->TAG:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelListEntity:Ljava/util/ArrayList;

    .line 59
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 60
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->typeMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 61
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->FRESH_CURRENT_PAGE:I

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->FRESH_CURRENT_PAGE_BY_ROTATION_SCREEN:I

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->isLoading:Z

    .line 271
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$2;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->typeMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object v0
.end method

.method static synthetic access$402(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->typeMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object p1
.end method

.method static synthetic access$502(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->isLoading:Z

    return p1
.end method

.method static synthetic access$600(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channel_progressbar_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->no_network_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->no_available_network:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initData()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 202
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->isLoading:Z

    if-nez v0, :cond_0

    .line 203
    iput-boolean v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->isLoading:Z

    .line 204
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$1;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->loader:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;

    .line 205
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->loader:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    :cond_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 155
    const v0, 0x7f0d001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelGridview:Landroid/widget/GridView;

    .line 157
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->setChannelGridViewSpacing()V

    .line 159
    const v0, 0x7f0d009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channel_progressbar_layout:Landroid/widget/LinearLayout;

    .line 161
    const v0, 0x7f0d00eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->no_available_network:Landroid/widget/LinearLayout;

    .line 162
    const v0, 0x7f0d00ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->no_network_image:Landroid/widget/ImageView;

    .line 163
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->no_network_image:Landroid/widget/ImageView;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    const v0, 0x7f0d00ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->no_network_title:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f0d0019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->chanel_whole:Landroid/widget/RelativeLayout;

    .line 168
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mCustomView:Landroid/view/View;

    .line 169
    return-void
.end method


# virtual methods
.method public InitAdapter()V
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelListEntity:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelGridview:Landroid/widget/GridView;

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/GridView;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    .line 308
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 309
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelGridview:Landroid/widget/GridView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 311
    :cond_0
    return-void
.end method

.method public checkDataAndUpdateView()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 335
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/video/client/util/CommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channel_progressbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->no_available_network:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->initData()V

    .line 346
    :cond_1
    :goto_0
    return-void

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channel_progressbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->no_network_title:Landroid/widget/TextView;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 343
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->no_available_network:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public initListeners()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelGridview:Landroid/widget/GridView;

    new-instance v1, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$1;

    invoke-direct {v1, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$1;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 196
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x2

    .line 142
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 144
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->setChannelGridViewSpacing()V

    .line 146
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 148
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 80
    const v1, 0x7f04000d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, channelView:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->initView(Landroid/view/View;)V

    .line 82
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->initListeners()V

    .line 83
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->setActionBar()V

    .line 84
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelListEntity:Ljava/util/ArrayList;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->loader:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->loader:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->loader:Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment$LoadChanelListTask;->cancel(Z)Z

    .line 99
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 100
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 105
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelListEntity:Ljava/util/ArrayList;

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

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/video/client/util/CommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channel_progressbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->no_available_network:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->initData()V

    .line 128
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channel_progressbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->no_network_title:Landroid/widget/TextView;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->no_available_network:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 133
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 138
    return-void
.end method

.method public setActionBar()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 318
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getmActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 320
    .local v0, bar:Landroid/app/ActionBar;
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 321
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 322
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 324
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 326
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->mCustomView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0
.end method

.method public setChannelGridViewSpacing()V
    .locals 6

    .prologue
    const/16 v5, 0x28

    const/16 v4, 0x1c

    const/4 v3, 0x0

    .line 360
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelGridview:Landroid/widget/GridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 363
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 364
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setDockingBottom(I)V

    .line 365
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 366
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide v2, 0x404d400000000000L

    invoke-static {v1, v2, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 376
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelGridview:Landroid/widget/GridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 370
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 371
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x62

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setDockingBottom(I)V

    .line 372
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 373
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->channelGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    goto :goto_0
.end method

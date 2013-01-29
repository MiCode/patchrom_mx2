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

.field private chanelDetailGridview:Landroid/widget/GridView;

.field private chanelDetail_progressbar_layout:Landroid/widget/LinearLayout;

.field private chanelId:Ljava/lang/String;

.field private chanelName:Ljava/lang/String;

.field private channelDetailAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

.field private channelDetailListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;",
            ">;"
        }
    .end annotation
.end field

.field private channelDetailListPartEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/ChanelDetailEntity;",
            ">;"
        }
    .end annotation
.end field

.field private channelType:I

.field private currentChannelDetailPage:I

.field handler:Landroid/os/Handler;

.field private isLoading:Z

.field private listCurrentIndex:I

.field private listIsScrollBottom:Z

.field private loader:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;

.field private mOldTotalPage:I

.field private msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

.field private no_available_network:Landroid/widget/LinearLayout;

.field private no_network_image:Landroid/widget/ImageView;

.field private no_network_title:Landroid/widget/TextView;

.field onChanelDetailScroll:Landroid/widget/AbsListView$OnScrollListener;

.field onchanelListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private orderby:Ljava/lang/String;

.field private totalNum:I

.field private totalPage:I

.field private typeTitemListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/LableEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 44
    const-string v0, "ChanelDetailFragment"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->TAG:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListEntity:Ljava/util/ArrayList;

    .line 58
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListPartEntity:Ljava/util/ArrayList;

    .line 59
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 61
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    .line 63
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->typeTitemListEntity:Ljava/util/ArrayList;

    .line 65
    iput v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelType:I

    .line 69
    const-string v0, "date"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->orderby:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelName:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelId:Ljava/lang/String;

    .line 74
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->listIsScrollBottom:Z

    .line 75
    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->listCurrentIndex:I

    .line 76
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->isLoading:Z

    .line 78
    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->totalNum:I

    .line 79
    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->totalPage:I

    .line 80
    iput v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->currentChannelDetailPage:I

    .line 81
    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mOldTotalPage:I

    .line 83
    iput v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->FRESH_CURRENT_PAGE:I

    .line 85
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->FRESH_CURRENT_PAGE_BY_ROTATION_SCREEN:I

    .line 268
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->handler:Landroid/os/Handler;

    .line 332
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$2;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->onChanelDetailScroll:Landroid/widget/AbsListView$OnScrollListener;

    .line 364
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$3;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->onchanelListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListPartEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$102(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListPartEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetail_progressbar_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->isLoading:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->isLoading:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->no_network_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->no_available_network:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->listIsScrollBottom:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->listIsScrollBottom:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->initData(I)V

    return-void
.end method

.method static synthetic access$1802(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->listCurrentIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->orderby:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->currentChannelDetailPage:I

    return v0
.end method

.method static synthetic access$508(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->currentChannelDetailPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->currentChannelDetailPage:I

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelType:I

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->totalNum:I

    return v0
.end method

.method static synthetic access$702(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->totalNum:I

    return p1
.end method

.method static synthetic access$800(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->totalPage:I

    return v0
.end method

.method static synthetic access$802(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->totalPage:I

    return p1
.end method

.method static synthetic access$808(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->totalPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->totalPage:I

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mOldTotalPage:I

    return v0
.end method

.method static synthetic access$902(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->mOldTotalPage:I

    return p1
.end method

.method private getDataFromBundle()V
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 318
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "chanelName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    const-string v1, "chanelName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelName:Ljava/lang/String;

    .line 321
    :cond_0
    const-string v1, "chanelId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    const-string v1, "chanelId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelId:Ljava/lang/String;

    .line 324
    :cond_1
    const-string v1, "orderby"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 325
    const-string v1, "orderby"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->orderby:Ljava/lang/String;

    .line 327
    :cond_2
    const-string v1, "channelType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    const-string v1, "channelType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelType:I

    .line 330
    :cond_3
    return-void
.end method

.method private initData(I)V
    .locals 4
    .parameter "freshType"

    .prologue
    const/4 v3, 0x1

    .line 196
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->isLoading:Z

    if-nez v0, :cond_0

    .line 197
    iput-boolean v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->isLoading:Z

    .line 198
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$1;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->loader:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;

    .line 199
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->loader:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 201
    :cond_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 167
    const v1, 0x7f0d009b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetail_progressbar_layout:Landroid/widget/LinearLayout;

    .line 168
    const v1, 0x7f0d00eb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->no_available_network:Landroid/widget/LinearLayout;

    .line 169
    const v1, 0x7f0d00ec

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->no_network_image:Landroid/widget/ImageView;

    .line 170
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->no_network_image:Landroid/widget/ImageView;

    const v2, 0x7f0200c3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    const v1, 0x7f0d00ed

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->no_network_title:Landroid/widget/TextView;

    .line 173
    const v1, 0x7f0d0028

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetailGridview:Landroid/widget/GridView;

    .line 175
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetailGridview:Landroid/widget/GridView;

    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 177
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->setChannelDetailGridViewSpacing()V

    .line 180
    new-instance v0, Lcom/meizu/video/client/common/LoadingMoreFootView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/video/client/common/LoadingMoreFootView;-><init>(Landroid/content/Context;)V

    .line 181
    .local v0, footView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->InitAdapter()V

    .line 182
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    invoke-virtual {v1, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;->setFooterView(Landroid/view/View;)V

    .line 183
    return-void
.end method


# virtual methods
.method public InitAdapter()V
    .locals 5

    .prologue
    .line 310
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListEntity:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetailGridview:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/GridView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    .line 312
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetailGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailAdapter:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 314
    :cond_0
    return-void
.end method

.method public checkDataAndUpdateView()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/video/client/util/CommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetail_progressbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->no_available_network:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 375
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->initData(I)V

    .line 382
    :cond_1
    :goto_0
    return-void

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetail_progressbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->no_network_title:Landroid/widget/TextView;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 379
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->no_available_network:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public initListeners()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetailGridview:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetailGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->onChanelDetailScroll:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 188
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetailGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->onchanelListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 190
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x2

    .line 152
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 153
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->TAG:Ljava/lang/String;

    const-string v1, " onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->setChannelDetailGridViewSpacing()V

    .line 157
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 160
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 91
    const v1, 0x7f04000f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, channelDetailView:Landroid/view/View;
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getDataFromBundle()V

    .line 93
    invoke-direct {p0, v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->initView(Landroid/view/View;)V

    .line 94
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->initListeners()V

    .line 96
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 101
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 103
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListEntity:Ljava/util/ArrayList;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListPartEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListPartEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListPartEntity:Ljava/util/ArrayList;

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->typeTitemListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->typeTitemListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->typeTitemListEntity:Ljava/util/ArrayList;

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->loader:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->loader:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_3

    .line 115
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->loader:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment$LoadChanelDetailListTask;->cancel(Z)Z

    .line 118
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 122
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 125
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 126
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->channelDetailListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/video/client/util/CommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetail_progressbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->no_available_network:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    invoke-direct {p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->initData(I)V

    .line 140
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetail_progressbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->no_network_title:Landroid/widget/TextView;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->no_available_network:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 144
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 148
    return-void
.end method

.method public setChannelDetailGridViewSpacing()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/16 v2, 0xa

    .line 385
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetailGridview:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 387
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetailGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 388
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetailGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 389
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetailGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setDockingBottom(I)V

    .line 396
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetailGridview:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 392
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetailGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 393
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetailGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 394
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->chanelDetailGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x62

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setDockingBottom(I)V

    goto :goto_0
.end method

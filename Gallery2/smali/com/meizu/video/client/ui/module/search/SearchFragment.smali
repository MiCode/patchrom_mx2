.class public Lcom/meizu/video/client/ui/module/search/SearchFragment;
.super Landroid/app/Fragment;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;
    }
.end annotation


# instance fields
.field private final FRESH_CURRENT_PAGE:I

.field private final FRESH_CURRENT_PAGE_BY_ROTATION_SCREEN:I

.field private final MSG_SHOW_IMM:I

.field private final RELOAD_DATA:I

.field private TAG:Ljava/lang/String;

.field private chanelDetail_progressbar_layout:Landroid/widget/LinearLayout;

.field private cid:Ljava/lang/String;

.field private currentSearchPage:I

.field private footView:Landroid/view/View;

.field handler:Landroid/os/Handler;

.field private isLoading:Z

.field private keyword:Ljava/lang/String;

.field private listCurrentIndex:I

.field private listIsScrollBottom:Z

.field private loader:Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;

.field private mCachedFilter:Ljava/lang/String;

.field private mClearText:Landroid/widget/ImageView;

.field private mNoSearchResult:Z

.field private mOldTotalPage:I

.field private mPreTimeOut:Z

.field private mQueryText:Landroid/widget/EditText;

.field private mReloadData:Z

.field private mbShowing:Z

.field private msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

.field private msgTypeNumListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/MsgEntity;",
            ">;"
        }
    .end annotation
.end field

.field private no_available_network:Landroid/widget/LinearLayout;

.field private no_network_image:Landroid/widget/ImageView;

.field private no_network_title:Landroid/widget/TextView;

.field onChanelDetailScroll:Landroid/widget/AbsListView$OnScrollListener;

.field onSearchListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private order:Ljava/lang/String;

.field private searchAdapter:Lcom/meizu/video/client/ui/module/search/SearchAdapter;

.field private searchChanelName:Ljava/lang/String;

.field private searchDetailListPartEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/SearchEntity;",
            ">;"
        }
    .end annotation
.end field

.field private searchEditView:Landroid/view/View;

.field private searchGridview:Landroid/widget/GridView;

.field private searchListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/SearchEntity;",
            ">;"
        }
    .end annotation
.end field

.field private search_whole:Landroid/widget/RelativeLayout;

.field private totalNum:I

.field private totalPage:I

.field touchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 56
    const-string v0, "SearchFragment"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->TAG:Ljava/lang/String;

    .line 67
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;

    .line 69
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchDetailListPartEntity:Ljava/util/ArrayList;

    .line 71
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->msgTypeNumListEntity:Ljava/util/ArrayList;

    .line 72
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 74
    iput v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->totalNum:I

    .line 75
    iput v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->totalPage:I

    .line 76
    iput v3, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->currentSearchPage:I

    .line 77
    iput v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mOldTotalPage:I

    .line 79
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchAdapter:Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchChanelName:Ljava/lang/String;

    .line 83
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->listIsScrollBottom:Z

    .line 84
    iput v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->listCurrentIndex:I

    .line 85
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->isLoading:Z

    .line 87
    iput v3, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->FRESH_CURRENT_PAGE:I

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->RELOAD_DATA:I

    .line 90
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->FRESH_CURRENT_PAGE_BY_ROTATION_SCREEN:I

    .line 92
    const/4 v0, 0x4

    iput v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->MSG_SHOW_IMM:I

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->keyword:Ljava/lang/String;

    .line 96
    const-string v0, "-1"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->cid:Ljava/lang/String;

    .line 97
    const-string v0, "0"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->order:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCachedFilter:Ljava/lang/String;

    .line 110
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoSearchResult:Z

    .line 112
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mReloadData:Z

    .line 114
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mPreTimeOut:Z

    .line 119
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mbShowing:Z

    .line 373
    new-instance v0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;-><init>(Lcom/meizu/video/client/ui/module/search/SearchFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->handler:Landroid/os/Handler;

    .line 458
    new-instance v0, Lcom/meizu/video/client/ui/module/search/SearchFragment$4;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment$4;-><init>(Lcom/meizu/video/client/ui/module/search/SearchFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->onChanelDetailScroll:Landroid/widget/AbsListView$OnScrollListener;

    .line 490
    new-instance v0, Lcom/meizu/video/client/ui/module/search/SearchFragment$5;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment$5;-><init>(Lcom/meizu/video/client/ui/module/search/SearchFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->onSearchListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 564
    new-instance v0, Lcom/meizu/video/client/ui/module/search/SearchFragment$6;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment$6;-><init>(Lcom/meizu/video/client/ui/module/search/SearchFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->touchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCachedFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/meizu/video/client/ui/module/search/SearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCachedFilter:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/meizu/video/client/ui/module/search/SearchFragment;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->cid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->order:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->totalNum:I

    return v0
.end method

.method static synthetic access$1302(Lcom/meizu/video/client/ui/module/search/SearchFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->totalNum:I

    return p1
.end method

.method static synthetic access$1400(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->totalPage:I

    return v0
.end method

.method static synthetic access$1402(Lcom/meizu/video/client/ui/module/search/SearchFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->totalPage:I

    return p1
.end method

.method static synthetic access$1408(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->totalPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->totalPage:I

    return v0
.end method

.method static synthetic access$1500(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mOldTotalPage:I

    return v0
.end method

.method static synthetic access$1502(Lcom/meizu/video/client/ui/module/search/SearchFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mOldTotalPage:I

    return p1
.end method

.method static synthetic access$1600(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->chanelDetail_progressbar_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->isLoading:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/meizu/video/client/ui/module/search/SearchFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->isLoading:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Lcom/meizu/video/client/ui/module/search/SearchAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchAdapter:Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/meizu/video/client/ui/module/search/SearchFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mPreTimeOut:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->no_network_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/video/client/ui/module/search/SearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->keyword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/meizu/video/client/ui/module/search/SearchFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoSearchResult:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->no_available_network:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/meizu/video/client/ui/module/search/SearchFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->initData(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mbShowing:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/meizu/video/client/ui/module/search/SearchFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mbShowing:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->listIsScrollBottom:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/meizu/video/client/ui/module/search/SearchFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->listIsScrollBottom:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mReloadData:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/meizu/video/client/ui/module/search/SearchFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->listCurrentIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/video/client/ui/module/search/SearchFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->currentSearchPage:I

    return v0
.end method

.method static synthetic access$402(Lcom/meizu/video/client/ui/module/search/SearchFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->currentSearchPage:I

    return p1
.end method

.method static synthetic access$408(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->currentSearchPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->currentSearchPage:I

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mClearText:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mQueryText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchDetailListPartEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/meizu/video/client/ui/module/search/SearchFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchDetailListPartEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->msgTypeNumListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/meizu/video/client/ui/module/search/SearchFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->msgTypeNumListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method private getDataFromBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 456
    return-void
.end method

.method private initData(I)V
    .locals 5
    .parameter "freshType"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 285
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->isLoading:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mReloadData:Z

    if-eqz v0, :cond_1

    .line 286
    :cond_0
    iput-boolean v4, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->isLoading:Z

    .line 287
    iput-boolean v3, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mReloadData:Z

    .line 288
    new-instance v0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;-><init>(Lcom/meizu/video/client/ui/module/search/SearchFragment;Lcom/meizu/video/client/ui/module/search/SearchFragment$1;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->loader:Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;

    .line 289
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->loader:Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 291
    :cond_1
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 204
    const v1, 0x7f0d0169

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->search_whole:Landroid/widget/RelativeLayout;

    .line 206
    const v1, 0x7f0d009b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->chanelDetail_progressbar_layout:Landroid/widget/LinearLayout;

    .line 207
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->chanelDetail_progressbar_layout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    const v1, 0x7f0d00eb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->no_available_network:Landroid/widget/LinearLayout;

    .line 210
    const v1, 0x7f0d00ec

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->no_network_image:Landroid/widget/ImageView;

    .line 211
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->no_network_image:Landroid/widget/ImageView;

    const v2, 0x7f0200c3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    const v1, 0x7f0d00ed

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->no_network_title:Landroid/widget/TextView;

    .line 214
    const v1, 0x7f0d016a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchGridview:Landroid/widget/GridView;

    .line 215
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchGridview:Landroid/widget/GridView;

    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 217
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->setSearchGridViewSpacing()V

    .line 220
    new-instance v1, Lcom/meizu/video/client/common/LoadingMoreFootView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/meizu/video/client/common/LoadingMoreFootView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->footView:Landroid/view/View;

    .line 221
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->InitAdapter()V

    .line 222
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchAdapter:Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->footView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->setFooterView(Landroid/view/View;)V

    .line 224
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040076

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchEditView:Landroid/view/View;

    .line 225
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 226
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchEditView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchEditView:Landroid/view/View;

    const v2, 0x7f0d016b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mQueryText:Landroid/widget/EditText;

    .line 229
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchEditView:Landroid/view/View;

    const v2, 0x7f0d0058

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mClearText:Landroid/widget/ImageView;

    .line 231
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mQueryText:Landroid/widget/EditText;

    new-instance v2, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;

    invoke-direct {v2, p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;-><init>(Lcom/meizu/video/client/ui/module/search/SearchFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 263
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mQueryText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCachedFilter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mClearText:Landroid/widget/ImageView;

    new-instance v2, Lcom/meizu/video/client/ui/module/search/SearchFragment$2;

    invoke-direct {v2, p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment$2;-><init>(Lcom/meizu/video/client/ui/module/search/SearchFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    return-void
.end method


# virtual methods
.method public InitAdapter()V
    .locals 5

    .prologue
    .line 449
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchAdapter:Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchGridview:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchChanelName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/GridView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchAdapter:Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    .line 451
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchAdapter:Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 453
    :cond_0
    return-void
.end method

.method public checkDataAndUpdateView()V
    .locals 6

    .prologue
    const v5, 0x7f0a000e

    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 511
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCachedFilter:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mPreTimeOut:Z

    if-eqz v0, :cond_4

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/video/client/util/CommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 514
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCachedFilter:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->keyword:Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->no_available_network:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mReloadData:Z

    .line 517
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 538
    :cond_1
    :goto_0
    return-void

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 520
    :cond_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->no_network_title:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 521
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->no_available_network:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 525
    :cond_4
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 526
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/video/client/util/CommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 527
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoSearchResult:Z

    if-nez v0, :cond_6

    .line 528
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->no_available_network:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 530
    :cond_6
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->no_network_title:Landroid/widget/TextView;

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 533
    :cond_7
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->no_network_title:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 534
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->no_available_network:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public initListeners()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchGridview:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->onChanelDetailScroll:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 275
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->onSearchListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 279
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x3

    .line 190
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 192
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->setSearchGridViewSpacing()V

    .line 194
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 123
    const v2, 0x7f040075

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 125
    .local v1, searchView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 126
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0, v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getDataFromBundle(Landroid/os/Bundle;)V

    .line 129
    :cond_0
    invoke-direct {p0, v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->initView(Landroid/view/View;)V

    .line 130
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->initListeners()V

    .line 131
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->setActionBar()V

    .line 132
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchListEntity:Ljava/util/ArrayList;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchDetailListPartEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchDetailListPartEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchDetailListPartEntity:Ljava/util/ArrayList;

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->loader:Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->loader:Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 148
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->loader:Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->cancel(Z)Z

    .line 151
    :cond_2
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 152
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/VideoGallery;

    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getmSelectedPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/VideoGallery;

    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getTabSearch()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->showOrHideInputSoftKeyboard(Z)V

    .line 160
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 161
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 166
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->checkDataAndUpdateView()V

    .line 167
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/VideoGallery;

    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getmSelectedPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/VideoGallery;

    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getTabSearch()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->showOrHideInputSoftKeyboard(Z)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 176
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 181
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 186
    return-void
.end method

.method public setActionBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 501
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getmActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 502
    .local v0, bar:Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 503
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchEditView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 505
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 506
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 507
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 508
    return-void
.end method

.method public setSearchGridViewSpacing()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/16 v2, 0xa

    .line 551
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 552
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchGridview:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 553
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 554
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 555
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setDockingBottom(I)V

    .line 562
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchGridview:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 558
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 559
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 560
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->searchGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x62

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setDockingBottom(I)V

    goto :goto_0
.end method

.method public showOrHideInputSoftKeyboard(Z)V
    .locals 5
    .parameter "flag"

    .prologue
    .line 584
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mbShowing:Z

    .line 585
    if-eqz p1, :cond_1

    .line 586
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->handler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mQueryText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 589
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 590
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mQueryText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

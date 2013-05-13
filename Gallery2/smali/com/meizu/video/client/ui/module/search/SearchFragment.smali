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

.field private mActionbarTopBottomBg:Landroid/widget/FrameLayout;

.field private mCachedFilter:Ljava/lang/String;

.field private mChanelDetailProgressbarLayout:Landroid/widget/LinearLayout;

.field private mCid:Ljava/lang/String;

.field private mClearText:Landroid/widget/ImageView;

.field private mCurrentSearchPage:I

.field private mCustomView:Landroid/view/View;

.field private mFootView:Landroid/view/View;

.field mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private mKeyword:Ljava/lang/String;

.field private mListIsScrollBottom:Z

.field private mLoader:Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;

.field private mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

.field private mMsgTypeNumListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/MsgEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mNoAvailableNetwork:Landroid/widget/LinearLayout;

.field private mNoNetworkImage:Landroid/widget/ImageView;

.field private mNoNetworkTitle:Landroid/widget/TextView;

.field private mNoSearchResult:Z

.field private mOldTotalPage:I

.field private mOrder:Ljava/lang/String;

.field private mPreTimeOut:Z

.field private mQueryImage:Landroid/widget/ImageView;

.field private mQueryText:Landroid/widget/EditText;

.field private mReloadData:Z

.field private mRes:Landroid/content/res/Resources;

.field private mSearchAdapter:Lcom/meizu/video/client/ui/module/search/SearchAdapter;

.field private mSearchChanelName:Ljava/lang/String;

.field private mSearchDetailListPartEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/SearchEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchEditView:Landroid/widget/LinearLayout;

.field private mSearchGridview:Landroid/widget/GridView;

.field private mSearchListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/SearchEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchWhole:Landroid/widget/FrameLayout;

.field private mTotalNum:I

.field private mTotalPage:I

.field private mUp:Landroid/widget/ImageView;

.field private mbShowing:Z

.field onChanelDetailScroll:Landroid/widget/AbsListView$OnScrollListener;

.field onSearchListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field touchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 59
    const-string v0, "SearchFragment"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->TAG:Ljava/lang/String;

    .line 70
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchListEntity:Ljava/util/ArrayList;

    .line 72
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchDetailListPartEntity:Ljava/util/ArrayList;

    .line 74
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mMsgTypeNumListEntity:Ljava/util/ArrayList;

    .line 75
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 77
    iput v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mTotalNum:I

    .line 78
    iput v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mTotalPage:I

    .line 79
    iput v3, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCurrentSearchPage:I

    .line 80
    iput v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mOldTotalPage:I

    .line 82
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchAdapter:Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchChanelName:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mListIsScrollBottom:Z

    .line 87
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mIsLoading:Z

    .line 89
    iput v3, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->FRESH_CURRENT_PAGE:I

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->RELOAD_DATA:I

    .line 92
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->FRESH_CURRENT_PAGE_BY_ROTATION_SCREEN:I

    .line 94
    const/4 v0, 0x4

    iput v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->MSG_SHOW_IMM:I

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mKeyword:Ljava/lang/String;

    .line 98
    const-string v0, "-1"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCid:Ljava/lang/String;

    .line 99
    const-string v0, "0"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mOrder:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCachedFilter:Ljava/lang/String;

    .line 114
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoSearchResult:Z

    .line 116
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mReloadData:Z

    .line 118
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mPreTimeOut:Z

    .line 124
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mbShowing:Z

    .line 399
    new-instance v0, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment$3;-><init>(Lcom/meizu/video/client/ui/module/search/SearchFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mHandler:Landroid/os/Handler;

    .line 483
    new-instance v0, Lcom/meizu/video/client/ui/module/search/SearchFragment$4;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment$4;-><init>(Lcom/meizu/video/client/ui/module/search/SearchFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->onChanelDetailScroll:Landroid/widget/AbsListView$OnScrollListener;

    .line 514
    new-instance v0, Lcom/meizu/video/client/ui/module/search/SearchFragment$5;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment$5;-><init>(Lcom/meizu/video/client/ui/module/search/SearchFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->onSearchListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 623
    new-instance v0, Lcom/meizu/video/client/ui/module/search/SearchFragment$6;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment$6;-><init>(Lcom/meizu/video/client/ui/module/search/SearchFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->touchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCachedFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/meizu/video/client/ui/module/search/SearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCachedFilter:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/meizu/video/client/ui/module/search/SearchFragment;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mOrder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mTotalNum:I

    return v0
.end method

.method static synthetic access$1302(Lcom/meizu/video/client/ui/module/search/SearchFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mTotalNum:I

    return p1
.end method

.method static synthetic access$1400(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mTotalPage:I

    return v0
.end method

.method static synthetic access$1402(Lcom/meizu/video/client/ui/module/search/SearchFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mTotalPage:I

    return p1
.end method

.method static synthetic access$1408(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mTotalPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mTotalPage:I

    return v0
.end method

.method static synthetic access$1500(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mOldTotalPage:I

    return v0
.end method

.method static synthetic access$1502(Lcom/meizu/video/client/ui/module/search/SearchFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mOldTotalPage:I

    return p1
.end method

.method static synthetic access$1600(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mChanelDetailProgressbarLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/meizu/video/client/ui/module/search/SearchFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Lcom/meizu/video/client/ui/module/search/SearchAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchAdapter:Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/meizu/video/client/ui/module/search/SearchFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mPreTimeOut:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoNetworkTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/video/client/ui/module/search/SearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mKeyword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/meizu/video/client/ui/module/search/SearchFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoSearchResult:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/meizu/video/client/ui/module/search/SearchFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->initData(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mbShowing:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/meizu/video/client/ui/module/search/SearchFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mbShowing:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mListIsScrollBottom:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/meizu/video/client/ui/module/search/SearchFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mListIsScrollBottom:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mReloadData:Z

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/video/client/ui/module/search/SearchFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCurrentSearchPage:I

    return v0
.end method

.method static synthetic access$402(Lcom/meizu/video/client/ui/module/search/SearchFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCurrentSearchPage:I

    return p1
.end method

.method static synthetic access$408(Lcom/meizu/video/client/ui/module/search/SearchFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCurrentSearchPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCurrentSearchPage:I

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mClearText:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mQueryText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchDetailListPartEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/meizu/video/client/ui/module/search/SearchFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchDetailListPartEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mMsgTypeNumListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/meizu/video/client/ui/module/search/SearchFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mMsgTypeNumListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method private getDataFromBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 481
    return-void
.end method

.method private initData(I)V
    .locals 5
    .parameter "freshType"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 311
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mIsLoading:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mReloadData:Z

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    iput-boolean v4, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mIsLoading:Z

    .line 313
    iput-boolean v3, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mReloadData:Z

    .line 314
    new-instance v0, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;-><init>(Lcom/meizu/video/client/ui/module/search/SearchFragment;Lcom/meizu/video/client/ui/module/search/SearchFragment$1;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mLoader:Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;

    .line 315
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mLoader:Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 317
    :cond_1
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 222
    const v0, 0x7f0d0183

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchWhole:Landroid/widget/FrameLayout;

    .line 224
    const v0, 0x7f0d001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mActionbarTopBottomBg:Landroid/widget/FrameLayout;

    .line 226
    const v0, 0x7f0d00a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mChanelDetailProgressbarLayout:Landroid/widget/LinearLayout;

    .line 227
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mChanelDetailProgressbarLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    const v0, 0x7f0d00ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    .line 230
    const v0, 0x7f0d00ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoNetworkImage:Landroid/widget/ImageView;

    .line 232
    const v0, 0x7f0d00ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoNetworkTitle:Landroid/widget/TextView;

    .line 234
    const v0, 0x7f0d0184

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchGridview:Landroid/widget/GridView;

    .line 235
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchGridview:Landroid/widget/GridView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 237
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->setSearchGridViewSpacing()V

    .line 240
    new-instance v0, Lcom/meizu/video/client/common/LoadingMoreFootView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/video/client/common/LoadingMoreFootView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mFootView:Landroid/view/View;

    .line 241
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->InitAdapter()V

    .line 242
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchAdapter:Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;->setFooterView(Landroid/view/View;)V

    .line 245
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04007b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCustomView:Landroid/view/View;

    .line 246
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCustomView:Landroid/view/View;

    const v1, 0x7f0d0186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchEditView:Landroid/widget/LinearLayout;

    .line 248
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCustomView:Landroid/view/View;

    const v1, 0x7f0d0188

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mQueryText:Landroid/widget/EditText;

    .line 249
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCustomView:Landroid/view/View;

    const v1, 0x7f0d005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mClearText:Landroid/widget/ImageView;

    .line 251
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCustomView:Landroid/view/View;

    const v1, 0x7f0d0187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mQueryImage:Landroid/widget/ImageView;

    .line 253
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCustomView:Landroid/view/View;

    const v1, 0x7f0d0185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mUp:Landroid/widget/ImageView;

    .line 255
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->setSearchViewStyle()V

    .line 257
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mQueryText:Landroid/widget/EditText;

    new-instance v1, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;

    invoke-direct {v1, p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment$1;-><init>(Lcom/meizu/video/client/ui/module/search/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 289
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mQueryText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCachedFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mClearText:Landroid/widget/ImageView;

    new-instance v1, Lcom/meizu/video/client/ui/module/search/SearchFragment$2;

    invoke-direct {v1, p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment$2;-><init>(Lcom/meizu/video/client/ui/module/search/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    return-void
.end method


# virtual methods
.method public InitAdapter()V
    .locals 5

    .prologue
    .line 474
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchAdapter:Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchListEntity:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchGridview:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchChanelName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/video/client/ui/module/search/SearchAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/GridView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchAdapter:Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    .line 476
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchAdapter:Lcom/meizu/video/client/ui/module/search/SearchAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 478
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

    .line 552
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCachedFilter:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mPreTimeOut:Z

    if-eqz v0, :cond_4

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/video/client/util/CommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 555
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCachedFilter:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mKeyword:Ljava/lang/String;

    .line 556
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mReloadData:Z

    .line 558
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 581
    :cond_1
    :goto_0
    return-void

    .line 560
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 561
    :cond_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoNetworkTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 562
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->setNoNetWorkStyle()V

    .line 563
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 567
    :cond_4
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 568
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/video/client/util/CommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 569
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoSearchResult:Z

    if-nez v0, :cond_6

    .line 570
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 572
    :cond_6
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoNetworkTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 575
    :cond_7
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoNetworkTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 576
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->setNoNetWorkStyle()V

    .line 577
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public initListeners()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchGridview:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->onChanelDetailScroll:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 301
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->onSearchListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 305
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x3

    .line 203
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 205
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->setSearchViewStyle()V

    .line 207
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->setSearchGridViewSpacing()V

    .line 208
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->setNoNetWorkStyle()V

    .line 215
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 134
    const v2, 0x7f04007a

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 136
    .local v1, searchView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    .line 138
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 139
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0, v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getDataFromBundle(Landroid/os/Bundle;)V

    .line 142
    :cond_0
    invoke-direct {p0, v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->initView(Landroid/view/View;)V

    .line 143
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->initListeners()V

    .line 144
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->setActionBar()V

    .line 145
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchListEntity:Ljava/util/ArrayList;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchDetailListPartEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchDetailListPartEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 157
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchDetailListPartEntity:Ljava/util/ArrayList;

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mLoader:Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mLoader:Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 161
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mLoader:Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment$LoadSearchListTask;->cancel(Z)Z

    .line 164
    :cond_2
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 165
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
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

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->showOrHideInputSoftKeyboard(Z)V

    .line 173
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 174
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 179
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->checkDataAndUpdateView()V

    .line 180
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

    .line 181
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->showOrHideInputSoftKeyboard(Z)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 189
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 194
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 199
    return-void
.end method

.method public setActionBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 541
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getmActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 542
    .local v0, bar:Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 543
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 546
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 547
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 548
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 549
    return-void
.end method

.method public setNoNetWorkStyle()V
    .locals 4

    .prologue
    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 685
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 686
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    .line 688
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 689
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 690
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 694
    :goto_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mNoNetworkImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    return-void

    .line 692
    :cond_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public setSearchGridViewSpacing()V
    .locals 8

    .prologue
    const v3, 0x7f0900d9

    const v7, 0x7f0900d0

    const v5, 0x7f0900cf

    const/4 v2, 0x2

    const/4 v6, 0x0

    .line 594
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    .line 597
    :cond_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mActionbarTopBottomBg:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 598
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 599
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    .line 600
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchGridview:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 601
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 602
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0900da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 603
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0900dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setDockingBottom(I)V

    .line 605
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/meizu/video/client/common/Constant;->actionBarSmallHeight:I

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0900db

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 607
    sget v1, Lcom/meizu/video/client/common/Constant;->actionBarSmallHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 620
    :goto_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mActionbarTopBottomBg:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    return-void

    .line 609
    :cond_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchGridview:Landroid/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 610
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 612
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0900da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 614
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchGridview:Landroid/widget/GridView;

    sget v2, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0900dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setDockingBottom(I)V

    .line 616
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchGridview:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0900db

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 618
    sget v1, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setSearchViewStyle()V
    .locals 7

    .prologue
    const/16 v3, 0x8

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 656
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    .line 659
    :cond_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 660
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mQueryImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 662
    sget-object v1, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 663
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mUp:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 665
    :cond_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mClearText:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0900e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0900e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 666
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchEditView:Landroid/widget/LinearLayout;

    const v2, 0x7f020182

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 667
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0900e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/meizu/video/client/common/Constant;->actionBarSmallHeight:I

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0900e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 668
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchEditView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 670
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 682
    :goto_0
    return-void

    .line 672
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mQueryImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 673
    sget-object v1, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 674
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mUp:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 676
    :cond_3
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mClearText:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0900e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0900e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 677
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchEditView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 678
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 679
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mSearchEditView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public showOrHideInputSoftKeyboard(Z)V
    .locals 5
    .parameter "flag"

    .prologue
    .line 643
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mbShowing:Z

    .line 644
    if-eqz p1, :cond_1

    .line 645
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mQueryText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 648
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 649
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment;->mQueryText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

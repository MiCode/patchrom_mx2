.class public Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;
.super Landroid/app/Fragment;
.source "FavoriteFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ConfirmDialogListener;,
        Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;,
        Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;
    }
.end annotation


# instance fields
.field private final CHECK_AND_FRESH_PAGE:I

.field private final FRESH_CURRENT_PAGE:I

.field private TAG:Ljava/lang/String;

.field itemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

.field private mActionCallback:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

.field private mChanelDetailProgressbarLayout:Landroid/widget/LinearLayout;

.field private mCurrentStartListPosition:I

.field private mFavoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

.field private mFavoriteDataChange:Z

.field private mFavoriteGridview:Landroid/widget/GridView;

.field private mFavoriteListview:Landroid/widget/ListView;

.field private mFavoriteWhole:Landroid/widget/RelativeLayout;

.field private mFavoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

.field private mFavoritesDeleteListEntry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/FavoriteEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoritesListEntry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/FavoriteEntity;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private mIsScreenHorizontal:Z

.field private mLoader:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;

.field private mNoAvailableNetwork:Landroid/widget/LinearLayout;

.field private mObserver:Landroid/database/ContentObserver;

.field mOnFavoriteScroll:Landroid/widget/AbsListView$OnScrollListener;

.field mOnSearchListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRes:Landroid/content/res/Resources;

.field private mSelectMenuItem:Landroid/view/MenuItem;

.field private mSelectionButton:Lcom/meizu/widget/SelectionButton;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 57
    const-string v0, "FavoriteFragment"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->TAG:Ljava/lang/String;

    .line 67
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    .line 69
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;

    .line 71
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    .line 73
    new-instance v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mActionCallback:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    .line 75
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsLoading:Z

    .line 77
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsScreenHorizontal:Z

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->FRESH_CURRENT_PAGE:I

    .line 81
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->CHECK_AND_FRESH_PAGE:I

    .line 83
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    .line 94
    iput v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mCurrentStartListPosition:I

    .line 96
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteDataChange:Z

    .line 272
    new-instance v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mHandler:Landroid/os/Handler;

    .line 323
    new-instance v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$2;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$2;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mOnSearchListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 501
    new-instance v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$3;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$3;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->itemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    .line 580
    new-instance v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$4;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$4;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mOnFavoriteScroll:Landroid/widget/AbsListView$OnScrollListener;

    .line 601
    new-instance v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$5;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectMenuItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$102(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/widget/SelectionButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Lcom/meizu/widget/SelectionButton;)Lcom/meizu/widget/SelectionButton;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mCurrentStartListPosition:I

    return v0
.end method

.method static synthetic access$1302(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mCurrentStartListPosition:I

    return p1
.end method

.method static synthetic access$1400(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mRes:Landroid/content/res/Resources;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteDataChange:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;)Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mChanelDetailProgressbarLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsScreenHorizontal:Z

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$800(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;

    return-object p1
.end method

.method private initData()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 239
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsLoading:Z

    if-nez v0, :cond_0

    .line 240
    iput-boolean v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsLoading:Z

    .line 241
    new-instance v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mLoader:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;

    .line 242
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mLoader:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 244
    :cond_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const v9, 0x7f090104

    const v8, 0x7f090103

    const/high16 v7, 0x200

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 188
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mRes:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mRes:Landroid/content/res/Resources;

    .line 192
    :cond_0
    const v0, 0x7f0d00a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mChanelDetailProgressbarLayout:Landroid/widget/LinearLayout;

    .line 193
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mChanelDetailProgressbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    const v0, 0x7f0d008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteWhole:Landroid/widget/RelativeLayout;

    .line 197
    const v0, 0x7f0d00ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    .line 198
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    const v0, 0x7f0d008c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;

    .line 201
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;

    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 202
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setDockingBottom(I)V

    .line 203
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mActionCallback:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 204
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;

    invoke-virtual {v0, v6}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 205
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->itemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setItemDragListener(Landroid/widget/AbsListView$OnItemDragListener;)V

    .line 207
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0900f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/meizu/video/client/common/Constant;->actionBarSmallHeight:I

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0900f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 208
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;

    sget v1, Lcom/meizu/video/client/common/Constant;->actionBarSmallHeight:I

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setTopSpacing(I)V

    .line 210
    const v0, 0x7f0d008b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;

    .line 211
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 212
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;

    sget v1, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090105

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDockingBottom(I)V

    .line 213
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mActionCallback:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 214
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 215
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnableDragSelection(Z)V

    .line 216
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->itemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemDragListener(Landroid/widget/AbsListView$OnItemDragListener;)V

    .line 218
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0900f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0900f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 219
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;

    sget v1, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTopSpacing(I)V

    .line 221
    return-void
.end method

.method private registerFavoriteObserver()V
    .locals 4

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/meizu/video/client/db/VideoOnlineDataModel$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 595
    return-void
.end method

.method private unregisterFavoriteObserver()V
    .locals 2

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 599
    return-void
.end method


# virtual methods
.method public InitAdapter()V
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    .line 317
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->setView(Landroid/widget/ListView;Landroid/widget/GridView;)V

    .line 318
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 319
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 321
    :cond_0
    return-void
.end method

.method public initListeners()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mOnSearchListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mOnFavoriteScroll:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mOnSearchListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mOnFavoriteScroll:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 232
    :cond_1
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->registerFavoriteObserver()V

    .line 233
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x1

    .line 155
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 156
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 160
    iput-boolean v4, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsScreenHorizontal:Z

    .line 161
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 162
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->finishMultiChoice()V

    .line 163
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->startMultiChoice()Z

    .line 164
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 165
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/video/client/ui/entity/FavoriteEntity;

    .line 166
    .local v0, favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/FavoriteEntity;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;

    invoke-virtual {v2, v1, v4}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 164
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v0           #favoriteEntity:Lcom/meizu/video/client/ui/entity/FavoriteEntity;
    .end local v1           #i:I
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsScreenHorizontal:Z

    .line 173
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 174
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->finishMultiChoice()V

    .line 175
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->startMultiChoice()Z

    .line 179
    :cond_3
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 181
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 102
    const v3, 0x7f04002b

    invoke-virtual {p1, v3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 104
    .local v1, searchView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mRes:Landroid/content/res/Resources;

    .line 106
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 107
    .local v0, outSize:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 108
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsScreenHorizontal:Z

    .line 109
    invoke-direct {p0, v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->initView(Landroid/view/View;)V

    .line 110
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->initListeners()V

    .line 112
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/VideoGallery;

    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getmActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    const v3, 0x7f0a01f8

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(I)V

    .line 114
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    invoke-virtual {v0}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->close()V

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->unregisterFavoriteObserver()V

    .line 130
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mLoader:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mLoader:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 131
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mLoader:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;->cancel(Z)Z

    .line 133
    :cond_2
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 134
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 138
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 139
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteDataChange:Z

    if-eqz v0, :cond_3

    .line 140
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteDataChange:Z

    if-eqz v0, :cond_2

    .line 141
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteDataChange:Z

    .line 142
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteGridview:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteListview:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mChanelDetailProgressbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    :cond_2
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->initData()V

    .line 151
    :cond_3
    return-void
.end method

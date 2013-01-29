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

.field private chanelDetail_progressbar_layout:Landroid/widget/LinearLayout;

.field private currentStartListPosition:I

.field private favoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

.field private favoriteGridview:Landroid/widget/GridView;

.field private favoriteListview:Landroid/widget/ListView;

.field private favorite_whole:Landroid/widget/RelativeLayout;

.field private favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

.field handler:Landroid/os/Handler;

.field private isLoading:Z

.field itemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

.field private loader:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;

.field private mActionCallback:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

.field private mFavoriteDataChange:Z

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

.field private mIsScreenHorizontal:Z

.field private mObserver:Landroid/database/ContentObserver;

.field private mSelectMenuItem:Landroid/view/MenuItem;

.field private mSelectionButton:Lcom/meizu/widget/SelectionButton;

.field private no_available_network:Landroid/widget/LinearLayout;

.field onFavoriteScroll:Landroid/widget/AbsListView$OnScrollListener;

.field onSearchListItemClick:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 61
    const-string v0, "FavoriteFragment"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->TAG:Ljava/lang/String;

    .line 73
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    .line 75
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;

    .line 77
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    .line 79
    new-instance v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mActionCallback:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    .line 81
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->isLoading:Z

    .line 83
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsScreenHorizontal:Z

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->FRESH_CURRENT_PAGE:I

    .line 87
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->CHECK_AND_FRESH_PAGE:I

    .line 89
    iput-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    .line 100
    iput v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->currentStartListPosition:I

    .line 102
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteDataChange:Z

    .line 257
    new-instance v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->handler:Landroid/os/Handler;

    .line 308
    new-instance v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$2;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$2;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->onSearchListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 508
    new-instance v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$3;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$3;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->itemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    .line 587
    new-instance v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$4;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$4;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->onFavoriteScroll:Landroid/widget/AbsListView$OnScrollListener;

    .line 608
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
    .line 59
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectMenuItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$102(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/widget/SelectionButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Lcom/meizu/widget/SelectionButton;)Lcom/meizu/widget/SelectionButton;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mSelectionButton:Lcom/meizu/widget/SelectionButton;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->currentStartListPosition:I

    return v0
.end method

.method static synthetic access$1302(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->currentStartListPosition:I

    return p1
.end method

.method static synthetic access$1402(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteDataChange:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;)Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->chanelDetail_progressbar_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsScreenHorizontal:Z

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteListview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteGridview:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->isLoading:Z

    return p1
.end method

.method static synthetic access$800(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;

    return-object p1
.end method

.method private initData()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 224
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->isLoading:Z

    if-nez v0, :cond_0

    .line 225
    iput-boolean v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->isLoading:Z

    .line 226
    new-instance v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;-><init>(Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$1;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->loader:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;

    .line 227
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->loader:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 229
    :cond_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/high16 v5, 0x200

    const/4 v4, 0x4

    const-wide/high16 v2, 0x4016

    .line 183
    const v0, 0x7f0d009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->chanelDetail_progressbar_layout:Landroid/widget/LinearLayout;

    .line 184
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->chanelDetail_progressbar_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    const v0, 0x7f0d0085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favorite_whole:Landroid/widget/RelativeLayout;

    .line 188
    const v0, 0x7f0d00eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->no_available_network:Landroid/widget/LinearLayout;

    .line 189
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->no_available_network:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    const v0, 0x7f0d0087

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteGridview:Landroid/widget/GridView;

    .line 192
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteGridview:Landroid/widget/GridView;

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 193
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setDockingBottom(I)V

    .line 194
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mActionCallback:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 195
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteGridview:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 196
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->itemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setItemDragListener(Landroid/widget/AbsListView$OnItemDragListener;)V

    .line 198
    const v0, 0x7f0d0086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteListview:Landroid/widget/ListView;

    .line 199
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteListview:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 200
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteListview:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/meizu/video/client/util/CommonUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    add-int/lit8 v1, v1, 0x62

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDockingBottom(I)V

    .line 201
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mActionCallback:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$ActionModeWrapper;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 202
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteListview:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 203
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteListview:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnableDragSelection(Z)V

    .line 204
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->itemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemDragListener(Landroid/widget/AbsListView$OnItemDragListener;)V

    .line 206
    return-void
.end method

.method private registerFavoriteObserver()V
    .locals 4

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/meizu/video/client/db/VideoOnlineDataModel$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 602
    return-void
.end method

.method private unregisterFavoriteObserver()V
    .locals 2

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 606
    return-void
.end method


# virtual methods
.method public InitAdapter()V
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    .line 302
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteListview:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteGridview:Landroid/widget/GridView;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;->setView(Landroid/widget/ListView;Landroid/widget/GridView;)V

    .line 303
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 304
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteAdapter:Lcom/meizu/video/client/ui/module/favorite/FavoriteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 306
    :cond_0
    return-void
.end method

.method public initListeners()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteGridview:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->onSearchListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteGridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->onFavoriteScroll:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteListview:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->onSearchListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->onFavoriteScroll:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 217
    :cond_1
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->registerFavoriteObserver()V

    .line 218
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 156
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 157
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 161
    iput-boolean v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsScreenHorizontal:Z

    .line 162
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteListview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->finishMultiChoice()V

    .line 164
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteGridview:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->startMultiChoice()Z

    .line 175
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 177
    return-void

    .line 168
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsScreenHorizontal:Z

    .line 169
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesDeleteListEntry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteGridview:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->finishMultiChoice()V

    .line 171
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteListview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->startMultiChoice()Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 106
    const v3, 0x7f04002a

    invoke-virtual {p1, v3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, searchView:Landroid/view/View;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 108
    .local v0, outSize:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 109
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mIsScreenHorizontal:Z

    .line 110
    invoke-direct {p0, v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->initView(Landroid/view/View;)V

    .line 111
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->initListeners()V

    .line 113
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/VideoGallery;

    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getmActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    const v3, 0x7f0a01e9

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(I)V

    .line 115
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoritesDBHelper:Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;

    invoke-virtual {v0}, Lcom/meizu/video/client/db/dbhelper/FavoritesDBHelper;->close()V

    .line 129
    :cond_1
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->unregisterFavoriteObserver()V

    .line 131
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->loader:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->loader:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 132
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->loader:Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment$LoadFavoriteListTask;->cancel(Z)Z

    .line 134
    :cond_2
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 135
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 139
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 140
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteDataChange:Z

    if-eqz v0, :cond_3

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteDataChange:Z

    if-eqz v0, :cond_2

    .line 142
    iput-boolean v1, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoriteDataChange:Z

    .line 143
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->mFavoritesListEntry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteGridview:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->favoriteListview:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->chanelDetail_progressbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    :cond_2
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/favorite/FavoriteFragment;->initData()V

    .line 152
    :cond_3
    return-void
.end method

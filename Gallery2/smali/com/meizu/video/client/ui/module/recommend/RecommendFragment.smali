.class public Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;
.super Landroid/app/Fragment;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$GalleryOnTouchEvent;,
        Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;
    }
.end annotation


# instance fields
.field private final FRESH_CURRENT_PAGE:I

.field private final FRESH_CURRENT_PAGE_BY_ROTATION_SCREEN:I

.field private final FRESH_CURRENT_PAGE_FOCUSIMAGE:I

.field private TAG:Ljava/lang/String;

.field private mActionbarTopBottomBg:Landroid/widget/FrameLayout;

.field private mBar:Landroid/app/ActionBar;

.field private mCustomView:Landroid/view/View;

.field private mFocusImageAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

.field private mFocusImageGallery:Lcom/meizu/video/client/common/RecommendGallery;

.field private mFollowingTVRecommendBlockListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mHitFilmRecommendBlockListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mHitTVRecommendBlockListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoading:Z

.field private mLoader:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;

.field private mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

.field private mNoAvailableNetwork:Landroid/widget/LinearLayout;

.field private mNoNetworkImage:Landroid/widget/ImageView;

.field private mNoNetworkTitle:Landroid/widget/TextView;

.field private mRecommendAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

.field private mRecommendBlockListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendFocusListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRecommendListview:Landroid/widget/ListView;

.field private mRecommendWhole:Landroid/widget/FrameLayout;

.field private mReommendProgressbarLayout:Landroid/widget/LinearLayout;

.field private mRes:Landroid/content/res/Resources;

.field private mWholeFocusImageShowTime:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 54
    const-string v0, "RecommendFragment"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->TAG:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListEntity:Ljava/util/ArrayList;

    .line 64
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendFocusListEntity:Ljava/util/ArrayList;

    .line 65
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendBlockListEntity:Ljava/util/ArrayList;

    .line 67
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFollowingTVRecommendBlockListEntity:Ljava/util/ArrayList;

    .line 68
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHitTVRecommendBlockListEntity:Ljava/util/ArrayList;

    .line 69
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHitFilmRecommendBlockListEntity:Ljava/util/ArrayList;

    .line 71
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 73
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    .line 75
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFocusImageAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    .line 81
    const/16 v0, 0x1388

    iput v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mWholeFocusImageShowTime:I

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->FRESH_CURRENT_PAGE:I

    .line 85
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->FRESH_CURRENT_PAGE_FOCUSIMAGE:I

    .line 87
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->FRESH_CURRENT_PAGE_BY_ROTATION_SCREEN:I

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mIsLoading:Z

    .line 287
    new-instance v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHandler:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendFocusListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mReommendProgressbarLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendFocusListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFocusImageAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mNoNetworkTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->startMove(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->endMove()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFollowingTVRecommendBlockListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFollowingTVRecommendBlockListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHitTVRecommendBlockListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHitTVRecommendBlockListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHitFilmRecommendBlockListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHitFilmRecommendBlockListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/common/RecommendGallery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFocusImageGallery:Lcom/meizu/video/client/common/RecommendGallery;

    return-object v0
.end method

.method static synthetic access$902(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mIsLoading:Z

    return p1
.end method

.method private endMove()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 491
    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 237
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mIsLoading:Z

    if-nez v0, :cond_0

    .line 238
    iput-boolean v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mIsLoading:Z

    .line 239
    new-instance v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mLoader:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;

    .line 240
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mLoader:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 242
    :cond_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 184
    const v1, 0x7f0d016e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendWhole:Landroid/widget/FrameLayout;

    .line 185
    const v1, 0x7f0d001d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mActionbarTopBottomBg:Landroid/widget/FrameLayout;

    .line 187
    const v1, 0x7f0d016f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListview:Landroid/widget/ListView;

    .line 188
    const v1, 0x7f0d00a0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mReommendProgressbarLayout:Landroid/widget/LinearLayout;

    .line 190
    const v1, 0x7f0d00ed

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    .line 191
    const v1, 0x7f0d00ee

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mNoNetworkImage:Landroid/widget/ImageView;

    .line 193
    const v1, 0x7f0d00ef

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mNoNetworkTitle:Landroid/widget/TextView;

    .line 195
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04006f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, headerView:Landroid/view/View;
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListview:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 197
    const v1, 0x7f0d016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/video/client/common/RecommendGallery;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFocusImageGallery:Lcom/meizu/video/client/common/RecommendGallery;

    .line 198
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFocusImageGallery:Lcom/meizu/video/client/common/RecommendGallery;

    new-instance v2, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$GalleryOnTouchEvent;

    invoke-direct {v2, p0, v4}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$GalleryOnTouchEvent;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;)V

    invoke-virtual {v1, v2}, Lcom/meizu/video/client/common/RecommendGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFocusImageGallery:Lcom/meizu/video/client/common/RecommendGallery;

    new-instance v2, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;

    invoke-direct {v2, p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)V

    invoke-virtual {v1, v2}, Lcom/meizu/video/client/common/RecommendGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 227
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040070

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mCustomView:Landroid/view/View;

    .line 229
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListview:Landroid/widget/ListView;

    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 231
    return-void
.end method

.method private startMove(Z)V
    .locals 4
    .parameter "paramBoolean"

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->endMove()V

    .line 484
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendFocusListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendFocusListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mWholeFocusImageShowTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 487
    :cond_1
    return-void
.end method


# virtual methods
.method public InitAdapter()V
    .locals 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListEntity:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListview:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    .line 343
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFocusImageAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    if-nez v0, :cond_1

    .line 346
    new-instance v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendFocusListEntity:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFocusImageGallery:Lcom/meizu/video/client/common/RecommendGallery;

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/Gallery;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFocusImageAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    .line 347
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFocusImageGallery:Lcom/meizu/video/client/common/RecommendGallery;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFocusImageAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/common/RecommendGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 349
    :cond_1
    return-void
.end method

.method public changeDataSort()V
    .locals 5

    .prologue
    const/16 v4, 0x19

    const/4 v3, 0x2

    .line 416
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    .line 417
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFollowingTVRecommendBlockListEntity:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHitTVRecommendBlockListEntity:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHitFilmRecommendBlockListEntity:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/video/client/util/CommonUtil;->RecombinationBlockData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendBlockListEntity:Ljava/util/ArrayList;

    .line 418
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendBlockListEntity:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v0, v4, v1}, Lcom/meizu/video/client/util/CommonUtil;->changeRecommendData(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListEntity:Ljava/util/ArrayList;

    .line 423
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFollowingTVRecommendBlockListEntity:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHitTVRecommendBlockListEntity:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHitFilmRecommendBlockListEntity:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/video/client/util/CommonUtil;->RecombinationBlockData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendBlockListEntity:Ljava/util/ArrayList;

    .line 421
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendBlockListEntity:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v0, v4, v1}, Lcom/meizu/video/client/util/CommonUtil;->changeRecommendData(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListEntity:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public checkDataAndUpdateView()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 391
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/video/client/util/CommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mReommendProgressbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->initData()V

    .line 403
    :cond_1
    :goto_0
    return-void

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mReommendProgressbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mNoNetworkTitle:Landroid/widget/TextView;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 399
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->setNoNetWorkStyle()V

    .line 400
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x3

    .line 357
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 359
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/VideoGallery;

    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getmSelectedPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/VideoGallery;

    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getTabRank()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->setActionBar()V

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->changeDataSort()V

    .line 364
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->setNoNetWorkStyle()V

    .line 371
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 173
    const v1, 0x7f040071

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 174
    .local v0, recomendView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRes:Landroid/content/res/Resources;

    .line 175
    invoke-direct {p0, v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->initView(Landroid/view/View;)V

    .line 176
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->setActionBar()V

    .line 177
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 113
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListEntity:Ljava/util/ArrayList;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendBlockListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendBlockListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 117
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendBlockListEntity:Ljava/util/ArrayList;

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFollowingTVRecommendBlockListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFollowingTVRecommendBlockListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFollowingTVRecommendBlockListEntity:Ljava/util/ArrayList;

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHitTVRecommendBlockListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHitTVRecommendBlockListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 125
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHitTVRecommendBlockListEntity:Ljava/util/ArrayList;

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHitFilmRecommendBlockListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHitFilmRecommendBlockListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mHitFilmRecommendBlockListEntity:Ljava/util/ArrayList;

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendFocusListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 132
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendFocusListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 133
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendFocusListEntity:Ljava/util/ArrayList;

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mLoader:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mLoader:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_6

    .line 137
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mLoader:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->cancel(Z)Z

    .line 140
    :cond_6
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 141
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 146
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->endMove()V

    .line 147
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 152
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->checkDataAndUpdateView()V

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->startMove(Z)V

    .line 154
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 159
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 164
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 169
    return-void
.end method

.method public setActionBar()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x2

    .line 374
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getmActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mBar:Landroid/app/ActionBar;

    .line 376
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mBar:Landroid/app/ActionBar;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 377
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mBar:Landroid/app/ActionBar;

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 378
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 380
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 382
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mCustomView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0
.end method

.method public setNoNetWorkStyle()V
    .locals 4

    .prologue
    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 426
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRes:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRes:Landroid/content/res/Resources;

    .line 429
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 430
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 431
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 435
    :goto_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mNoNetworkImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    return-void

    .line 433
    :cond_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public setRecommendListViewSpacing()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 439
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRes:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRes:Landroid/content/res/Resources;

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mActionbarTopBottomBg:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 443
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 444
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 445
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListview:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setDockingBottom(I)V

    .line 447
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListview:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 449
    sget v1, Lcom/meizu/video/client/common/Constant;->actionBarSmallHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 457
    :goto_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mActionbarTopBottomBg:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    return-void

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListview:Landroid/widget/ListView;

    sget v2, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDockingBottom(I)V

    .line 453
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListview:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 455
    sget v1, Lcom/meizu/video/client/common/Constant;->actionBarBigHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

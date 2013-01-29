.class public Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;
.super Landroid/app/Fragment;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;
    }
.end annotation


# instance fields
.field private final FRESH_CURRENT_PAGE:I

.field private final FRESH_CURRENT_PAGE_BY_ROTATION_SCREEN:I

.field private final FRESH_CURRENT_PAGE_FOCUSIMAGE:I

.field private TAG:Ljava/lang/String;

.field private bar:Landroid/app/ActionBar;

.field private focusImageAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

.field private focusImageGallery:Landroid/widget/Gallery;

.field private focusImageInitPosition:I

.field private followingTVRecommendBlockListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;"
        }
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field private hitFilmRecommendBlockListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;"
        }
    .end annotation
.end field

.field private hitTVRecommendBlockListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;"
        }
    .end annotation
.end field

.field private isCurrentPage:Z

.field private isLoading:Z

.field private loader:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;

.field private mCustomView:Landroid/view/View;

.field private msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

.field private no_available_network:Landroid/widget/LinearLayout;

.field private no_network_image:Landroid/widget/ImageView;

.field private no_network_title:Landroid/widget/TextView;

.field private recommendAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

.field private recommendBlockListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;"
        }
    .end annotation
.end field

.field private recommendFocusListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/RecommendEntity;",
            ">;"
        }
    .end annotation
.end field

.field private recommendListEntity:Ljava/util/ArrayList;
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

.field private recommendListview:Landroid/widget/ListView;

.field private recommend_whole:Landroid/widget/RelativeLayout;

.field private reommend_progressbar_layout:Landroid/widget/LinearLayout;

.field private task:Ljava/util/TimerTask;

.field private final timer:Ljava/util/Timer;

.field private wholeFocusImageNum:I

.field private wholeFocusImageShowTime:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 47
    const-string v0, "RecommendFragment"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->TAG:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendListEntity:Ljava/util/ArrayList;

    .line 57
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendFocusListEntity:Ljava/util/ArrayList;

    .line 58
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendBlockListEntity:Ljava/util/ArrayList;

    .line 60
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->followingTVRecommendBlockListEntity:Ljava/util/ArrayList;

    .line 61
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->hitTVRecommendBlockListEntity:Ljava/util/ArrayList;

    .line 62
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->hitFilmRecommendBlockListEntity:Ljava/util/ArrayList;

    .line 64
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    .line 66
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    .line 68
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->focusImageAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    .line 74
    iput v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->focusImageInitPosition:I

    .line 75
    const/16 v0, 0x1388

    iput v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->wholeFocusImageShowTime:I

    .line 76
    iput v3, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->wholeFocusImageNum:I

    .line 78
    iput v3, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->FRESH_CURRENT_PAGE:I

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->FRESH_CURRENT_PAGE_FOCUSIMAGE:I

    .line 82
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->FRESH_CURRENT_PAGE_BY_ROTATION_SCREEN:I

    .line 86
    iput-boolean v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->isCurrentPage:Z

    .line 88
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->timer:Ljava/util/Timer;

    .line 96
    iput-boolean v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->isLoading:Z

    .line 104
    new-instance v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->task:Ljava/util/TimerTask;

    .line 263
    new-instance v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;

    invoke-direct {v0, p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->handler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->isCurrentPage:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->reommend_progressbar_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->focusImageAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->no_network_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->no_available_network:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->focusImageInitPosition:I

    return v0
.end method

.method static synthetic access$1502(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->focusImageInitPosition:I

    return p1
.end method

.method static synthetic access$1600(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Landroid/widget/Gallery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->focusImageGallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Lcom/meizu/video/client/ui/entity/MsgEntity;)Lcom/meizu/video/client/ui/entity/MsgEntity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->msgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendFocusListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendFocusListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->followingTVRecommendBlockListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->followingTVRecommendBlockListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->hitTVRecommendBlockListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->hitTVRecommendBlockListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->hitFilmRecommendBlockListEntity:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->hitFilmRecommendBlockListEntity:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->wholeFocusImageNum:I

    return v0
.end method

.method static synthetic access$802(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->wholeFocusImageNum:I

    return p1
.end method

.method static synthetic access$902(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->isLoading:Z

    return p1
.end method

.method private initData()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 210
    iget-boolean v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->isLoading:Z

    if-nez v0, :cond_0

    .line 211
    iput-boolean v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->isLoading:Z

    .line 212
    new-instance v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->loader:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;

    .line 213
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->loader:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 215
    :cond_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 189
    const v1, 0x7f0d0154

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommend_whole:Landroid/widget/RelativeLayout;

    .line 190
    const v1, 0x7f0d0155

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendListview:Landroid/widget/ListView;

    .line 191
    const v1, 0x7f0d009b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->reommend_progressbar_layout:Landroid/widget/LinearLayout;

    .line 193
    const v1, 0x7f0d00eb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->no_available_network:Landroid/widget/LinearLayout;

    .line 194
    const v1, 0x7f0d00ec

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->no_network_image:Landroid/widget/ImageView;

    .line 195
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->no_network_image:Landroid/widget/ImageView;

    const v2, 0x7f0200c3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    const v1, 0x7f0d00ed

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->no_network_title:Landroid/widget/TextView;

    .line 198
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04006a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, headerView:Landroid/view/View;
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendListview:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 200
    const v1, 0x7f0d0153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Gallery;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->focusImageGallery:Landroid/widget/Gallery;

    .line 202
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04006b

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mCustomView:Landroid/view/View;

    .line 204
    return-void
.end method


# virtual methods
.method public InitAdapter()V
    .locals 4

    .prologue
    .line 307
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendListEntity:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendListview:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    .line 309
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->focusImageAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    if-nez v0, :cond_1

    .line 312
    new-instance v0, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendFocusListEntity:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->focusImageGallery:Landroid/widget/Gallery;

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/Gallery;)V

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->focusImageAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    .line 313
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->focusImageGallery:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->focusImageAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 315
    :cond_1
    return-void
.end method

.method public changeDataSort()V
    .locals 5

    .prologue
    const/16 v4, 0x19

    const/4 v3, 0x2

    .line 373
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    .line 374
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->followingTVRecommendBlockListEntity:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->hitTVRecommendBlockListEntity:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->hitFilmRecommendBlockListEntity:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/video/client/util/CommonUtil;->RecombinationBlockData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendBlockListEntity:Ljava/util/ArrayList;

    .line 375
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendBlockListEntity:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v0, v4, v1}, Lcom/meizu/video/client/util/CommonUtil;->changeRecommendData(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendListEntity:Ljava/util/ArrayList;

    .line 376
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendListview:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDockingBottom(I)V

    .line 382
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->followingTVRecommendBlockListEntity:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->hitTVRecommendBlockListEntity:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->hitFilmRecommendBlockListEntity:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/video/client/util/CommonUtil;->RecombinationBlockData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendBlockListEntity:Ljava/util/ArrayList;

    .line 379
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendBlockListEntity:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v0, v4, v1}, Lcom/meizu/video/client/util/CommonUtil;->changeRecommendData(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendListEntity:Ljava/util/ArrayList;

    .line 380
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendListview:Landroid/widget/ListView;

    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDockingBottom(I)V

    goto :goto_0
.end method

.method public checkDataAndUpdateView()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 349
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/video/client/util/CommonUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->reommend_progressbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->no_available_network:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->initData()V

    .line 360
    :cond_1
    :goto_0
    return-void

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->reommend_progressbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->no_network_title:Landroid/widget/TextView;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 357
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->no_available_network:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x3

    .line 323
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 325
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->changeDataSort()V

    .line 327
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 329
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 178
    const v0, 0x7f04006c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 179
    .local v6, recomendView:Landroid/view/View;
    invoke-direct {p0, v6}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->initView(Landroid/view/View;)V

    .line 180
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->task:Ljava/util/TimerTask;

    iget v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->wholeFocusImageShowTime:I

    int-to-long v2, v2

    iget v4, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->wholeFocusImageShowTime:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 181
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->setActionBar()V

    .line 182
    return-object v6
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 117
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendListEntity:Ljava/util/ArrayList;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendBlockListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendBlockListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendBlockListEntity:Ljava/util/ArrayList;

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->followingTVRecommendBlockListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->followingTVRecommendBlockListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 125
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->followingTVRecommendBlockListEntity:Ljava/util/ArrayList;

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->hitTVRecommendBlockListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->hitTVRecommendBlockListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->hitTVRecommendBlockListEntity:Ljava/util/ArrayList;

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->hitFilmRecommendBlockListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->hitFilmRecommendBlockListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 133
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->hitFilmRecommendBlockListEntity:Ljava/util/ArrayList;

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendFocusListEntity:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 136
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendFocusListEntity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    iput-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendFocusListEntity:Ljava/util/ArrayList;

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 141
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->loader:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->loader:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_6

    .line 142
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->loader:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$LoadRecommendListTask;->cancel(Z)Z

    .line 145
    :cond_6
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 146
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->isCurrentPage:Z

    .line 152
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 157
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->checkDataAndUpdateView()V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->isCurrentPage:Z

    .line 159
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 164
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 169
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 174
    return-void
.end method

.method public setActionBar()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x2

    .line 332
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getmActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->bar:Landroid/app/ActionBar;

    .line 334
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->bar:Landroid/app/ActionBar;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 335
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->bar:Landroid/app/ActionBar;

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 336
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 340
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->bar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mCustomView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0
.end method

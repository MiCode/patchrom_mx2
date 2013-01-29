.class public Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;
.super Landroid/app/Fragment;
.source "ChanelDetailTabFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ResourceAsColor",
        "ResourceAsColor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$ViewPagerAdapter;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private chanelId:Ljava/lang/String;

.field private chanelName:Ljava/lang/String;

.field private channelType:I

.field private channeldetal_orderlist_image1:Landroid/widget/ImageView;

.field private channeldetal_orderlist_image2:Landroid/widget/ImageView;

.field private channeldetal_orderlist_image3:Landroid/widget/ImageView;

.field private channeldetal_orderlist_item1:Landroid/widget/LinearLayout;

.field private channeldetal_orderlist_item2:Landroid/widget/LinearLayout;

.field private channeldetal_orderlist_item3:Landroid/widget/LinearLayout;

.field private channeldetal_orderlist_text1:Landroid/widget/TextView;

.field private channeldetal_orderlist_text2:Landroid/widget/TextView;

.field private channeldetal_orderlist_text3:Landroid/widget/TextView;

.field private listFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomView:Landroid/view/View;

.field private mSelectedPos:I

.field private mTagPart:Ljava/lang/String;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private tabNum:I

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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    const-string v0, "ChanelDetailTabFragment"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->typeTitemListEntity:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channelType:I

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->chanelName:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->chanelId:Ljava/lang/String;

    .line 58
    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mSelectedPos:I

    .line 80
    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->tabNum:I

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTagPart:Ljava/lang/String;

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mSelectedPos:I

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->listFragments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTagPart:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTagPart:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-static {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->makeFragmentName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataFromBundle()V
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 317
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 318
    const-string v1, "chanelName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    const-string v1, "chanelName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->chanelName:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->chanelId:Ljava/lang/String;

    .line 325
    :cond_1
    return-void
.end method

.method private static makeFragmentName(I)Ljava/lang/String;
    .locals 2
    .parameter "viewId"

    .prologue
    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeTabView(I)V
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 338
    packed-switch p1, :pswitch_data_0

    .line 357
    :goto_0
    return-void

    .line 340
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_image1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_image2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_image3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 345
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_image1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_image2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_image3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 350
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_image1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_image2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_image3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public checkDataAndUpdateView()V
    .locals 3

    .prologue
    .line 383
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->listFragments:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mSelectedPos:I

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->listFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->listFragments:Ljava/util/ArrayList;

    iget v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mSelectedPos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 387
    .local v0, fm:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    if-eqz v1, :cond_0

    .line 388
    check-cast v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    .end local v0           #fm:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;->checkDataAndUpdateView()V

    goto :goto_0
.end method

.method public initCustomView()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04007e

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    .line 141
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    const v5, 0x7f0d016f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_item1:Landroid/widget/LinearLayout;

    .line 142
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    const v5, 0x7f0d0172

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_item2:Landroid/widget/LinearLayout;

    .line 143
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    const v5, 0x7f0d0175

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_item3:Landroid/widget/LinearLayout;

    .line 145
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    const v5, 0x7f0d0170

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_text1:Landroid/widget/TextView;

    .line 146
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    const v5, 0x7f0d0173

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_text2:Landroid/widget/TextView;

    .line 147
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    const v5, 0x7f0d0176

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_text3:Landroid/widget/TextView;

    .line 149
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    const v5, 0x7f0d0171

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_image1:Landroid/widget/ImageView;

    .line 150
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    const v5, 0x7f0d0174

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_image2:Landroid/widget/ImageView;

    .line 151
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    const v5, 0x7f0d0177

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_image3:Landroid/widget/ImageView;

    .line 153
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->listFragments:Ljava/util/ArrayList;

    .line 154
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->typeTitemListEntity:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 155
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->typeTitemListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    const/4 v4, 0x2

    if-gt v1, v4, :cond_4

    .line 156
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->typeTitemListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 158
    move v3, v1

    .line 159
    .local v3, position:I
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_item1:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 160
    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->tabNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->tabNum:I

    .line 161
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_text1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->typeTitemListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_item1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_text1:Landroid/widget/TextView;

    new-instance v5, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$2;

    invoke-direct {v5, p0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$2;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    :cond_0
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v0, bundleArg:Landroid/os/Bundle;
    const-string v4, "chanelName"

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->chanelName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v4, "chanelId"

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->chanelId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v5, "orderby"

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->typeTitemListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v4, "channelType"

    iget v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channelType:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    new-instance v2, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    invoke-direct {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;-><init>()V

    .line 224
    .local v2, itemFragment:Landroid/app/Fragment;
    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 225
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->listFragments:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v0           #bundleArg:Landroid/os/Bundle;
    .end local v2           #itemFragment:Landroid/app/Fragment;
    .end local v3           #position:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .restart local v3       #position:I
    :cond_2
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_item2:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 180
    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->tabNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->tabNum:I

    .line 181
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_text2:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->typeTitemListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_item2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_text2:Landroid/widget/TextView;

    new-instance v5, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$3;

    invoke-direct {v5, p0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$3;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 199
    :cond_3
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_item3:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 200
    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->tabNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->tabNum:I

    .line 201
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_text3:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->typeTitemListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_item3:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channeldetal_orderlist_text3:Landroid/widget/TextView;

    new-instance v5, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$4;

    invoke-direct {v5, p0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$4;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 229
    .end local v1           #i:I
    .end local v3           #position:I
    :cond_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->TAG:Ljava/lang/String;

    const-string v1, " onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->setActionBar()V

    .line 313
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    .line 87
    const v1, 0x7f040010

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, channelDetailView:Landroid/view/View;
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getDataFromBundle()V

    .line 91
    const-string v1, "86"

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->chanelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const/4 v1, 0x2

    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channelType:I

    .line 94
    :cond_0
    const-string v1, "4"

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->chanelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    :cond_1
    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getOrderTypeAreaYearOrderListEntity()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->chanelId:Ljava/lang/String;

    iget v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->channelType:I

    invoke-static {v1, v2, v3}, Lcom/meizu/video/client/util/CommonUtil;->getOrderListByCidAndMediaData(Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->typeTitemListEntity:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->initCustomView()V

    .line 101
    const v1, 0x7f0d002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 102
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->chanelId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 103
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$ViewPagerAdapter;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;Landroid/app/FragmentManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 104
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->typeTitemListEntity:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$1;

    invoke-direct {v2, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$1;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 130
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 131
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v2, 0x7f0201af

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 133
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mSelectedPos:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 134
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mSelectedPos:I

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->changeTabView(I)V

    .line 136
    return-object v0

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->typeTitemListEntity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 260
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 261
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->listFragments:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 262
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->listFragments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 264
    .local v1, ft:Landroid/app/FragmentTransaction;
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->listFragments:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 265
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    .end local v1           #ft:Landroid/app/FragmentTransaction;
    .end local v2           #i:I
    :cond_0
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->listFragments:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 269
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->listFragments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 270
    iput-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->listFragments:Ljava/util/ArrayList;

    .line 272
    :cond_1
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v4, :cond_2

    .line 273
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 274
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 275
    iput-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 277
    :cond_2
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTagPart:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTagPart:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 278
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "channeldetailtabfragment"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 279
    .local v3, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 280
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "mTagPart"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 281
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 283
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 286
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 287
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 293
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 294
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/VideoGallery;

    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getmSelectedPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/VideoGallery;

    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getTabChannel()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->setActionBar()V

    .line 297
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 328
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 329
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTagPart:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTagPart:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "channeldetailtabfragment"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 331
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 332
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "mTagPart"

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTagPart:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 333
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 300
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 301
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 304
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 305
    return-void
.end method

.method public removeListFragments()V
    .locals 7

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "channeldetailtabfragment"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 395
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v4, "mTagPart"

    const-string v5, "android:switcher:4:"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, tag:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    .line 397
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 398
    .local v0, fragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 400
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->listFragments:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 396
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .end local v0           #fragment:Landroid/app/Fragment;
    :cond_1
    return-void
.end method

.method public setActionBar()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x2

    .line 360
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getmActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 362
    .local v0, bar:Landroid/app/ActionBar;
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 364
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 368
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 369
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    iget v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->tabNum:I

    mul-int/lit8 v3, v3, 0x64

    const/16 v4, 0x13

    invoke-direct {v2, v3, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 380
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->chanelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 375
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(I)V

    .line 376
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    iget v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->tabNum:I

    mul-int/lit8 v3, v3, 0x64

    const/16 v4, 0x15

    invoke-direct {v2, v3, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0
.end method

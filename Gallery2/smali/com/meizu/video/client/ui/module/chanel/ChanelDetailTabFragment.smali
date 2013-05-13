.class public Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;
.super Landroid/app/Fragment;
.source "ChanelDetailTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$ViewPagerAdapter;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mChanelId:Ljava/lang/String;

.field private mChanelName:Ljava/lang/String;

.field private mChannelType:I

.field private mChanneldetailTabContent:Landroid/widget/LinearLayout;

.field private mChanneldetalOrderlistImage1:Landroid/widget/ImageView;

.field private mChanneldetalOrderlistImage2:Landroid/widget/ImageView;

.field private mChanneldetalOrderlistImage3:Landroid/widget/ImageView;

.field private mChanneldetalOrderlistItem1:Landroid/widget/LinearLayout;

.field private mChanneldetalOrderlistItem2:Landroid/widget/LinearLayout;

.field private mChanneldetalOrderlistItem3:Landroid/widget/LinearLayout;

.field private mChanneldetalOrderlistText1:Landroid/widget/TextView;

.field private mChanneldetalOrderlistText2:Landroid/widget/TextView;

.field private mChanneldetalOrderlistText3:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mListFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mRes:Landroid/content/res/Resources;

.field private mSelectedPos:I

.field private mTabNum:I

.field private mTagPart:Ljava/lang/String;

.field private mTypeTitemListEntity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/video/client/ui/entity/LableEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mUp:Landroid/widget/ImageView;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 45
    const-string v0, "ChanelDetailTabFragment"

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTypeTitemListEntity:Ljava/util/ArrayList;

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChannelType:I

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanelName:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanelId:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mSelectedPos:I

    .line 75
    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTabNum:I

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTagPart:Ljava/lang/String;

    .line 226
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mSelectedPos:I

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mListFragments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTagPart:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTagPart:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-static {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->makeFragmentName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataFromBundle()V
    .locals 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 312
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 313
    const-string v1, "chanelName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    const-string v1, "chanelName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanelName:Ljava/lang/String;

    .line 316
    :cond_0
    const-string v1, "chanelId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    const-string v1, "chanelId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanelId:Ljava/lang/String;

    .line 320
    :cond_1
    return-void
.end method

.method private static makeFragmentName(I)Ljava/lang/String;
    .locals 2
    .parameter "viewId"

    .prologue
    .line 412
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

    .line 333
    packed-switch p1, :pswitch_data_0

    .line 352
    :goto_0
    return-void

    .line 335
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistImage1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistImage3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 340
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistImage1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistImage3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 345
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistImage1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistImage3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 333
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
    .line 389
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mListFragments:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mSelectedPos:I

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mListFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mListFragments:Ljava/util/ArrayList;

    iget v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mSelectedPos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 393
    .local v0, fm:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    if-eqz v1, :cond_0

    .line 394
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

    .line 137
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040083

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    .line 139
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    const v5, 0x7f0d018c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetailTabContent:Landroid/widget/LinearLayout;

    .line 140
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    const v5, 0x7f0d0185

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mUp:Landroid/widget/ImageView;

    .line 142
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    const v5, 0x7f0d018d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistItem1:Landroid/widget/LinearLayout;

    .line 143
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    const v5, 0x7f0d0190

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistItem2:Landroid/widget/LinearLayout;

    .line 144
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    const v5, 0x7f0d0193

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistItem3:Landroid/widget/LinearLayout;

    .line 146
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    const v5, 0x7f0d018e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistText1:Landroid/widget/TextView;

    .line 147
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    const v5, 0x7f0d0191

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistText2:Landroid/widget/TextView;

    .line 148
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    const v5, 0x7f0d0194

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistText3:Landroid/widget/TextView;

    .line 150
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    const v5, 0x7f0d018f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistImage1:Landroid/widget/ImageView;

    .line 151
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    const v5, 0x7f0d0192

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistImage2:Landroid/widget/ImageView;

    .line 152
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    const v5, 0x7f0d0195

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistImage3:Landroid/widget/ImageView;

    .line 154
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mListFragments:Ljava/util/ArrayList;

    .line 155
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTypeTitemListEntity:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 156
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTypeTitemListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    const/4 v4, 0x2

    if-gt v1, v4, :cond_4

    .line 157
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTypeTitemListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 159
    move v3, v1

    .line 160
    .local v3, position:I
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistItem1:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 161
    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTabNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTabNum:I

    .line 162
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistText1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTypeTitemListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistItem1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistText1:Landroid/widget/TextView;

    new-instance v5, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$2;

    invoke-direct {v5, p0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$2;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    :cond_0
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v0, bundleArg:Landroid/os/Bundle;
    const-string v4, "chanelName"

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanelName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v4, "chanelId"

    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanelId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v5, "orderby"

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTypeTitemListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/LableEntity;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v4, "channelType"

    iget v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChannelType:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    new-instance v2, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;

    invoke-direct {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailFragment;-><init>()V

    .line 219
    .local v2, itemFragment:Landroid/app/Fragment;
    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 220
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mListFragments:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v0           #bundleArg:Landroid/os/Bundle;
    .end local v2           #itemFragment:Landroid/app/Fragment;
    .end local v3           #position:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .restart local v3       #position:I
    :cond_2
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistItem2:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 178
    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTabNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTabNum:I

    .line 179
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistText2:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTypeTitemListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistItem2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistText2:Landroid/widget/TextView;

    new-instance v5, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$3;

    invoke-direct {v5, p0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$3;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 194
    :cond_3
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistItem3:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 195
    iget v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTabNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTabNum:I

    .line 196
    iget-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistText3:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTypeTitemListEntity:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/video/client/ui/entity/LableEntity;

    invoke-virtual {v4}, Lcom/meizu/video/client/ui/entity/LableEntity;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistItem3:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetalOrderlistText3:Landroid/widget/TextView;

    new-instance v5, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$4;

    invoke-direct {v5, p0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$4;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 224
    .end local v1           #i:I
    .end local v3           #position:I
    :cond_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->TAG:Ljava/lang/String;

    const-string v1, " onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->setActionBar()V

    .line 308
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 83
    const v1, 0x7f040012

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, channelDetailView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mRes:Landroid/content/res/Resources;

    .line 85
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getDataFromBundle()V

    .line 88
    const-string v1, "86"

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x2

    iput v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChannelType:I

    .line 91
    :cond_0
    const-string v1, "4"

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    :cond_1
    invoke-static {}, Lcom/meizu/video/client/common/Constant;->getOrderTypeAreaYearOrderListEntity()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanelId:Ljava/lang/String;

    iget v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChannelType:I

    invoke-static {v1, v2, v3}, Lcom/meizu/video/client/util/CommonUtil;->getOrderListByCidAndMediaData(Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTypeTitemListEntity:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->initCustomView()V

    .line 98
    const v1, 0x7f0d002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 99
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanelId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 100
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$ViewPagerAdapter;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;Landroid/app/FragmentManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 101
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTypeTitemListEntity:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$1;

    invoke-direct {v2, p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$1;-><init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 127
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 128
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v2, 0x1080680

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 130
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mSelectedPos:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 131
    iget v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mSelectedPos:I

    invoke-virtual {p0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->changeTabView(I)V

    .line 133
    return-object v0

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTypeTitemListEntity:Ljava/util/ArrayList;

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

    .line 255
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 256
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mListFragments:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 257
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mListFragments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 259
    .local v1, ft:Landroid/app/FragmentTransaction;
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mListFragments:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 260
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v1           #ft:Landroid/app/FragmentTransaction;
    .end local v2           #i:I
    :cond_0
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mListFragments:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 264
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mListFragments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 265
    iput-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mListFragments:Ljava/util/ArrayList;

    .line 267
    :cond_1
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v4, :cond_2

    .line 268
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 269
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 270
    iput-object v5, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 272
    :cond_2
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTagPart:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTagPart:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 273
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "channeldetailtabfragment"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 274
    .local v3, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 275
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "mTagPart"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 276
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 278
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 281
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 282
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 289
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

    .line 290
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->setActionBar()V

    .line 292
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 323
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 324
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTagPart:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTagPart:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "channeldetailtabfragment"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 326
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 327
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "mTagPart"

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTagPart:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 328
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 330
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 295
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 296
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 299
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 300
    return-void
.end method

.method public removeListFragments()V
    .locals 7

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "channeldetailtabfragment"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 401
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v4, "mTagPart"

    const-string v5, "android:switcher:4:"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, tag:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    .line 403
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

    .line 404
    .local v0, fragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 406
    iget-object v4, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mListFragments:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 402
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 409
    .end local v0           #fragment:Landroid/app/Fragment;
    :cond_1
    return-void
.end method

.method public setActionBar()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 355
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->getmActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 357
    .local v0, bar:Landroid/app/ActionBar;
    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 360
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mRes:Landroid/content/res/Resources;

    if-nez v2, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mRes:Landroid/content/res/Resources;

    .line 363
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTabNum:I

    iget-object v3, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v2, v3

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 364
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanneldetailTabContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    invoke-virtual {p0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 367
    sget-object v2, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mUp:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    :cond_1
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 371
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x13

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 386
    :goto_0
    return-void

    .line 377
    :cond_2
    sget-object v2, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 378
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mUp:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    :cond_3
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mChanelName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 381
    const v2, 0x7f0a0002

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSubtitle(I)V

    .line 382
    iget-object v2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mCustomView:Landroid/view/View;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0
.end method

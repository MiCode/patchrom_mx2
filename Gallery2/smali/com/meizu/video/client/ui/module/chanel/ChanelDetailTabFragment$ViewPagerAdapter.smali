.class public Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$ViewPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "ChanelDetailTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;


# direct methods
.method public constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;Landroid/app/FragmentManager;)V
    .locals 0
    .parameter
    .parameter "fm"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$ViewPagerAdapter;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    .line 234
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 235
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$ViewPagerAdapter;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->listFragments:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->access$300(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 2
    .parameter "position"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$ViewPagerAdapter;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->access$000(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChanelDetailTabFragment ViewPagerAdapter getItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$ViewPagerAdapter;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->listFragments:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->access$300(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .parameter "container"
    .parameter "position"

    .prologue
    .line 249
    invoke-super {p0, p1, p2}, Landroid/support/v13/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    .line 250
    .local v0, obj:Ljava/lang/Object;
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$ViewPagerAdapter;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTagPart:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->access$400(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$ViewPagerAdapter;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTagPart:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->access$400(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment$ViewPagerAdapter;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    #calls: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->makeFragmentName(I)Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->access$500(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->mTagPart:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->access$402(Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    :cond_0
    return-object v0
.end method
